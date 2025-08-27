// The goal is to modify the main function to use a lambda that takes two Field arguments, "x" and "y",
// and returns their sum as a Field. Use a lambda with a block to declare local variables for the
// calculation, then call the lambda with the input arguments and return the result.

// I AM NOT DONE

fn main(x : Field, y : pub Field) -> pub Field {
    // TODO: implement the lambda function to add x and y
}

////////////////////
//     TESTS      //
////////////////////
#[test]
// Do not modify this function
fn test_main() {
    assert(main(10, 20) == 30);
    assert(main(50, 50) == 100);
    assert(main(0, 5) == 5);
}