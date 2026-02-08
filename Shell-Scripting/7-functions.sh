#!/bin/bash

# add
add() {
    echo "Sum is: $(($1 + $2))"
}

multiply() {
    echo "Mul is: $(($1 * $2))"
}

# add 10 20
# multiply 10 20

greet(){
    if [[ $# -gt 0 ]]; then
        for name in "$@"; do
            echo "Hello $name"
        done
    else
        echo "Byee"
    fi
}
greet $@

