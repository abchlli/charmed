![charmed](./charmed.png)

---
**A coherent Linux rootfs for anyone who just needs to get the job done.**
* Glamorous following Charm's aesthetic, includes a selection of their tools.
* Minimal, based on the latest Void Linux glibc rootfs, it has very little bloat (see later).
* Modern, coherent and comfy, uses vi and readline style bindings everywhere.

# Toolset
* Bash ([documentation](https://www.gnu.org/software/bash/manual), [source](https://cgit.git.savannah.gnu.org/cgit/bash.git))
* Coreutils ([documentation](https://www.maizure.org/projects/decoded-gnu-coreutils), [source](https://gitweb.git.savannah.gnu.org/gitweb/?p=coreutils.git))
* Diffutils ([documentation](https://www.gnu.org/software/diffutils/manual), [source](https://cgit.git.savannah.gnu.org/cgit/diffutils.git))
* Findutils ([documentation](https://www.gnu.org/software/findutils/manual/find.html), [source](https://cgit.git.savannah.gnu.org/cgit/findutils.git))
* Binutils ([documentation](https://sourceware.org/binutils/documentation), [source](https://sourceware.org/git/gitweb.cgi?p=binutils-gdb.git))
* GCC ([documentation](https://gcc.gnu.org/documentation/), [source](https://gcc.gnu.org/git/gitweb.cgi?p=gcc.git))
* GDB ([documentation](https://www.sourceware.org/gdb/documentation/), [source](https://sourceware.org/git/gdb-documentation.git))
* Make ([documentation](https://www.gnu.org/software/make/manual), [source](https://cgit.git.savannah.gnu.org/cgit/make.git))
* Gawk ([documentation](https://www.gnu.org/software/gawk/manual), [source](https://cgit.git.savannah.gnu.org/cgit/gawk.git))
* Strace ([documentation](https://strace.io), [source](https://github.com/strace/strace))
* Ltrace ([documentation](https://ltrace.org), [source](https://gitlab.com/cespedes/ltrace))
* OpenSSH ([documentation](https://www.openssh.org), [source](https://github.com/openssh/openssh-portable))
* Curl ([documentation](https://curl.se/documentation/tutorial.html), [source](https://github.com/curl/curl))
* Jq ([documentation](https://jqlang.org/tutorial), [source](https://github.com/jqlang/jq))
* Git ([documentation](https://git-scm.com/book/en/v2), [source](https://github.com/git/git))
* Go ([documentation](https://go.dev/doc), [source](https://github.com/golang/go))
* Delve ([documentation](https://github.com/go-delve/delve/tree/master/documentation), [source](https://github.com/go-delve/delve))
* Python ([documentation](https://documentation.python.org/3), [source](https://github.com/python/cpython))
* Typst ([documentation](https://typst.app/documentation), [source](https://github.com/typst/typst))
* SQLite ([documentation](https://sqlite.org/documentation.html), [source](https://github.com/sqlite/sqlite))
* Runit ([documentation](https://smarden.org/runit), [source](https://github.com/g-pape/runit))

Both GNU texinfo and man-db are available.  
Aliased to their GNU equivalents, [rg](https://github.com/BurntSushi/ripgrep) and [fd](https://github.com/sharkdp/fd) are ready-to-go!  

Additionally:
1. The [gopls](https://go.dev/gopls) Go LSP is included along with pkgsite and goimports.
2. The [ty](https://docs.astral.sh/ty) Python LSP is included along with the [ruff](https://docs.astral.sh/ruff) formatter and [uv](https://docs.astral.sh/uv) package manager
3. The [tinymist](https://github.com/Myriad-Dreamin/tinymist) Typst LSP is included.

Refer to the [Void](https://docs.voidlinux.org) and [Linux](https://kernel.org) websites for more.

# Editing
Charmed isn't opinionated on such topic because it knows you are! Bring your own.  
The system uses **vi** and **readline** style bindings everywhere.  
I recommend you use an editor with similar bindings.  
[Vim](https://vimhelp.org), [NeoVim](https://neovim.io/doc/user), [Vis](github.com/martanne/vis/wiki), ([Doom](https://github.com/doomemacs/doomemacs/blob/master/docs/index.org)) [Emacs](https://www.gnu.org/software/emacs/manual/html_node/emacs/index.html) (evil, no X), [VSCode](https://marketplace.visualstudio.com/items?itemName=vscodevim.vim) and [Zed](https://zed.dev/docs/vim) come to mind!

Don't forget to set it as default; if you use an external one, I recommend setting it to [nvi](https://repo.or.cz/nvi.git).
```sh
# NeoVim
vpm install neovim
echo 'export EDITOR="nvim" VISUAL="$EDITOR"' >> ~/.bash_profile
```
```sh
# Vim (with clipboard support)
vpm install vim-x11
echo 'export EDITOR="vim" VISUAL="$EDITOR"' >> ~/.bash_profile
```
```sh
# Nvi (reimplementation of the classic vi)
vpm install nvi # pre-installed installed as fallback
echo 'export EDITOR="vi" VISUAL="$EDITOR"' >> ~/.bash_profile
```

> [!NOTE]
> Users are expected to be technical.  
> It is unlikely you're gonna have a good time with this if you aren't.  

# Vision
It's almost impossible to read and understand all of the source code for the included tools.  
GCC alone is ~15M lines of code, but that is the point.  
Charmed isn't meant to be mastered top to bottom.  
That said, the system is far from bloated in size.  
Every tool has a purpose and each can be mastered in-use.  

The whole package is very viable for professional work.  
Everything pushes really hard towards high productivity. I hope you'll enjoy using it!  
A big win to *me* is the sense of coherency you get without having to put in the effort yourself.

No more messing around with configs (other than the one for your chosen editor once in a **while**).  
Imagine yourself sticking your hand in a box full of toys (tools) you can use and **master over time**.  
You won't need to tweak your system to make it that 0.1% more productive anymore, you'll learn how to use a system that already is highly productive instead.  
Charm's [crush](https://github.com/charmbracelet/crush), [glow](https://github.com/charmbracelet/glow), [gum](https://github.com/charmbracelet/gum) and [melt](https://github.com/charmbracelet/melt) are included.  
Following their aesthetic and having these tools available makes things even more playful!  

P.S.  
For a system you can understand top to bottom, you might want to look into [9front](https://9front.org).

Sorry, what?  
You want a system you can understand top to bottom and also use for professional work?  
That would be [reason](https://github.com/abchlli/reason) (if you have ~14 years of your life to spare).

In a sense, [charmed](https://github.com/abchlli/charmed) is the very opposite of [reason](https://github.com/abchlli/reason).

# Install it on Windows
You can install it on any Windows newer than Windows 10 build 19041 in less than 5 minutes.  
It's pretty much effortless which is another strength of it.  

1. Enable [WSL2](https://learn.microsoft.com/en-us/windows/wsl/install) (if it isn't already).
```powershell
# From a PowerShell run as administrator
dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart # WSL2 optional feature
dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart # Virtual Machine Platform optional feature
```
You can also just open up "Turn Windows on or off" from the start menu and click on the boxes.

> [!IMPORTANT]
> I suggest installing this Windows Terminal [config](./additional/wt.json) now for convenience.  
> You won't get the colorscheme and the sensible settings included if you skip this step!  
> The [JetBrains Mono](https://www.jetbrains.com/lp/mono) font is expected, you should change the config to use your favorite font.

2. Download from the latest [release](https://github.com/abchlli/charmed) somewhere.
```powershell
# From a PowerShell
Invoke-WebRequest -Uri "https://github.com/abchlli/charmed/releases/latest/download/charmed-rootfs.tar.gz" -OutFile "charmed-rootfs.tar.gz"
```

3. Import it!
```powershell
# --import <Distro> <Location> <Rootfs>
wsl.exe --import Charmed .\Charmed charmed-rootfs.tar.gz
```

> [!TIP]
> You should be able to access the new profile after you restart Windows Terminal!  

4. Done! 🎉
```powershell
# Take a look around.
wsl.exe --distribution Charmed
```

# Usage
1. Create your standard user.
```sh
useradd -m -s /bin/bash -G wheel albi
passwd albi
```

You could set something like this as your Windows Terminal profile's command line.
```powershell
wsl.exe --distribution Charmed --user albi
```

2. Set your preferred DNS servers.
```sh
# Cloudflare DNS
echo -e "nameserver 1.1.1.1\nnameserver 1.0.0.1" > /etc/resolv.conf
```

3. Switch to your new user.
```sh
# Welcome!
su albi
```

# Bindings
Because of how familiar it feels, bash isn't in vi-mode by default.

| Binding | Action |
|---------|--------|
| `Ctrl + a` | Move cursor to beginning of line |
| `Ctrl + e` | Move cursor to end of line |
| `Ctrl + w` | Delete word backward |
| `Ctrl + r` | Reverse search |

```sh
# Try to switch to bash's vi-mode
set -o vi && bind '"\C-l": clear-screen'
# Make it permanent (if you are into it)
echo "set -o vi && bind '"\C-l": clear-screen'" >> ~/.bashrc
```

Tmux's prefix is C-s.
| Key           | Action                                  |
|---------------|-----------------------------------------|
| `c`           | Create window                           |
| `a/e`         | Previous/Next window                    |
| `x`           | Kill window                             |
| `f`           | Sessionizer                             |
| `s`           | Select session                          |
| `v/space`     | Enter copy-mode                         |
| `Ctrl + j/k`  | Scroll (copy-mode)                      |
| `-/\|`        | Split vertically/horizontally           |
| `q`           | Select pane                             |
| `h/j/k/l`     | Move between panes                      |
| `H/J/K/L`     | Resize pane (repeatable)                |

It should feel like you're rolling the fingers of your left hand.

> [!TIP]
> If ever you lock yourself out, don't panic!  
> Try `wsl.exe --distribution Charmed --user root`.

# Containers
Docker is installed and disabled by default.  
You can enable it via the init system.
```sh
# Enable it for future sessions
ln -s /etc/sv/containerd /var/service
ln -s /etc/sv/docker /var/service
# Start it for this one
sv start containerd
sv start docker
```

# Try on Linux
Charmed will be using your kernel.

1. Download from the latest [release](https://github.com/abchlli/charmed) somewhere.
```sh
# From your shell.
wget https://github.com/abchlli/charmed/releases/latest/download/charmed-rootfs.tar.gz
```

2. Unpack it.
```sh
sudo mkdir -p ~/charming
sudo tar -xzf rootfs.tar.gz -C ~/charming
```

3. Chroot in it.
```sh
sudo mount -t proc /proc ~/charming/proc
sudo mount --rbind /sys ~/charming/sys
sudo mount --rbind /dev ~/charming/dev
sudo mount --rbind /run ~/charming/run
sudo chroot ~/charming /bin/bash
```

  4. Create your standard user.
```sh
useradd -m -s /bin/bash -G wheel albi
passwd albi
```

> [!WARNING]
> To make it permanent (auto-mount), you need to change the content of `/etc/fstab`.  
> Please be careful with it, you could fuck up your system!

# Build
I recommend you do this on a Void Linux system (such as a Charmed installation).  
Make sure you have everything required by [void-mklive](https://github.com/void-linux/void-mklive) in your `$PATH`.  
```sh
# Wait patiently...
sh build.sh
```

> [!TIP]
> Backups are super easy with WSL, just copy the .vhdx file somewhere.  
> It can later be reimported along with your data.

Check out the rest of the files in [additional](./additional).   
The Firefox configuration files and bookmarks are very valuable IMO.  
Give the VSCode config a try using the WSL [extension](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-wsl)!

```
(\ /)
( . .)
c(")(")
```
