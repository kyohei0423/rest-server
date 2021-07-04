FROM golang:1.16.5-buster as build

ENV APP="/go/src/github.com/kyohei0423/rest-server"
WORKDIR ${APP}
RUN curl -sSfL https://raw.githubusercontent.com/cosmtrek/air/master/install.sh | sh -s -- -b $(go env GOPATH)/bin

COPY . .

CMD [ "go", "build", "main.go" ]

# TODO
# set multi-stage builds for production
