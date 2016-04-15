# Install using sh or using redo
# Obviously use sh only on the first install
# /bin/sh install.do
#    or
# redo install

BINDIR=/usr/local/bin

which redo-ifchange 1>&2 2>/dev/null
[ $? -ne 0 ] || redo-ifchange redo

sudo install redo $BINDIR
sudo ln -sf $BINDIR/redo{,-ifchange}
sudo ln -sf $BINDIR/redo{,-ifcreate}
