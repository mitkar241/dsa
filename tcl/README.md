# TCL
---
Tool Command Language

[Tcl Tutorial](https://www.tcl.tk/man/tcl8.5/tutorial/tcltutorial.html)

# Installation
---

[Installing Tcl/Tk on Ubuntu](https://wiki.tcl-lang.org/page/Installing+Tcl%2FTk+on+Ubuntu)

[sudo apt-get install tcl8.5-dev tk8.5-dev](https://askubuntu.com/questions/1001223/sudo-apt-get-install-tcl8-5-dev-tk8-5-dev)

[Ubuntu Packages Search](https://packages.ubuntu.com/)

Choose suitable distro
```
$ lsb_release -a
No LSB modules are available.
Distributor ID:	Ubuntu
Description:	Ubuntu 20.04.6 LTS
Release:	20.04
Codename:	focal
```

[Ubuntu – Package Search Results -- tcl-dev](https://packages.ubuntu.com/search?keywords=tcl-dev&searchon=names&suite=focal&section=all)

[Ubuntu – Package Search Results -- tk-dev](https://packages.ubuntu.com/search?keywords=tk-dev&searchon=names&suite=focal&section=all)

```
sudo apt install tcl8.6-dev tk8.6-dev -y
```

```
sudo apt install tcl -y
```
Reason:
```
$ tclsh

Command 'tclsh' not found, but can be installed with:

sudo apt install tcl

```
