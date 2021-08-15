# some custom functions to help you work with algorithm practice

compile-and-run() {
	rm -f bin/$1.out && g++ $1 -o bin/$1.out && ./bin/$1.out < input.txt > output.txt
}

com-run() {
	rm -f bin/$1.out && g++ $1 -o bin/$1.out && ./bin/$1.out
}

compile() {
    rm -f bin/$1.out && g++ $1 -o bin/$1.out
}

run() {
       ./bin/$1.out
}
