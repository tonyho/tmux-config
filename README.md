## Intro

Tmux config.

Fork from http://github.com/tony/tmux-config

Some modfication applied.

## Installation

### Step1: Download

```bash
git clone --recursive https://github.com/tonyho/tmux-config.git ~/.tmux
```

### Step2: ln tmux config to home:

```bash
ln -s ~/.tmux/.tmux.conf ~/.tmux.conf
```

### Step3: Go to config dir

```bash
cd ~/.tmux
```

## Status bar setting

### Step4: `tmux-mem-cpu-load` compiling and install

Works on Linux and OS X.

Change dir to tmux-mem-cpu-load:

```bash
cd ~/.tmux/vendor/tmux-mem-cpu-load

mkdir build; cd build

cmake ..

make

# (No need to do `sudo` if on OS X / macOS)
sudo make install
```

tmux-mem-cpu-load is installed our binary to `/usr/local/bin/tmux-mem-cpu-load`:

### Step4: Alternative: basic-cpu-and-memory.tmux

(Cross platform, tested with python 2.7+) Update March 19, 2014. Works with psutil 2.0 now.

Install ``psutil``:

```bash
sudo pip install psutil

sudo cp ~/.tmux/vendor/basic-cpu-and-memory.tmux /usr/local/bin/tmux-mem-cpu-load

sudo chmod +x /usr/local/bin/tmux-mem-cpu-load
```

### Step5:Clone and install plugins

#### Install xsel/xclip for [tmux-yank](https://github.com/tmux-plugins/tmux-yank)

tmux-yank used for copy to system clipboard:
```
 sudo apt-get install xsel xclip
```

#### Install fpp used in [tmux-fpp](https://github.com/tmux-plugins/tmux-fpp) plugin
```
mkdir ~/.tmux/plugins
cd ~/.tmux/plugins
git clone https://github.com/facebook/PathPicker.git

## For bashrc
echo 'export PATH=/home/hexiongjun/.tmux/plugins/PathPicker:$PATH' >> ~/.bashrc

. ~/.bashrc
```
#### Install fzf, used in [extrako](https://github.com/laktak/extrakto)

Ref: 

- https://github.com/junegunn/fzf#usage
- https://zhuanlan.zhihu.com/p/91873965

```
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
```

### Install urlview for tmux-urlview

```
sudo apt install urlview
```

### Install tmux plugins
Start tmux: `tmux`

Press the keys: 
```
Prefix + I
```

Wait the installation to be finished.

## Start tmux

To start a session:

`tmux`

To reattach a previous session:

`tmux attach`

To reload config file

`<Control + b>:` (which could Ctrl-B or Ctrl-A if you overidden it) then `source-file ~/.tmux.conf`

### Commands/keys

Our prefix/leader key is `Control + x` now. This sequence must be typed before any tmux shortcut.

* `Control + x` before any command
* `Control + x` then `?` to bring up list of keyboard shortcuts
* `Control + x` then `"` to split window
* `Control + x` then `<Space>` to change pane arrangement
* `Control + x` then `o` to rotate panes
* `Control + x` then `h`, `j`, `k`, `l` to move left, down, up, right. Respectively. (vim hjkl)
* `Control + x` then `;` to go to last panel

Beyond your first window:

* `Control + x` then `c` to create a new window
* `Control + x` then `n` to next window
* `Control + x` then `p` to previous window
* `Control + x` then `[0-9]` move to window number
* `Control + x` then `&` to kill window

Custom:

* `Control + x` then `m` to switch to ``main-horizontal`` layout with the main window at 2/3 height..
* `Control + x` then `M` to switch to ``main-vertical`` layout with the main window at half width.

List all the keys: `tmux list-keys`

List all the commands: `tmux list-commands`

## Cheatsheets

* [Cheatsheet](https://tmuxcheatsheet.com/)

## More configs / Tools

* [A detail config guide](http://louiszhai.github.io/2017/09/30/tmux/#Tmux-Continuum)
* *Modular dot-config example* [tony/.dot-config](https://github.com/tony/.dot-config)
* *Save / Load your tmux workspaces through JSON or YAML* with [tmuxp](https://github.com/tony/tmuxp).
* *Clone + Synchronize your git / hg / svn projects through JSON / YAML* with [vcspull](https://github.com/tony/vcspull).
* *Tmux book in Chinese* [mux: Productive Mouse-Free Development](https://www.kancloud.cn/kancloud/tmux/62463)
