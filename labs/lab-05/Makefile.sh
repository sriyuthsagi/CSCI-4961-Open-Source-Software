cc -c source/block.c -o block.o
ar qc block.a block.o
cc -c program.c -o program.o
cc program.o block.a -o static_block


cc -fPIC -c source/block.c -o block2.o
cc -shared -o blocklib.so block2.o
cc program.o blocklib.so -o dynamic_block -Wl,-rpath .

