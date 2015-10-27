EAPI=5
inherit enlightenment
DESCRIPTION="Moksha 0.1.0 window manager"
SRC_URI="https://github.com/JeffHoogland/moksha/archive/${PV}.tar.gz"
LICENSE="BSD-2"
KEYWORDS="~x86 ~amd64"
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
	sed -i "s:1.7.10:1.7.9:g" configure.ac
	eautoreconf
	epatch "${FILESDIR}"/quickstart.diff
	enlightenment_src_prepare
}

src_configure() {
	enlightenment_src_configure
}

src_install() {
  make && sudo make all install DESTDIR=${D}
	insinto /etc/enlightenment
	newins "${FILESDIR}"/gentoo-sysactions.conf sysactions.conf
}
