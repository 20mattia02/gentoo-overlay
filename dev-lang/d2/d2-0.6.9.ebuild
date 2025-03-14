# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit go-module

DESCRIPTION=""
HOMEPAGE="https://d2lang.com/"
SRC_URI="
	https://github.com/terrastruct/${PN}/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz
	https://gentoo.chiozzi.cc/${P}-deps.tar.xz
"

LICENSE="MPL-2.0"
SLOT="0"
KEYWORDS="~amd64"

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""

src_compile() {
	ego build
}

src_install() {
	dobin d2
	default
}
