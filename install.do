# Install using sh or using redo
# Obviously use sh only on the first install
# /bin/sh install.do
#    or
# redo install

BINDIR=/usr/local/bin

which redo-ifchange 1>/dev/null
[ $? -ne 0 ] || redo-ifchange redo

[ ! -e $BINDIR/redo ] || sudo rm -f $BINDIR/redo
[ ! -e $BINDIR/redo-ifcreate ] || sudo rm -f $BINDIR/redo-ifcreate
[ ! -e $BINDIR/redo-ifchange ] || sudo rm -f $BINDIR/redo-ifchange

sudo install redo $BINDIR
sudo ln -sf $BINDIR/redo{,-ifchange}
sudo ln -sf $BINDIR/redo{,-ifcreate}
