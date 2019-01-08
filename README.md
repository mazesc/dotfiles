dotfiles
========

<p align="center">
    <img src="https://github.com/mschlaipfer/dotfiles/raw/master/scrot.png">
</p>

Use [GNU Stow](https://www.gnu.org/software/stow/) to automatically symlink
dotfiles: `stow <dirname>`.

Wallpaper from https://www.pexels.com.

Awesome config adapted from https://gitlab.com/kofteistkofte/.
Keyboard layout widget due to https://github.com/giann/.

After installing fonts (`stow fonts`) run: `fc-cache -f -v` and check with
`fc-list`.

Dependencies:

  * rofi
  * unclutter
  * udiskie
  * scrot
  * i3lock
  * fonts-roboto
  * pulsemixer
  * compton
  * (probably more)
