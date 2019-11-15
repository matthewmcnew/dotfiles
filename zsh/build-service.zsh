install-pb-tools(){
  pushd ~/workspace/packo
    go build -o packo cmd/packo/main.go
    install packo /usr/local/bin
  popd

  pushd ~/workspace/bsv
    ./build.sh
    install pbdemo /usr/local/bin
  popd

  pushd ~/workspace/kpack
    go build -o logs cmd/logs/main.go
    install logs /usr/local/bin
  popd
}
