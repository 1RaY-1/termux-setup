## NOTE
*I haven't tested this script for some long time, so I'd reccommend beeing a bit cautious.*

*The script by itself is very simple and it's more of a sample of how you can setup your Termux installation, rather than a straightforward aproach (install some packages, download a few GitHub repos, remove Termux's welcome text, configure VIM, etc)*

## My simple termux setup

If you run [termux-setup.sh](https://github.com/1RaY-1/termux-setup/blob/main/termux-setup.sh), it will do this things:
* Upgrade all packages.
* Give Termux a storage access permission.
* Install some programs (wget, net-tools, mlocate, etc...).
* Install and configure vim.
* Install some python modules (setuptools, requests, ipython, cryptography, faker) .
* Install Ip Tracer (https://github.com/rajkumardusad/IP-Tracer.git)
* Remove Termux welcome text.

## Requierements
* Stable internet connection
* Termux installed on Android device

## How to setup Termux using my script
1. Install Termux from [F-Droid](https://f-droid.org/packages/com.termux/) (don't use Play Store, it'll give you errors)

2. Open Termux and paste the following commands (and then run ofc):
```
curl -OL https://raw.githubusercontent.com/1ray-1/termux-setup/main/termux-setup.sh && chmod +x termux-setup.sh && bash termux-setup.sh
```
