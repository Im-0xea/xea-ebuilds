EAPI=8

PYTHON_COMPAT=( python3_{9..11} )

inherit distutils-r1 pypi

DESCRIPTION="Neofetch with LGBTQ+ pride flags!"

HOMEPAGE="https://github.com/hykilpikonna/hyfetch"

SRC_URI="https://github.com/hykilpikonna/hyfetch/archive/refs/tags/1.4.7.tar.gz"

LICENSE="MIT"
SLOT="0"

KEYWORDS="~amd64"

src_prepare() {
	distutils-r1_src_prepare
	cp neofetch hyfetch
}
