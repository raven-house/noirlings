/ pedersen_commitment.nr
//
// A Pedersen commitment allows you to commit to a value while keeping it hidden,
// with the ability to reveal it later. It has important properties:
// - Hiding: The commitment doesn't reveal the committed value
// - Binding: Once committed, you cannot change the value
// - Homomorphic: Commitments can be combined (added) together
//
// In this exercise, you will:
// 1. Create basic Pedersen commitments
// 2. Verify their properties
// 3. Learn how the blinding factor works


// I AM NOT DONE


fn create_commitment(value: Field, blinding_factor: Field) -> std::embedded_curve_ops::EmbeddedCurvePoint {
    // TODO: Implement this function using the Noir standard library
    // HINT: Use std::hash::pedersen_commitment([value, blinding_factor]);
    
    // Replace this with your implementation
    std::embedded_curve_ops::EmbeddedCurvePoint::identity()
}

// This function demonstrates that two different values produce different commitments (binding property)
fn test_binding_property(
    value1: Field, 
    value2: Field, 
    blinding1: Field, 
    blinding2: Field
) -> bool {
    // TODO: Implement this function to show that commitments to different values are different
    
    // Replace this with your implementation
    false
}

// This function demonstrates the homomorphic property of Pedersen commitments
fn test_homomorphic_property(
    value1: Field,
    value2: Field,
    blinding1: Field,
    blinding2: Field
) -> bool {
    // TODO: Implement this function to demonstrate that:
    // commitment(value1 + value2, blinding1 + blinding2) = commitment(value1, blinding1) + commitment(value2, blinding2)
    
    // Replace this with your implementation
    false
}

// The main function that will be tested
fn main(
    value: Field, 
    blinding_factor: Field,
    expected_commitment_x: Field,
    expected_commitment_y: Field
) -> bool {
    // Create a commitment
    let commitment = create_commitment(value, blinding_factor);
    
    // Verify the commitment matches the expected commitment
    let correct_commitment = 
        commitment.x == expected_commitment_x && 
        commitment.y == expected_commitment_y;
    
    // Test the binding property with a different value
    let different_value = value + 1;
    let binding_works = test_binding_property(value, different_value, blinding_factor, blinding_factor);
    
    // Test the homomorphic property
    let value1 = value;
    let value2 = 42;
    let blinding1 = blinding_factor;
    let blinding2 = 123;
    let homomorphic_works = test_homomorphic_property(value1, value2, blinding1, blinding2);
    
    // Return true only if all tests pass
    correct_commitment && binding_works && homomorphic_works
}

#[test]
fn test_pedersen_commitment() {
    // Test vector
    let value = 42;
    let blinding_factor = 123;
    
    // This expected commitment would need to be replaced with actual computed values
    let commitment = std::hash::pedersen_commitment([value, blinding_factor]);
    let expected_x = commitment.x;
    let expected_y = commitment.y;
    
    assert(main(value, blinding_factor, expected_x, expected_y));
}
