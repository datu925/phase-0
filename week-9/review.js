/*

Create a new list
Add an item with a quantity to the list
Remove an item from the list
Update quantities for items in your list
Print the list (Consider how to make it look nice!)

PSEUDOCODE

-Create a new list
INPUT - list below
Initialize grocery list with:
  an owner name
  some number of items and their quantity

-Add an item with a quantity to the list
INPUT - item name, quantity
IF item already in list
  Tell user you already have it in the list and they should update it instead
ELSE
  Add grocery item to the list of items with given quantity

-Remove an item from the list
INPUT - item name
IF item not in list
  Tell user the item isn't in the list already
ELSE
  Remove the item from the list of items

-Update quantities for items in your list
INPUT - item name, quantity
IF item not in list
  Tell user the item isn't in the list already and they should add it instead
ELSE
  Update existing grocery item with new quantity
OUTPUT - none

-print the list
INPUT - none (just use existing list)
Print owner name
FOR each item in items list
  Print item name and quantity

*/

// INITIAL SOLUTION

// function GroceryList(owner, items) {

//   this.owner = owner;
//   this.items = items;

//   this.add = function(item, quantity) {
//     if (this.items[item] == undefined) {
//       items[item] = quantity;
//     } else {
//       console.log(item + " is already in the grocery list! Use update instead.")
//     }
//   }

//   this.remove = function(item) {
//     if (this.items[item] == undefined) {
//       console.log(item + " is not in grocery list; cannot remove.")
//     } else {
//       delete this.items[item];
//     }
//   }

//   this.update = function(item, quantity) {
//     if (this.items[item] == undefined) {
//       console.log(item + " is not in grocery list; please add it first.")
//     } else {
//       this.items[item] = quantity;
//     }
//   }

//   this.print = function() {
//     console.log(this.owner + "'s list");
//     console.log("====================");
//     for (var item in this.items) {
//       console.log(item + ": " + this.items[item]);
//     }
//     console.log("\n")
//   }


// }

// REFACTORED SOLUTION

function GroceryList(owner, items) {

  this.owner = owner || "N/A";
  this.items = items || {};

  this.add = function(item, quantity) {
    if (this.items[item] == undefined) {
      items[item] = quantity;
    } else {
      console.log(item + " is already in the grocery list! Use update instead.")
    }
  }

  this.remove = function(item) {
    if (this.items[item] == undefined) {
      console.log(item + " is not in grocery list; cannot remove.")
    } else {
      delete this.items[item];
    }
  }

  this.update = function(item, quantity) {
    if (this.items[item] == undefined) {
      console.log(item + " is not in grocery list; please add it first.")
    } else {
      this.items[item] = quantity;
    }
  }

  this.print = function() {
    console.log("\n");
    console.log("====================");
    console.log(this.owner + "'s list");
    console.log("====================");
    for (var item in this.items) {
      console.log(item + ": " + this.items[item]);
    }
    console.log("\n");
  }


}



// DRIVER CODE

var my_grocery_list = new GroceryList("Dan", {
                                    tomatoes:1,
                                    rutabegas:2})

my_grocery_list.print();
my_grocery_list.add("peppers",15);
my_grocery_list.add("peppers",10);
my_grocery_list.remove("tomatoes");
my_grocery_list.update("rutabegas",4);
my_grocery_list.print();

/*

What concepts did you solidify in working on this challenge? (reviewing the passing of information, objects, constructors, etc.)

The constructors was relatively new - I hadn't practiced that as much previously.

What was the most difficult part of this challenge?

Things mostly made sense, except I could figure out for my initial solution a) how to get the length of the items object - you can't just do .length like in Ruby, and b) how to do more interesting/clever print formatting.

Did an array or object make more sense to use and why?

An object makes more sense, since referencing the food item by name frequently what is needed for the different methods. So an array would require a lot of searching; a object is intuitive and fast.

*/