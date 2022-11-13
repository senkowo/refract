# Copyright 2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

# i am noob so very messy, but it works :3

EAPI=8

DESCRIPTION="A version of lolcat with options for some lgbtq+ flags."
HOMEPAGE="https://github.com/Elsa002/queercat"
SRC_URI=""

inherit git-r3
EGIT_REPO_URI="https://github.com/Elsa002/queercat.git"

LICENSE="Unlicense"
SLOT="0"
KEYWORDS="~amd64"

DEPEND="
	sys-devel/gcc
	dev-vcs/git
"

#S="${WORKDIR}/queercat-9999"
# ^ not necessary? trying to understand ebuilds...

RDEPEND="${DEPEND}"
BDEPEND=""

src_compile() {
	gcc main.c -lm -o queercat
}

src_install() {
	insinto "/usr/bin"
	doins -r queercat
	fperms +x /usr/bin/queercat
	einstalldocs
}
