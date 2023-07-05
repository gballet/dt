![License](https://img.shields.io/github/license/hiljusti/dt)

# `dt`

It's duct tape for your unix pipes. Use it when you don't have a better tool.

In the words of [Red Green](https://www.redgreen.com):

> Remember, it's only temporary... unless it works!

## For pipes:

```
$ echo -e "3\n2\n1" | dt rev pls
1
2
3

$ alias scream-lines="dt [upcase words unlines] map pls"
$ echo "hey you pikachu" | scream-lines
HEY
YOU
PIKACHU
```

## Running as an interactive shell:

`dt` is an experimental [concatenative](https://concatenative.org/wiki/view/Concatenative%20language)
programming language.

```
$ dt
dt 0.8.0

> 1 1 + print
2

> [[ n ]: n print " " print n 2 *] [print-and-double] def

> 1 [print-and-double] 7 times
1 2 4 8 16 32 64 

> [[false] ["bye"] [true] ["hi"]] ? println
hi
```

## Installation

TBD. For now, clone the repo and run `./build` with Zig 0.11.+ and a recent
Cargo toolchain. The resulting binary will be in `./zig-impl/zig-out/bin/dt`

## Credits

Shared as open source software, distributed under the terms of [the 3-Clause BSD License](https://opensource.org/license/BSD-3-clause/).

A side quest of J.R. Hill | https://so.dang.cool | https://github.com/hiljusti
