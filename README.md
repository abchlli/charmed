![charmed](./charmed.png)

---
**A coherent Linux rootfs for anyone who just needs to get the job done.**
* Glamorous following Charm's aesthetic, includes a selection of their tools.
* Minimal being based on the latest Void Linux glibc rootfs, it has very little bloat (see later).
* Modern, coherent and comfy, uses vi and readline style bindings everywhere.

# Toolset
* Gawk ([docs](https://www.gnu.org/software/gawk/manual), [source](https://cgit.git.savannah.gnu.org/cgit/gawk.git))
* Bash ([docs](https://www.gnu.org/software/bash/manual), [source](https://cgit.git.savannah.gnu.org/cgit/bash.git))
* Binutils ([docs](https://sourceware.org/binutils/docs), [source](https://sourceware.org/git/gitweb.cgi?p=binutils-gdb.git))
* GCC ([docs](https://gcc.gnu.org/onlinedocs/), [source](https://gcc.gnu.org/git/gitweb.cgi?p=gcc.git))
* GDB ([docs](https://www.sourceware.org/gdb/docs/), [source](https://sourceware.org/git/gdb-htdocs.git))
* Make ([docs](https://www.gnu.org/software/make/manual), [source](https://cgit.git.savannah.gnu.org/cgit/make.git))
* Strace ([docs](https://strace.io), [source](https://github.com/strace/strace))
* Ltrace ([docs](https://ltrace.org), [source](https://gitlab.com/cespedes/ltrace))
* OpenSSH ([docs](https://www.openssh.org), [source](https://github.com/openssh/openssh-portable))
* Curl ([docs](https://curl.se/docs/tutorial.html), [source](https://github.com/curl/curl))
* Jq ([docs](https://jqlang.org/tutorial), [source](https://github.com/jqlang/jq))
* Git ([docs](https://git-scm.com/book/en/v2), [source](https://github.com/git/git))
* Go ([docs](https://go.dev/doc), [source](https://github.com/golang/go))
* Delve ([docs](https://github.com/go-delve/delve/tree/master/docs), [source](https://github.com/go-delve/delve))
* Gopls ([docs](https://go.dev/gopls), [source](https://cs.opensource.google/go/x/tools/+/master:gopls))
* Python ([docs](https://docs.python.org/3), [source](https://github.com/python/cpython))
* Uv ([docs](https://docs.astral.sh/uv), [source](https://github.com/astral-sh/uv))
* Ruff ([docs](https://docs.astral.sh/ruff), [source](https://github.com/astral-sh/ruff))
* Ty ([docs](https://docs.astral.sh/ty), [source](https://github.com/astral-sh/ty))
* Typst ([docs](https://typst.app/docs), [source](https://github.com/typst/typst))
* Tinymist ([docs](https://myriad-dreamin.github.io/tinymist), [source](https://github.com/Myriad-Dreamin/tinymist))
* SQLite ([docs](https://sqlite.org/docs.html), [source](https://github.com/sqlite/sqlite))
* Runit ([docs](https://smarden.org/runit), [source](https://github.com/g-pape/runit))

Additionally, both GNU texinfo and man-db are available.  
Ripgrep and fd are aliased to the GNU equivalents and ready to go!  
Refer to the [Void](https://docs.voidlinux.org) and [Linux](https://kernel.org) websites for more.  

# Editing
Charmed isn't opinionated on such topic because it knows you are! Bring your own.  
The system uses vi and readline style bindings everywhere, I recommend you use an editor with similar bindings.  
[Vim](https://vimhelp.org), [NeoVim](https://neovim.io/doc/user), [Vis](github.com/martanne/vis/wiki), ([Doom](https://github.com/doomemacs/doomemacs/blob/master/docs/index.org)) [Emacs](https://www.gnu.org/software/emacs/manual/html_node/emacs/index.html) (evil, no X), [VSCode](https://marketplace.visualstudio.com/items?itemName=vscodevim.vim) and [Zed](https://zed.dev/docs/vim) come to mind!

Don't forget to set it as default; if you use an external one, I recommend setting the default to [nvi](https://repo.or.cz/nvi.git).
```sh
# NeoVim
vpm install neovim
echo 'export EDITOR="nvim" VISUAL="$EDITOR"' >> ~/.bash_profile
```
```sh
# Vim (clipboard)
vpm install vim-x11
echo 'export EDITOR="vim" VISUAL="$EDITOR"' >> ~/.bash_profile
```
```sh
# Nvi (reimplementation of the classic vi)
vpm install nvi # pre-installed installed as fallback
echo 'export EDITOR="vi" VISUAL="$EDITOR"' >> ~/.bash_profile
```

> [!IMPORTANT]
> Users are expected to be technical, it is unlikely you're gonna have a good time with this if you aren't.  

# Vision
It's almost impossible to read and understand all of the source code for the included tools.  
GCC alone is ~15M lines of code, but that is the point; Charmed isn't meant to be mastered top to bottom.  
That said, the system is far from bloated in size, every tool has a purpose and each can be mastered in-use.  
The whole package is very viable for professional work, and everything pushes really hard towards productivity.  
A big win to me is the sense of coherency you get from it without having to put in the effort yourself.

No more messing around with configs (other than the one for your chosen editor once in a while).  
Imagine yourself sticking your hand in a box full of toys (tools) you can use and master over time over time.  
You won't need to tweak your system to make it that 0.1% more productive anymore, you'll learn how to use a system that already is instead.  
Charm's [crush](https://github.com/charmbracelet/crush), [glow](https://github.com/charmbracelet/glow), [gum](https://github.com/charmbracelet/gum) and [melt](https://github.com/charmbracelet/melt) are included.  
Following their aesthetic and having these tools available makes things even more playful!  

P.S.  
For a system you can understand top to bottom, you might want to look into [9front](https://9front.org).

Sorry, what? You want a system you can understand top to bottom and also use for professional work?  
That would be [reason](https://github.com/abchlli/reason) (if you have ~14 years of your life to spare).

In a sense, [charmed](https://github.com/abchlli/charmed) is the very opposite of [reason](https://github.com/abchlli/reason).

# Install it on Windows
You can install it on any Windows newer than Windows 10 build 19041 in less than 5 minutes.  
It's pretty much effortless, which is another strength of it.  

1. Enable [WSL2](https://learn.microsoft.com/en-us/windows/wsl/install) (if it isn't already).
```powershell
# From a PowerShell run as administrator
dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart # WSL2 optional feature
dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart # Virtual Machine Platform optional feature
```
You can also just open up "Turn Windows on or off" from the start menu and click on the boxes.

> [!Tip]
> I recommend installing this Windows Terminal [config](./additional/wt.json) now for convenience.  
> It provides Charmed's colorscheme and sensible settings.  
> The [JetBrains Mono](https://www.jetbrains.com/lp/mono) font is expected, change the config for it to use your favorite font.

2. Download from the latest [release](https://github.com/abchlli/charmed) somewhere.
```powershell
# From a PowerShell
Invoke-WebRequest -Uri "https://github.com/abchlli/reason/releases/latest/download/reason-rootfs.tar.gz" -OutFile "reason-rootfs.tar.gz"
```

3. Import it!
```powershell
# --import <Distro> <Location> <Rootfs>
wsl.exe --import Charmed .\Charmed charmed-rootfs.tar.gz
```

> [!NOTE]
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
wsl.exe --distribution Reason --user albi
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
| `a/e`       | Prev/Next window                        |
| `x`           | Kill window                             |
| `f`           | Sessionizer                             |
| `s`           | Select session                          |
| `v/space`   | Copy mode                               |
| `Ctrl + j/k`       | Scroll (copy-mode)                      |
| `-\|`      | Split vertically/horizontally           |
| `q`           | Select pane                             |
| `h/j/k/l`     | Move between panes                      |
| `H/J/K/L`     | Resize pane (repeatable)                |

It should feel like you're rolling the fingers of your left hand.

> [!TIP]
> If you lock yourself out, don't panic!
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
wget https://github.com/abchlli/reason/releases/latest/download/reason-rootfs.tar.gz
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

> [!CAUTION]
> To make it permanent (auto-mount), you need to change the content of `/etc/fstab`, please be careful with it!

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
