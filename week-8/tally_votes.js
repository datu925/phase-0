// Tally Votes in JavaScript Pairing Challenge.

// I worked on this challenge with:
// This challenge took me [#] hours.

// These are the votes cast by each student. Do not alter these objects here.
var votes = {
  "Alex": { president: "Bob", vicePresident: "Devin", secretary: "Gail", treasurer: "Kerry" },
  "Bob": { president: "Mary", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Cindy": { president: "Cindy", vicePresident: "Hermann", secretary: "Bob", treasurer: "Bob" },
  "Devin": { president: "Louise", vicePresident: "John", secretary: "Bob", treasurer: "Fred" },
  "Ernest": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Fred": { president: "Louise", vicePresident: "Alex", secretary: "Ivy", treasurer: "Ivy" },
  "Gail": { president: "Fred", vicePresident: "Alex", secretary: "Ivy", treasurer: "Bob" },
  "Hermann": { president: "Ivy", vicePresident: "Kerry", secretary: "Fred", treasurer: "Ivy" },
  "Ivy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Gail" },
  "John": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Kerry" },
  "Kerry": { president: "Fred", vicePresident: "Mary", secretary: "Fred", treasurer: "Ivy" },
  "Louise": { president: "Nate", vicePresident: "Alex", secretary: "Mary", treasurer: "Ivy" },
  "Mary": { president: "Louise", vicePresident: "Oscar", secretary: "Nate", treasurer: "Ivy" },
  "Nate": { president: "Oscar", vicePresident: "Hermann", secretary: "Fred", treasurer: "Tracy" },
  "Oscar": { president: "Paulina", vicePresident: "Nate", secretary: "Fred", treasurer: "Ivy" },
  "Paulina": { president: "Louise", vicePresident: "Bob", secretary: "Devin", treasurer: "Ivy" },
  "Quintin": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Bob" },
  "Romanda": { president: "Louise", vicePresident: "Steve", secretary: "Fred", treasurer: "Ivy" },
  "Steve": { president: "Tracy", vicePresident: "Kerry", secretary: "Oscar", treasurer: "Xavier" },
  "Tracy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Ullyses": { president: "Louise", vicePresident: "Hermann", secretary: "Ivy", treasurer: "Bob" },
  "Valorie": { president: "Wesley", vicePresident: "Bob", secretary: "Alex", treasurer: "Ivy" },
  "Wesley": { president: "Bob", vicePresident: "Yvonne", secretary: "Valorie", treasurer: "Ivy" },
  "Xavier": { president: "Steve", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Yvonne": { president: "Bob", vicePresident: "Zane", secretary: "Fred", treasurer: "Hermann" },
  "Zane": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Mary" }
}

// Tally the votes in voteCount.
var voteCount = {
  president: {},
  vicePresident: {},
  secretary: {},
  treasurer: {}
}

/* The name of each student receiving a vote for an office should become a property
of the respective office in voteCount.  After Alex's votes have been tallied,
voteCount would be ...
  var voteCount = {
    president: { Bob: 1 },
    vicePresident: { Devin: 1 },
    secretary: { Gail: 1 },
    treasurer: { Kerry: 1 }
  }
*/


/* Once the votes have been tallied, assign each officer position the name of the
student who received the most votes. */
var officers = {
  president: undefined,
  vicePresident: undefined,
  secretary: undefined,
  treasurer: undefined
}

// Pseudocode

/*
LOOP through voters. For each voter,
  LOOP through positions. For each position,
    Add a tally to the candidate they voted for in that race (starting at 0 if
    it doesn't already exist)

LOOP through positions. For each position,
  LOOP throught the tallied votes for that position. Return the person who has the most.

*/

// __________________________________________
// Initial Solution

// for(var key in votes) {
//   // console.log(votes[key]['president']);

//   if (votes[key]['president'] in voteCount['president']) {
//     voteCount['president'][votes[key]['president']] += 1;
//   } else {
//     voteCount['president'][votes[key]['president']] = 1;
//   };
//   if (votes[key]['vicePresident'] in voteCount['vicePresident']) {
//     voteCount['vicePresident'][votes[key]['vicePresident']] += 1;
//   } else {
//     voteCount['vicePresident'][votes[key]['vicePresident']] = 1;
//   };

//   if (votes[key]['secretary'] in voteCount['secretary']) {
//     voteCount['secretary'][votes[key]['secretary']] += 1;
//   } else {
//     voteCount['secretary'][votes[key]['secretary']] = 1;
//   };

//   if (votes[key]['treasurer'] in voteCount['treasurer']) {
//     voteCount['treasurer'][votes[key]['treasurer']] += 1;
//   } else {
//     voteCount['treasurer'][votes[key]['treasurer']] = 1;
//   };
// }

// function findMax(obj) {
//   var counter = 0;
//   var maxKey = '';
//   for(var key in obj) {

//     if (obj[key] > counter){
//       maxKey = key;
//       counter = obj[key];
//     };
//   }
//   return maxKey;
// };

// officers['president'] = findMax(voteCount['president']);
// officers['vicePresident'] = findMax(voteCount['vicePresident']);
// officers['secretary'] = findMax(voteCount['secretary']);
// officers['treasurer'] = findMax(voteCount['treasurer']);





// __________________________________________
// Refactored Solution


for(var voter in votes) {
  for(var position in votes[voter]) {
    var candidate = votes[voter][position];
    var positionBallot = voteCount[position];
      positionBallot[candidate] = (positionBallot[candidate] || 0) + 1;
  };
}

function findMax(obj) {
  var currentMax = 0;
  var maxKey = '';
  for(var key in obj) {
    if (obj[key] > currentMax){
      maxKey = key;
      currentMax = obj[key];
    };
  }
  return maxKey;
};

for(var position in officers) {
  officers[position] = findMax(voteCount[position]);
}


// __________________________________________
// Reflection

/*

What did you learn about iterating over nested objects in JavaScript?

Each layer of nesting requires an additional bracket, which could get unwieldy
and is a good argument for not letting your structures get too nested. Otherwise,
the process is pretty similar to iterating through normal objects.

Were you able to find useful methods to help you with this?

Not really, though I do appreciate the for... in... structure, which I didn't
realize was an option. Much more intuitive than having to use counter or dummy
variables to get through a loop.

What concepts were solidified in the process of working through this challenge?

I thought we did some nice variable-renaming and our code got much prettier in the
refactoring stage. I miss some of Ruby's wonderful built-in methods - JS seems to
involve a lot more do-it-yourself.

*/

// __________________________________________
// Test Code:  Do not alter code below this line.


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

assert(
  (voteCount.president["Bob"] === 3),
  "Bob should receive three votes for President.",
  "1. "
)

assert(
  (voteCount.vicePresident["Bob"] === 2),
  "Bob should receive two votes for Vice President.",
  "2. "
)

assert(
  (voteCount.secretary["Bob"] === 2),
  "Bob should receive two votes for Secretary.",
  "3. "
)

assert(
  (voteCount.treasurer["Bob"] === 4),
  "Bob should receive four votes for Treasurer.",
  "4. "
)

assert(
  (officers.president === "Louise"),
  "Louise should be elected President.",
  "5. "
)

assert(
  (officers.vicePresident === "Hermann"),
  "Hermann should be elected Vice President.",
  "6. "
)

assert(
  (officers.secretary === "Fred"),
  "Fred should be elected Secretary.",
  "7. "
)

assert(
  (officers.treasurer === "Ivy"),
  "Ivy should be elected Treasurer.",
  "8. "
)