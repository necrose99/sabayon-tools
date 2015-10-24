EAPI=5
inherit enlightenment
DESCRIPTION="Moksha 0.1.0 window manager"
SRC_URI="https://github.com/JeffHoogland/moksha/archive/${PV}.tar.gz"
JEF=https://github.com/JeffHoogland/bodhi3packages/blob/master/bodhi-profile-moksha/usr/share/enlightenment/data/config/bodhi/
LICENSE="BSD-2"
KEYWORDS="~amd64"
SLOT="0.17"

IUSE="pam spell static-libs +udev ukit ${IUSE_E_MODULES}"

RDEPEND="
  >=dev-libs/efl-1.15.1
	>=dev-libs/e_dbus-1.7.10
	=media-plugins/evas_generic_loaders-1.15.0
	x11-libs/xcb-util-keysyms"
DEPEND="${RDEPEND}"

S=${WORKDIR}/${P%%_*}

src_prepare() {
	enlightenment_src_prepare
}

src_configure() {
  su - fusion809
	./autogen.sh --prefix=/usr
}

src_install() {
  su - fusion809
	make
	sudo make all install
  rm -r ~/.e/e
  cd /usr/share/enlightenment/data/config/default
  sudo wget -c $JEF/e.cfg $JEF/e_randr.cfg $JEF/exehist.cfg $JEF/module.battery.cfg $JEF/module.clock.cfg $JEF/module.conf.cfg $JEF/module.everything-apps.cfg $JEF/module.everything-files.cfg $JEF/module.everything.cfg $JEF/module.gadman.cfg $JEF/module.ibar.cfg $JEF/module.notification.cfg $JEF/module.pager.cfg $JEF/module.syscon.cfg $JEF/module.tasks.cfg
  git clone https://github.com/JeffHoogland/MokshaRadiance
  mv MokshaRadiance/MokshaRadiance ~/.e/e/themes/
}
