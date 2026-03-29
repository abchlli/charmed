#!/bin/sh
export GOPATH="$HOME/.go"
case ":$PATH:" in
    *":$HOME/.go/bin:"*) ;;
    *) PATH="$PATH:$GOPATH/bin" ;;
esac ; export PATH
