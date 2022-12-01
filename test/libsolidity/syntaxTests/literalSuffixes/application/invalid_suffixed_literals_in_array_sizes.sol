function uintSuffix(uint x) pure returns (uint) {}
function int8Suffix(uint x) pure returns (int8) {}
function addressSuffix(uint x) pure returns (address) {}
function decimalSuffix(uint m, uint e) pure returns (uint) {}
function stringSuffix(uint x) pure returns (string memory) {}
function bytesSuffix(uint x) pure returns (bytes memory) {}

contract C {
    uint[42 uintSuffix] a;
    uint[42 int8Suffix] b;
    uint[42 addressSuffix] c;
    uint[42 decimalSuffix] d;
    uint[42 stringSuffix] e;
    uint[42 bytesSuffix] f;
}

contract D {
    uint[uintSuffix(42)] a;
    uint[int8Suffix(42)] b;
    uint[addressSuffix(42)] c;
    uint[decimalSuffix(42)] d;
    uint[stringSuffix(42)] e;
    uint[bytesSuffix(42)] f;
}
// ----
// TypeError 4127: (366-379): Array length cannot contain a suffix function.
// TypeError 4127: (393-406): Array length cannot contain a suffix function.
// TypeError 4127: (420-436): Array length cannot contain a suffix function.
// TypeError 4127: (450-466): Array length cannot contain a suffix function.
// TypeError 4127: (480-495): Array length cannot contain a suffix function.
// TypeError 4127: (509-523): Array length cannot contain a suffix function.
// TypeError 5462: (553-567): Invalid array length, expected integer literal or constant expression.
// TypeError 5462: (581-595): Invalid array length, expected integer literal or constant expression.
// TypeError 5462: (609-626): Invalid array length, expected integer literal or constant expression.
// TypeError 5462: (640-657): Invalid array length, expected integer literal or constant expression.
// TypeError 5462: (671-687): Invalid array length, expected integer literal or constant expression.
// TypeError 5462: (701-716): Invalid array length, expected integer literal or constant expression.
