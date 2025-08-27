// The goal is to modify the main function to create a closure that captures the inputs 'x' and 'y', 
// and a local variable 'threshold' set to 100. The closure takes no parameters and returns a Field 
// based on conditional logic: if x + y is greater than threshold, return x + y; otherwise, return x. 
// Pass this closure to the provided higher-order function 'foo', which is generic over the closure's 
// environment, and return the result. Note: Fields cannot be directly compared, so cast to a uint 
// type (e.g., u64) for the comparison.

// I AM NOT DONE
fn foo<Env>(f: fn[Env]() -> Field) -> Field {
    f()
}

fn main(x : Field, y : pub Field) -> pub Field {
    let threshold = 100;
    // TODO: Create a closure that captures x, y, and threshold, returning x + y if (x + y) > threshold else x
    
    // DO NOT MODIFY BELOW THIS LINE
    foo(decide)
}

////////////////////
//     TESTS      //
////////////////////
#[test]
// Do not modify this function
fn test_main() {
    assert(main(50, 60) == 110);  // x=50, y=60, 50+60=110 > 100 -> return 110
    assert(main(30, 20) == 30);   // x=30, y=20, 30+20=50 <= 100 -> return 30
    assert(main(100, 50) == 150); // x=100, y=50, 100+50=150 > 100 -> return 150
}
