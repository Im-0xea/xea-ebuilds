# Copyright 2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="A transpiler to simplify non line-based languages."
HOMEPAGE="https://socki.moe"
inherit git-r3
EGIT_REPO_URI="https://github.com/Im-0xea/ibranching.git"

LICENSE="CC0"
SLOT="0"
KEYWORDS="~amd64"

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""

src_prepare() {
	default
	emake bootstrap
}

src_install() {
	emake DESTDIR="${D}" PREFIX="${EPREFIX}"/usr install
}
