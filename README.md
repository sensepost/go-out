# ☄️ go-out

A simple, dependency free, Golang egress buster using [@mubix](https://twitter.com/mubix) letmeoutofyour.net and [@bhinfosecurity](https://twitter.com/bhinfosecurity) allports.exposed services.

## install

Download the latest release for your platform from the [releases page](https://github.com/sensepost/go-out/releases/latest).

### building from source

To build `go-out` from source, simply clone this repository and `go build -o go-out main.go`. If you would like to cross compile for other platforms, take a look at the [Makefile](https://github.com/sensepost/go-out/blob/master/Makefile).

## sample usage

CLI flags:

```text
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

```text
$ go-out -start=50 -end=80
===== Configuration =====
Service:  letmeout
Start Port: 50
End Port: 80
Workers:  5
HTTPS On: true
Throttle: false
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

## license

go-out is licensed under the [GNU General Public License v3.0](https://www.gnu.org/licenses/gpl-3.0.en.html) license.

Permissions beyond the scope of this license may be available at [http://sensepost.com/contact/](http://sensepost.com/contact/).
