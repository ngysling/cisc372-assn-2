
image:image.c image.h
	gcc -g image.c -o image -lm
clean:
	rm -f image output.png

omp: image-omp.c image.h
	gcc -fopenmp -o image-omp image-omp.c -lm
threads: image-threaded.c image.h
	gcc -lpthread -o image-threaded image-threaded.c -lm
