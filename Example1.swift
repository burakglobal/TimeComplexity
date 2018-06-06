/*
 input manatees: an array of "manatees", where one manatee is represented by a dictionary
 a single manatee has properties like "name", "age", et cetera
 n = the number of elements in "manatees"
 m = the number of properties per "manatee" (i.e. the number of items in a manatee dictionary)
 */

func example1(manatees: [[String : Any]]) {
    for manatee in manatees {
        print(manatee["name"])
    }
}

func example2(manatees: [[String : Any]]) {
    print(manatees[0]["name"])
    print(manatees[0]["age"])
}

func example3(manatees: [[String : Any]]) {
    for manatee in manatees {
        for (key, value) in manatee {
            print("\(key) : \(value)")
        }
    }
}

func example4(manatees: [[String : Any]]) {
    var oldestManatee = "No manatees here!"

    for manatee1 in manatees {
        for manatee2 in manatees {
            if (manatee1["age"] as! Int) < (manatee2["age"] as! Int) {
                oldestManatee = manatee2["name"] as! String
            } else {
                oldestManatee = manatee1["name"] as! String
            }
        }
    }
    print(oldestManatee)
}


// What is the efficiency of Example 1 in Big-O notation?
// We iterate over every manatee in the manatees list with the for loop. Since we're given that manatees has n elements, our code will take approximately O(n) time to run.


// What is the efficiency of Example 2 in Big-O notation?
// We look at two specific properties of a specific manatee. We aren't iterating over anything - just doing constant-time lookups on lists and dictionaries. Thus the code will complete in constant, or O(1), time.

// What is the efficiency of Example 3 in Big-O notation?
// There are two for loops, and nested for loops are a good sign that you need to multiply two runtimes. Here, for every manatee, we check every property. If we had 4 manatees, each with 5 properties, then we would need 5+5+5+5 steps. This logic simplifies to the number of manatees times the number of properties, or O(nm).

// What is the efficiency of Example 4 in Big-O notation?
// Again we have nested for loops. This time we're iterating over the manatees list twice - every time we see a manatee, we compare it to every other manatee's age. We end up with O(nn), or O(n^2) (which is read as "n squared").



