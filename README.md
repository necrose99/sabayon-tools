# sabayon-tools
My Sabayon overlay. It was originally intended for Atom with ebuilds to install Atom from binary packages. It has since been expanded to include extra packages. To add this overlay run (as root):
```sh
layman -o http://github.com/fusion809/sabayon-tools/raw/master/overlays.xml -f -a sabayon-tools
```
Using these tools I also build a `.tbz2` package that I upload to my dropbox. You can install these packages, after you download them, of course, by running (as root):
```sh
mv <PACKAGE>.tbz2 /var/lib/entropy/smartpackages/amd64
equo i -av <PACKAGE>.tbz2
```

Here are the `.tbz2` file link(s) thus far:

* [atom-bin-1.2.1.tbz2](https://www.dropbox.com/s/4odytfkx8u75qlj/app-editors%3Aatom-bin-1.2.1.3803900e2dd562e6c111293e5630cb36b2a53c3d~9999.tbz2?dl=1)

# Moksha
moksha.sh should, if run, install Moksha for you.
[Here](https://www.dropbox.com/s/8lnzq5gkqidfrel/x11-wm%3Amoksha-bin-0.1.0.15a03e64e9c36785edd726576bca580d373e9591~9999.tbz2?dl=1) is the `.tbz2` file I have generated for x11-wm/moksha-bin-0.1.0.

# qBittorrent (not included in the overlay)
An Entropy `.tbz2` [binary](https://www.dropbox.com/s/m6s31xb8rial0gv/net-p2p%3Aqbittorrent-3.2.4.9dc4fee2f9dbf7b236cc307aa918bc803b8cdad5~9999.tbz2?dl=1) for qBittorrent 3.2.4 exists in my Dropbox.

# Scilab
[Here](https://www.dropbox.com/s/yvchmmmh7p9xr4t/sci-mathematics%3Ascilab-bin-5.5.2.5b475dc664c2b92996a1ea93d1d9311582acc19c~9999.tbz2?dl=1) is the `.tbz2` file I have generated for sci-mathematics/scilab-bin-5.5.2.

# Unix RuneScape Client
[Here](https://www.dropbox.com/s/vs3j3928jj7mil4/games-rpg%3Aunix-runescape-client-4.3.4.2058d145e7f2676d8e00a98be6f6cae8665568b4~9999.tbz2?dl=1) is the binary for RSU 4.3.4, while [here](https://www.dropbox.com/s/kn5cgn9eu69sc2g/games-rpg%3Aunix-runescape-client-4.3.5.29eacce023501ebb137ffc45952095220e909dc4~9999.tbz2?dl=1) is the binary for 4.3.5.
