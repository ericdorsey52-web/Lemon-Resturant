//
//  ForEach.swift
//  Lemon Resturant
//
//  Created by Eric Dorsey on 9/26/26.
//

/*
 ------FOREACH-------
 METHOD AVAILABLE ON ANY SEQUMES OM Swift(rangers, strings and arrays).
 it lets you run a block of code once for every element in the sequence.
 It works similarly to a for-in loop, but uses a closure instead of a loop syntax
 
 --Syntax --
 
 sequence.foreach {element in
    //Do something with element
 }
 
 */


import Playgrounds

#Playground {
    print("----- ForEach -----")
    print("\n-- foreach with a range")
    (1...13).forEach { number in
        print(number)
    }
    
    // MArk
    print("\n-- foreach with string --")
    "Swift".forEach { character in
    }
    
    //Mark
    print("\n-- foreach with an array --")
    var  students: [String] = ["A", "B", "C", "D"]
    students.forEach { student in
        print(student)
    }
    print(students)

}
