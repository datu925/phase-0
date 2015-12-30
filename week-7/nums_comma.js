/*
#// Separate Numbers with Commas in JavaScript **Pairing Challenge**


#// I worked on this challenge with Dan/Sabri.

#// Pseudocode
#Input: Integer
#Output: Comma-seperated String
#Steps:
#Reverse Integer
#Iterate and add a comma every three characters
#Return comma seperated value as a String
*/


// Initial Solution

// function separateComma(number) {

//   number = String(number);
//   number = number.split("");
//   number = number.reverse();

//   var new_num = [];

//   for (var i = 0; i < number.length; i++) {

//     new_num.push(number[i]);
//     if (i % 3 == 2 && i != number.length - 1) {
//       new_num.push(",");
//     }

//   }

//   new_num = new_num.reverse();
//   new_num = new_num.join("");



//   return new_num;

//   }

// console.log(separateComma(1569743))

// Refactored Solution

function separateComma(number) {

  number = String(number).split("").reverse();

  var new_num = [];

  for (var i = 0; i < number.length; i++) {

    new_num.push(number[i]);
    if (i % 3 == 2 && i != number.length - 1) {
      new_num.push(",");
    }

  }

  new_num = new_num.reverse().join("");



  return new_num;

  }

var example = separateComma(10000);
var example2 = separateComma(200);

// Your Own Tests (OPTIONAL)

function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

assert(
  (typeof example === "string"),
  "The value of test should be a String.",
  "1. "
)

assert(
  (example != ""),
  "The value of example shouldn't be empty.",
  "2. "
)

assert(
  (example == "10,000"),
  "The value should be 10,000",
  "3. "
)

assert(
  (example2 == "200"),
  "The value should be 200",
  "4. "
)


// Reflection

/*
What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?

We discussed an alternative algorithm that would have been different from our ruby
solutions, but when the dust cleared, it felt like the code we already used was
more transparent in some respects. So we kept it. For the most part, the
implementation didn't seem to depend on the languages.

What did you learn about iterating over arrays in JavaScript?

Methods like ForEach do exist, but it's easier in many cases just to use a for loop.

What was different about solving this problem in JavaScript?

We had to do a bit more magic to split and join strings, and we struggled a bit more
with the syntax. We also forgot the var keyword once or twice when declaring
variables. But for the most part, it was simple.

What built-in methods did you find to incorporate in your refactored solution?

We used split, join, and reverse.

*/