EAPI="5"
inherit autotools enlightenment

DESCRIPTION="Moksha 0.1.0 window manager"
SRC_URI="https://github.com/JeffHoogland/moksha/archive/0.1.0.tar.gz"
LICENSE="BSD-2"
KEYWORDS="~amd64"
SLOT="0.17"

# The @ is just an anchor to expand from
__EVRY_MODS=""
__CONF_MODS="
	+@applications +@dialogs +@display +@edgebindings
	+@interaction +@intl +@keybindings +@menus
	+@paths +@performance +@randr +@shelves +@theme
	+@window-manipulation +@window-remembers"
__NORM_MODS="
	@access +@backlight +@battery +@clock +@comp +@connman +@cpufreq +@dropshadow
	+@everything +@fileman +@fileman-opinfo +@gadman +@ibar +@ibox +@illume2
	+@mixer	+@msgbus +@notification +@pager +@quickaccess +@shot +@start
	+@syscon +@systray +@tasks +@temperature +@tiling +@winlist +@wizard +@xkbswitch"
IUSE_E_MODULES="
	${__CONF_MODS//@/enlightenment_modules_conf-}
	${__NORM_MODS//@/enlightenment_modules_}"

IUSE="pam spell static-libs +udev ukit ${IUSE_E_MODULES}"

RDEPEND="
	pam? ( sys-libs/pam )
	|| ( >=dev-libs/efl-1.8.4[X,eet] >=dev-libs/efl-1.8.4[xcb,eet] )
	>=dev-libs/e_dbus-1.7.10
	ukit? ( >=dev-libs/e_dbus-1.7.10[udev] )
	x11-libs/xcb-util-keysyms"
DEPEND="${RDEPEND}"

S=${WORKDIR}/${P%%_*}

src_prepare() {
	sed -i "s:1.7.10:1.7.9:g" configure.ac
	eautoreconf
	enlightenment_src_prepare
}

src_configure() {
	E_ECONF+=(
		--disable-install-sysactions
		--disable-elementary
		$(use_enable doc)
		--disable-device-hal
		--enable-emotion
		--disable-mount-hal
		$(use_enable nls)
		$(use_enable pam)
		--enable-device-udev
		$(use_enable udev mount-eeze)
		$(use_enable ukit mount-udisks)
		--disable-physics
	)
	local u c
	for u in ${IUSE_E_MODULES} ; do
		u=${u#+}
		c=${u#enlightenment_modules_}
		E_ECONF+=( $(use_enable ${u} ${c}) )
	done
	enlightenment_src_configure
}

src_install() {
	enlightenment_src_install
	insinto /etc/moksha
	newins "${FILESDIR}"/gentoo-sysactions.conf sysactions.conf
}
