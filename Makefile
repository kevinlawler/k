O=-Wall -Wno-unused-function -Wno-char-subscripts -nostdlib -static\
	-ffreestanding -fno-builtin -fno-unwind-tables -fno-asynchronous-unwind-tables -fno-unroll-loops -ferror-limit=3\
	k.c
t:b #test
	@./t.sh
b: #build
	@clang $(O) -O3 -o k
	@strip -R .comment -R '.note*' k
	@stat -c 'size:%s' k
