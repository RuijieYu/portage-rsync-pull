# -*- shell-script -*-
pkgname=portage-rsync-pull
pkgver=0.0.1
pkgrel=1
pkgdesc='A repo mirroring tool for Gentoo using rsync'
arch=(any)

url='https://github.com/RuijieYu/portage-rsync-pull'
license=(MIT)

depends=(
    'python>=3.7'		# for __future__.annotations
    python-docopt		# for its help string
    rsync
)

source=(
    "$pkgname-$pkgver.tar.gz::$url/archive/refs/tags/v$pkgver.tar.gz"
)

sha512sums=('87838f1ea39d10bd2b67be7c7bc405d1fc80d9520267e43bc3868c52ba8c2217bbaf34571949e785b2a61d9d153784f786e6457568f044da72d0ca4f0e1688cb')
b2sums=('a5f20e50d06ddd334145df857a73bde491a1d575a2e7533f3ddaaaf204b5cbdf71730dc56576458041cc1aac3aae783418120d673408bc0e09cdf75111a4855b')

build() {
    make -C "$pkgname-$pkgver"
}

package() {
    make -C "$pkgname-$pkgver" \
	 DESTDIR="$pkgdir/" \
	 prefix="/usr" \
	 install
}
