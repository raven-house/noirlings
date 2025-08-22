# Embedded Curves in Noir


## What are Embedded Curves?

In cryptography, an elliptic curve is a mathematical structure(y^2 = x^3 + ax + b) that provides a way to do complex cryptographic operations efficiently. These curves are used in cryptographic protocols like digital signatures and key exchanges.

To learn more about **Elliptic Curve**, go through [Ellipitic Curve Point Addition](https://www.rareskills.io/post/elliptic-curve-addition]) RareSkills Tutorial.

An **embedded curve** in Noir refers to an elliptic curve that lives within the context of another cryptographic system. The term "embedded" indicates that one curve is mathematically embedded within another. This concept is particularly important in zero-knowledge proof systems, where Noir operates.

Think of it this way:
- The "outer" curve is the one used by the proving system (like BN254 or BLS12-381)
- The "embedded" curve lives inside the scalar field of the outer curve

This setup allows for efficient implementations of cryptographic operations like digital signatures and encryption within zero-knowledge proofs.

## Key Concepts

1. **Elliptic Curve Point**: A point on an elliptic curve, typically represented by x and y coordinates, plus a flag indicating if it's the "point at infinity" (a special point that serves as the identity element in the group).

2. **Scalar Multiplication**: The operation of adding a point to itself multiple times, which is a fundamental operation in elliptic curve cryptography.

3. **Point Addition**: The operation of combining two points on an elliptic curve to get a third point.

4. **Generator**: A special point on the curve that can generate all other points through scalar multiplication.

5. **Multi-Scalar Multiplication (MSM)**: An optimized way to compute the sum of multiple scalar multiplications, which is a common operation in cryptographic protocols.


## Concept of Scalar Field

Every elliptic curve used in cryptography involves two important fields:

**Base Field**: This is the field where the x and y coordinates of points on the curve live. When we say a point (x,y) is on the curve, both x and y are elements of this base field.
**Scalar Field**: This is the field where scalar multipliers live. When we do operations like "multiply point P by scalar k" (written as k·P), the scalar k comes from this field. The size of this scalar field is related to the number of points on the curve.


Suppose we have two curves, A "host" curve(Curve H) and An "embedded" curve(Curve E)
When we say Curve E is "embedded" in Curve H, we mean: **The scalar field of Curve H is used as the base field of Curve E**.

**Example with BN254 and Grumpkin**

A concrete example is the BN254 curve (often used in Ethereum and other blockchain systems) and the Grumpkin curve:

BN254 is the "host" curve, with its own base field and scalar field
Grumpkin is designed specifically to be "embedded" within BN254's scalar field
This allows efficient implementation of certain cryptographic protocols within zero-knowledge proofs based on BN254
