xquery version "3.1";

module namespace test = "http://basex.org/modules/xqunit-tests";

import module namespace stats = "http://bibfram.es/xq/simple-stats/" 
  at "../src/basic-functions.xqm";
  
(:~  
:  Test the result of stats:mean#1 with a sequence of numbers. 
:)
declare %unit:test function test:mean-1() {
  unit:assert-equals(
    stats:mean((1, 2, 3, 4, 5.5)), 3.1
  )
};

(:~  
:  Test the result of stats:mean#2 with a sequence of numbers and decimal
:  formatting. 
:)
declare %unit:test function test:mean-2() {
  unit:assert-equals(
    stats:mean((1, 2, 3.14159, 4, 5.5), 2), 3.13
  )
};
 
(:~  
:  Test the result of stats:fact() with 0 as input. 
:)
declare %unit:test function test:factorial-0() {
  unit:assert-equals(
    stats:fact(0), 1
  )
};

(:~  
:  Test the result of stats:fact() with 20 as input. 
:)
declare %unit:test function test:factorial-20() {
  unit:assert-equals(
    stats:fact(20), 2432902008176640000
  )
};

(:~  
:  Test the result of stats:fact() with 100 as input. 
:)
declare %unit:test function test:factorial-100() {
  unit:assert-equals(
    stats:fact(100), 9.33262154439441E157
  )
};

(:~  
:  Test the result of stats:format for decimal formatting. 
:)
declare %unit:test function test:format-decimal() {
  unit:assert-equals(
    stats:format-decimal(3.14159, 4), 3.1416
  )
};