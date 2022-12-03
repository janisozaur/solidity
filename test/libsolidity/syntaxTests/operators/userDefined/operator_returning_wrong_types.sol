type Int is int256;

using {
    add as +,
    div as /,
    unsub as -,
    bitnot as ~,
    gt as >,
    lt as <
} for Int;

function add(Int x, Int y) pure returns (int256) {
    return 0;
}

function div(Int x, Int y) pure {
    x = y;
}

function unsub(Int) pure returns (Int, Int) {
    return (Int.wrap(0), Int.wrap(1));
}

function bitnot(Int) pure returns (int256) {
    return 0;
}

function gt(Int, Int) pure returns (Int) {
    return Int.wrap(0);
}

function lt(Int, Int) pure returns (bool, Int) {
    return (true, Int.wrap(1));
}

function f() pure {
    Int.wrap(0) + Int.wrap(1);
    Int.wrap(0) / Int.wrap(0);
    -Int.wrap(0);
    ~Int.wrap(0);
    Int.wrap(0) < Int.wrap(0);
    Int.wrap(0) > Int.wrap(0);
}

// ----
// TypeError 7743: (167-175): Wrong return parameters in operator definition. The function "add" needs to return exactly one value of type Int to be used for the operator +.
// TypeError 7743: (227-227): Wrong return parameters in operator definition. The function "div" needs to return exactly one value of type Int to be used for the operator /.
// TypeError 7743: (276-286): Wrong return parameters in operator definition. The function "unsub" needs to return exactly one value of type Int to be used for the operator -.
// TypeError 7743: (365-373): Wrong return parameters in operator definition. The function "bitnot" needs to return exactly one value of type Int to be used for the operator ~.
// TypeError 7743: (428-433): Wrong return parameters in operator definition. The function "gt" needs to return exactly one value of type bool to be used for the operator >.
// TypeError 7743: (498-509): Wrong return parameters in operator definition. The function "lt" needs to return exactly one value of type bool to be used for the operator <.
