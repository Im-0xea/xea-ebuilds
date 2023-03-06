EAPI=8

DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=1
PYTHON_COMPAT=( python3_{9..11} )

inherit bash-completion-r1 distutils-r1 optfeature pypi wrapper

DESCRIPTION="Neofetch with LGBTQ+ pride flags!"

HOMEPAGE="https://github.com/hykilpikonna/hyfetch"

SRC_URI="https://github.com/hykilpikonna/hyfetch/archive/refs/tags/1.4.7.tar.gz"

distutils_enable_tests pytest

LICENSE="MIT"
SLOT="0"

KEYWORDS="~amd64"

IUSE="test"

src_prepare() {
	distutils-r1_src_prepare
	cp neofetch hyfetch
	#sed -i 's/neofetch.1/hyfetch.1/g' Makefile hyfetch/scripts/neowofetch neofetch tools/deploy-release.py tools/deploy.md tools/reformat_readme.py
}

python_install_all() {
	dodoc README.md
	#doman hyfetch.1

	#make_wrapper hyfetch
}

pkg_postinst() {
	true
}
