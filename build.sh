#!/bin/sh
clean() { printf "%s" "$1" | tr '\n' ' ' | sed 's/  */ /g'; }

# Toolset
toolset="
glibc
glibc-devel
dash
bash
util-linux
procps-ng
coreutils
findutils
diffutils
patch
grep
ripgrep
sed
fd
file
which
time
git
bison
flex
m4
pkg-config
gcc
gdb
make
strace
ltrace
xxd
gawk
go
delve
gopls
python
uv
ruff
ty
typst
tinymist
sqlite
less
man-db
texinfo
cpio
tar
unzip
xz
zip
unzip
7zip
unrar
openssh
openssl
ca-certificates
wget
trurl
curl
jq
tzdata
shadow
sudo
tmux
skim
inotify-tools
gettext
readline
ncurses
ncurses-devel
docker
docker-buildx
docker-compose
"
toolset=$(clean "$toolset")

# Building
cd ./void-mklive
    sh mkrootfs.sh \
        -b base-container \
        -r "https://repo-fastly.voidlinux.org/current" \
        -r "https://repo-fastly.voidlinux.org/current/nonfree" \
        -o x86_64-rootfs.tar.xz x86_64

    xz -d x86_64-rootfs.tar.xz
    gzip -c x86_64-rootfs.tar > x86_64-rootfs.tar.gz
    rm -f x86_64-rootfs.tar

    sh mkplatformfs.sh \
        -b base-container \
        -r "https://repo-fastly.voidlinux.org/current" \
        -r "https://repo-fastly.voidlinux.org/current/nonfree" \
        -p "void-repo-nonfree $toolset xclip xtools vpm" \
        -o pkg-rootfs.tar.xz x86_64 x86_64-rootfs.tar.gz

    xz -d pkg-rootfs.tar.xz
    gzip -c pkg-rootfs.tar > pkg-rootfs.tar.gz
    rm -f pkg-rootfs.tar

    mkdir -p rootfs-tmp
    tar -xzf pkg-rootfs.tar.gz -C rootfs-tmp
    cp -r ../root/* rootfs-tmp/
    
    # Installing Charm tools
    export GOBIN=$(pwd)/rootfs-tmp/usr/bin
    go install github.com/charmbracelet/crush@latest
    go install github.com/charmbracelet/glow/v2@latest
    go install github.com/charmbracelet/gum@latest
    go install github.com/charmbracelet/melt/cmd/melt@latest

    tar -czf ../charmed-rootfs.tar.gz -C rootfs-tmp .
    rm -rf rootfs-tmp
cd ..
