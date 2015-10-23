# sabayon-atom
My Sabayon repository for Atom with ebuilds to install Atom from binary packages. To add this overlay run (as root):
```sh
layman -o http://github.com/fusion809/sabayon-atom/raw/master/overlays.xml -f -a sabayon-atom
emerge --sync && layman -S
emerge -av app-editors/atom-bin
```
Using these tools I also build a `.tbz2` package that I upload to my dropbox. You can install these packages, after you download them, of course, by running (as root):
```sh
mv atom-bin-x.y.z.tbz2 /usr/portage/packages/app-editors/
emerge -av atom-bin-x.y.z.tbz2
```
where `x.y.z` are, of course, replaced with the version of the package you downloaded. 

Here are the `.tbz2` file link(s) thus far:

* [atom-bin-1.0.19.tbz2](https://www.dropbox.com/s/qmf8lar7l6reoip/atom-bin-1.0.19.tbz2?dl=1)
