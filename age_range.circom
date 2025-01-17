pragma circom 2.0.0;

template AgeRangeProof() {
    signal input age;           // Your age (private input)
    signal input minAge;        // Minimum age in the range (public input)
    signal input maxAge;        // Maximum age in the range (public input)

    // Enforce age >= minAge
    signal minCheck;
    minCheck <== age - minAge;
    assert(minCheck >= 0);

    // Enforce age <= maxAge
    signal maxCheck;
    maxCheck <== maxAge - age;
    assert(maxCheck >= 0);
}

component main = AgeRangeProof();

