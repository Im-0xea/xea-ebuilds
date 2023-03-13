# Copyright 2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="Neofetch inspired utility for binaries."
HOMEPAGE="https://socki.moe"
inherit git-r3
EGIT_REPO_URI="https://github.com/Nik-Nothing/binfetch.git"

LICENSE="CC0"
SLOT="0"
KEYWORDS="~amd64"

DEPEND="sys-devel/ib"
RDEPEND="${DEPEND}"
BDEPEND=""

src_prepare() {
	default
	emake PREFIX="${EPREFIX}"/usr
}

src_install() {
	emake DESTDIR="${D}" PREFIX="${EPREFIX}"/usr install
}
