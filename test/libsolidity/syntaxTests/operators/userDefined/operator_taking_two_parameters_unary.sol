type Int is int128;
using {
    bitnot as ~
} for Int;

function bitnot(Int, Int) pure returns (Int) {
    return Int.wrap(13);
}

contract C {
    function test() public pure {
        ~Int.wrap(1);
    }
}

// ----
// TypeError 1884: (71-81): Wrong parameters in operator definition. The function "bitnot" needs to have exactly one parameter of type Int to be used for the operator ~.
// TypeError 4907: (186-198): Built-in unary operator ~ cannot be applied to type Int. No matching user-defined operator found.
