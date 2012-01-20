# Maintainer:  Abilng<abilngeorge@gmail.com>
pkgname='unipkg'
pkgver=2
pkgrel=1
pkgdesc="Unipkg: a makepkg fork that can also compile to other package formats like deb and rpm(eventually)."
arch=('any')
url=""
license=('GPL')
source=()
depends=('bash','bc','pacman')
makedepends=('git')
md5sums=()

_gitroot="git://github.com/abilng/gnome-baxc-gui.git"
_gitname="gnome-baxc"

build() {
	cd ${srcdir}
	msg "Connecting to GIT server..."
	if [[ -d ${_gitname} ]]; then
		(cd ${_gitname} && git pull origin)
	else
		git clone ${_gitroot} ${_gitname}
	fi
	msg "GIT checkout done or server timeout"

}

package() {
	cd $srcdir/$pkgname-$pkgver/scripts
	install -m755 makepkg.sh $pkgdir/usr/bin/unipkg
}
