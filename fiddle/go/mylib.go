package main
import "C"

// apparently a dummy main is required for the compiler to work: https://github.com/golang/go/issues/10978
func main() {

}

//export add
func add(a int, b int) int {
  return a + b
}
