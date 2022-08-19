# Copyright 2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="A meme system info tool for Linux, based on nyan/uwu trend on r/linuxmasterrace."
HOMEPAGE="https://github.com/TheDarkBug/uwufetch"
SRC_URI="https://github.com/TheDarkBug/${PN}/archive/${PV}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64"
IUSE="viu gpu"

DEPEND="
		gpu? ( sys-apps/lshw )
		viu? ( media-gfx/viu )
"
RDEPEND="${DEPEND}"
BDEPEND=""
