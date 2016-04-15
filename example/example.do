DEPS="bar.o foo.o quux/baz.o"
redo-ifchange $DEPS
gcc -o $3 $DEPS
