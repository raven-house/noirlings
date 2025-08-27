// The goal is to modify the main function to create a closure that captures the input 'x' and 
// takes a single parameter 'z'. The closure should return the product of 'x' and 'z' as a Field. 
// Pass this closure to the provided higher-order function 'foo', which is generic over the 
// closure's environment and takes a closure with one Field parameter, along with a value for 'z' 
// set to 2, and return the result.

// I AM NOT DONE
fn foo<Env>(f: fn[Env](Field) -> Field, z: Field) -> Field {
    f(z)
}

fn main(x : Field) -> pub Field {
    // ToDO: Create a closure that captures x and takes z, returning x * z
    
    foo(multiply, 2)
}

////////////////////
//     TESTS      //
////////////////////
#[test]
// Do not modify this function
fn test_main() {
    assert(main(5) == 10);   // x=5, z=2 -> 5 * 2 = 10
    assert(main(10) == 20);  // x=10, z=2 -> 10 * 2 = 20
    assert(main(0) == 0);    // x=0, z=2 -> 0 * 2 = 0
}
