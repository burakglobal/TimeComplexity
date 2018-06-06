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
