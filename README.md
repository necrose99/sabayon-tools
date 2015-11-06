# sabayon-tools
My Sabayon overlay. It was originally intended for Atom with ebuilds to install Atom from binary packages. It has since been expanded to include extra packages. To add this overlay run (as root):
```sh
layman -o http://github.com/fusion809/sabayon-atom/raw/master/overlays.xml -f -a sabayon-atom
```
Using these tools I also build a `.tbz2` package that I upload to my dropbox. You can install these packages, after you download them, of course, by running (as root):
```sh
mv <PACKAGE>.tbz2 /var/lib/entropy/smartpackages/amd64
equo i -av <PACKAGE>.tbz2
```

Here are the `.tbz2` file link(s) thus far:

*
[atom-bin-1.0.19.tbz2](https://www.dropbox.com/s/022p859caksc8n5/app-editors%3Aatom-bin-1.0.19.6ed20337769926bee9f50a87cee36e3e04fb840b~9999.tbz2?dl=1)
(59.4 MB download, takes up 196.2 MB when installed)
*
[atom-bin-1.1.0-beta1.tbz2](https://www.dropbox.com/s/yln1351x978ffo9/app-editors%3Aatom-bin-1.1.0.27c276d62c35ce203f4a1a8e1c48f9d869e8eec9~9999.tbz2?dl=1)
(61.1 MB download, takes up 207.2 MB when installed)
*
[atom-bin-1.1.0.tbz2](https://www.dropbox.com/s/x2dmt5ie7sgg0uw/app-editors%3Aatom-bin-1.1.0.6a4dc163e1570d16b870309b9ef585881d12aa16~9999.tbz2?dl=1)
(61.0 MB download, takes up 207.1 MB when
installed)

# Moksha
moksha.sh should, if run, install Moksha for you.
[Here](https://www.dropbox.com/s/8lnzq5gkqidfrel/x11-wm%3Amoksha-bin-0.1.0.15a03e64e9c36785edd726576bca580d373e9591~9999.tbz2?dl=1) is the `.tbz2` file I have generated for x11-wm/moksha-bin-0.1.0.

# Scilab
[Here](https://www.dropbox.com/s/yvchmmmh7p9xr4t/sci-mathematics%3Ascilab-bin-5.5.2.5b475dc664c2b92996a1ea93d1d9311582acc19c~9999.tbz2?dl=1) is the `.tbz2` file I have generated for sci-mathematics/scilab-bin-5.5.2.
