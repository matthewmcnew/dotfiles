if [ "${hostname}" != "raspberrypi" ]
then
    alias tvon="ssh pi@raspberrypi 'zsh -t -ci \"tvon\"'"
    alias tvoff="ssh pi@raspberrypi 'zsh -t -ci \"tvoff\"'"
else
    alias tvon="echo on 0 | cec-client -s -d 1 && echo \"tx 4F:82:10:00\" | cec-client -s -d 1"
    alias tvpi="echo \"tx 4F:82:10:00\" | cec-client -s -d 1"
    alias tvoff="echo standby 0 | cec-client -s -d 1"
    alias tvchromecast="echo \"tx 4F:82:20:00\" | cec-client -s -d 1"
fi

