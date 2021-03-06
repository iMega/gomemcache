REPO = github.com/imega/gomemcache
IMG = imega/gomemcache
TAG = latest
CWD = /go/src/$(REPO)
GO_IMG = golang:1.15-alpine3.12

test: lint
	@docker run --rm \
		-w $(CWD) \
		-v $(CURDIR):$(CWD) \
		$(GO_IMG) sh -c "go list ./... | xargs go test -vet=off"

lint:
	@-docker run --rm -t -v $(CURDIR):$(CWD) -w $(CWD) \
		golangci/golangci-lint golangci-lint run -v
