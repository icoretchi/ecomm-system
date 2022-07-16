GO_VERSION := 1.18  # <1>

setup: # <2>
	install-go
	init-go

install-go: # <3>
	# wget "https://golang.org/dl/go$(GO_VERSION).linux-amd64.tar.gz"
	# sudo tar -C /usr/local -xzf go$(GO_VERSION).linux-amd64.tar.gz
	# rm go$(GO_VERSION).linux-amd64.tar.gz
	brew install go@$(GO_VERSION)

init-go: # <4>
    echo 'export PATH=$$PATH:/usr/local/go/bin' >> $${HOME}/.zrhrc
    echo 'export PATH=$$PATH:$${HOME}/go/bin' >> $${HOME}/.zrhrc
    echo 'export GOPATH=:$${HOME}/repos/go' >> $${HOME}/.zrhrc
    echo 'export GOROOT=:/usr/local/go' >> $${HOME}/.zrhrc

upgrade-go: # <5>
	# sudo rm -rf /usr/local/go
	# wget "https://golang.org/dl/go$(GO_VERSION).linux-amd64.tar.gz"
	# sudo tar -C /usr/local -xzf go$(GO_VERSION).linux-amd64.tar.gz
	# rm go$(GO_VERSION).linux-amd64.tar.gz
	brew upgrade go@$(GO_VERSION)

build:
	go build -o api cmd/main.go