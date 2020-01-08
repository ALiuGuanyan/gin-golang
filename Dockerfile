FROM golang:alpine
WORKDIR /gin
RUN apk --no-cache add git
RUN git clone https://github.com/golang/net.git $GOPATH/src/golang.org/x/net \
&& git clone https://github.com/golang/sys.git $GOPATH/src/golang.org/x/sys \
&& git clone https://github.com/golang/tools.git $GOPATH/src/golang.org/x/tools \
&& git clone https://github.com/golang/text.git $GOPATH/src/golang.org/x/text \
&& go get -u github.com/gin-gonic/gin
RUN apk del git
