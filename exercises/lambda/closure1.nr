// The goal is to modify the main function to create a closure that captures two local variables, 
// 'base' and 'multiplier', defined within main, and the input 'x'. The closure should return the 
// result of base + (x * multiplier) as a Field. Pass this closure to the provided higher-order 
// function 'foo', which is generic over the closure's environment, and return the result.

// I AM NOT DONE

fn foo<Env>(f: fn[Env]() -> Field) -> Field {
    f()
}

fn main(x : Field) -> pub Field {
    // TODO: Create a closure that captures base, multiplier, and x, returning base + (x * multiplier)
    // let calc = ???
    // DO NOT MODIFY BELOW THIS LINE
    foo(calc)
}

////////////////////
//     TESTS      //
////////////////////
#[test]
// Do not modify this function
fn test_main() {
    assert(main(5) == 25);  // base=10, multiplier=3, x=5 -> 10 + (5 * 3) = 25
    assert(main(10) == 40); // base=10, multiplier=3, x=10 -> 10 + (10 * 3) = 40
    assert(main(0) == 10);  // base=10, multiplier=3, x=0 -> 10 + (0 * 3) = 10
}