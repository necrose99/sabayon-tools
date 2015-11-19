# sabayon-tools
This is my Sabayon overlay, it was originally intended for Atom with ebuilds to install Atom from binary packages. It has since been expanded to include extra packages. To add this overlay run (as root):
```sh
layman -o http://github.com/fusion809/sabayon-tools/raw/master/overlays.xml -f -a sabayon-tools
```

## ebuilds
### [FFMpegThumbs-MattePaint][1]
[kde-apps/ffmpegthumbs-mattepaint][2] is a program that when installed (and enabled in Dolphin by going to **Control**&rarr;**Configure Dolphin...**)

### [Onboard][3]
[app-accessibility/onboard][4] is an on-screen virtual keyboard that is developed for Ubuntu, although via the [`unity-gentoo`][5] and `[lif](https://github.com/killer2tester/gentoo-overlay-lif)` overlays it has also been ported to Gentoo-based platforms, such as Sabayon. I use it primarily when my cat jumps on me for scratches, which leaves me just one hand spare to use my laptop. I touch-type fairly well with two hands but poorly with just one.

## Binary packages
Using these tools I also build a `.tbz2` package that I upload to my dropbox. You can install these packages, after you download them, of course, by running (as root):
```sh
mv <PACKAGE>.tbz2 /var/lib/entropy/smartpackages/amd64
equo i -av <PACKAGE>.tbz2
```

### [Atom](https://atom.io) [atom-bin-1.2.1.tbz2](https://www.dropbox.com/s/4odytfkx8u75qlj/app-editors%3Aatom-bin-1.2.1.3803900e2dd562e6c111293e5630cb36b2a53c3d~9999.tbz2?dl=1)

### [Scilab](http://www.scilab.org/)
[Here](https://www.dropbox.com/s/yvchmmmh7p9xr4t/sci-mathematics%3Ascilab-bin-5.5.2.5b475dc664c2b92996a1ea93d1d9311582acc19c~9999.tbz2?dl=1) is the `.tbz2` file I have generated for sci-mathematics/scilab-bin-5.5.2.

### [Unix RuneScape Client](https://github.com/HikariKnight/rsu-client)
[Here](https://www.dropbox.com/s/vs3j3928jj7mil4/games-rpg%3Aunix-runescape-client-4.3.4.2058d145e7f2676d8e00a98be6f6cae8665568b4~9999.tbz2?dl=1) is the binary for RSU 4.3.4, while [here](https://www.dropbox.com/s/kn5cgn9eu69sc2g/games-rpg%3Aunix-runescape-client-4.3.5.29eacce023501ebb137ffc45952095220e909dc4~9999.tbz2?dl=1) is the binary for 4.3.5.


[1]: http://kde-apps.org/content/show.php/FFMpegThumbs-MattePaint?content=153902 "FFMpegThumbs-MattePaint Homepage"
[2]: https://github.com/fusion809/sabayon-tools/tree/master/kde-apps/ffmpegthumbs-mattepaint "kde-apps/ffmpegthumbs-mattepaint"
[3]: https://launchpad.net/onboard "Onboard Homepage at Launchpad"
[4]: https://github.com/fusion809/sabayon-tools/tree/master/app-accessibility/onboard "app-accessibility/onboard"
[5]: https://github.com/shiznix/unity-gentoo "unity-gentoo overlay"
