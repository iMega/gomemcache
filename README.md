[![Build Status](https://travis-ci.org/iMega/gomemcache.svg?branch=master)](https://travis-ci.org/iMega/gomemcache)

## gomemcache

This is a memcache client library for the Go programming language
(http://golang.org/).

## Installing

```bash
    $ go get github.com/iMega/gomemcache
```

## Example

    import (
        "github.com/iMega/gomemcache"
    )

    func main() {
        mc := memcache.New("10.0.0.1:11211", "10.0.0.2:11211", "10.0.0.3:11212")
        mc.Set(&memcache.Item{Key: "foo", Value: []byte("my value")})

        it, err := mc.Get("foo")
    }
