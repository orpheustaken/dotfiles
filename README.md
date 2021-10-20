# Dotfiles Overview
The main purpose of this repository is to be a personal backup of my setup in case I need to rebuild my system somewhere else. However, feel free to clone and use it at your disposal.

![print6](https://user-images.githubusercontent.com/63078965/137253318-effa4522-b2b2-4e5f-9fa5-f5c32c4e1ed0.png)

## Packages and Dependencies
From personal experience, be sure to see the [packages list](https://github.com/orpheustaken/dotfiles/tree/master/packages) and install any possible dependency before trying to compile or run any of these files, otherwise you may get errors or/and missing features.

### Arch Linux
There is a shell script to automate this process for those on Arch, make sure to run it as root:
```bash
$ cd scripts/
$ ./install_packages
```
By default only the dependencies for the dotfiles are going to be installed, if you desire to install extra packages, uncomment those available or add your preferred ones.

## DWM patches
* [fullgaps](https://dwm.suckless.org/patches/fullgaps/)
* [notitle](https://dwm.suckless.org/patches/notitle/)
* [hide vacant tags](https://dwm.suckless.org/patches/hide_vacant_tags/)
* [alwayscenter](https://dwm.suckless.org/patches/alwayscenter/)
* [attachbottom](https://dwm.suckless.org/patches/attachbottom/)
* ~~[pertag](https://dwm.suckless.org/patches/pertag)~~

I do not use multi-monitor anymore, but, if I were to, I would certainly add the following patches:

* [statusallmons](https://dwm.suckless.org/patches/statusallmons/)
* [warp](https://dwm.suckless.org/patches/warp/)

## ST patches
* [alpha](https://st.suckless.org/patches/alpha/)
* [anysize](https://st.suckless.org/patches/anysize/)

## License
[MIT](https://choosealicense.com/licenses/mit/)
