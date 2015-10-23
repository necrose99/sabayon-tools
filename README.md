# sabayon-atom
My Sabayon repository for Atom with ebuilds to install Atom from binary packages. To add this overlay run (as root):
```sh
layman -o http://github.com/fusion809/sabayon-atom/raw/master/overlays.xml -f -a sabayon-atom
emerge --sync && layman -S
emerge -av app-editors/atom-bin
```
Using these tools I also build a `.tbz2` package that I upload to my dropbox. You can install these packages, after you download them, of course, by running (as root):
```sh
mv <PACKAGE>.tbz2 /var/lib/entropy/smartpackages/amd64
equo i -av <PACKAGE>.tbz2
```

Here are the `.tbz2` file link(s) thus far:

* [atom-bin-1.0.19.tbz2](https://www.dropbox.com/s/022p859caksc8n5/app-editors%3Aatom-bin-1.0.19.6ed20337769926bee9f50a87cee36e3e04fb840b~9999.tbz2?dl=1)
