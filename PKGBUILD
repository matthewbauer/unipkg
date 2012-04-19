# Maintainer:  Abilng<abilngeorge@gmail.com>
pkgname='unipkg'
pkgver=20120416
pkgrel=1
pkgdesc="Unipkg: a makepkg fork that can also compile to other package formats like deb and rpm(eventually)."
arch=('any')
url="https://github.com/abilng/unipkg"
license=('GPL')
source=()
depends=("bash" "bc" "pacman")
makedepends=('git')
md5sums=()

_gitroot="git://github.com/rferrazz/unipkg.git"
_gitname="unipkg"

build() {
	cd ${srcdir}
	msg "Connecting to GIT server:${_gitroot}..."
	if [[ -d ${_gitname} ]]; then
		(cd ${_gitname} && git pull origin)
	else
		git clone ${_gitroot} ${_gitname}
	fi
	msg "GIT checkout done or server timeout"

}

package() {
	cd $srcdir/
	install -D -m755 ${srcdir}/unipkg/unipkg.sh.in $pkgdir/usr/bin/unipkg
}
