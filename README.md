# ☄️ go-out

A simple, dependency free, Golang egress buster using [@mubix](https://twitter.com/mubix) letmeoutofyour.net and [@bhinfosecurity](https://twitter.com/bhinfosecurity) allports.exposed services.

## install
Save the `main.go` file and either `go run main.go` or build it with `go build -o go-out main.go`, moving the resultant binary to your place of choice.

## cross compiling
Build `go-out` for other platforms with:

```
GOOS=darwin GOARCH=amd64 go build -ldflags="-s -w" -o 'go-out-darwin-amd64' main.go
GOOS=linux GOARCH=amd64 go build -ldflags="-s -w" -o 'go-out-linux-amd64' main.go
GOOS=windows GOARCH=amd64 go build -ldflags="-s -w" -o 'go-out-windows-amd64.exe' main.go
```

## sample usage

CLI flags:
```
Usage of go-out:
  -end int
    	The end port to use. (default 65535)
  -https
    	Egress bust using HTTPs (letmeout only) (default true)
  -service string
    	Use 'letmeout' or 'allports' for this run. (default "letmeout")
  -start int
    	The start port to use. (default 1)
  -throttle
    	Throttle request speed. (random times, max 10sec) (default true)
  -w int
    	Number of concurrent workers to spawn. (default 5)
```

Sample run:
```
$ go-out -start=50 -end=80
===== Configuration =====
Service:	letmeout
Start Port:	50
End Port:	80
Workers:	5
HTTPS On:	true
Throttle:	false
=========================

[!] Egress on port 50
[!] Egress on port 54
[!] Egress on port 51
[!] Egress on port 53
[!] Egress on port 80
Done in 48.542120002s
```

## contact
[@leonjza](https://twitter.com/leonjza)

