//
//  main.swift
//  Closures
//
//  Created by Adwait Barkale on 24/08/20.
//  Copyright © 2020 Adwait Barkale. All rights reserved.
//
//MARK: - Convert function to closure
//Remove func and func name put a open { and put in keyword before def to convert functio into closure. Parameter datatypes as well as return type can be removed from closures.
func calculate(no:Int,no1:Int,operation: (Int,Int) -> Int) -> Int
{
    return operation(no,no1)
}
func add(no1:Int,no2:Int) -> Int{return no1 + no2}
print(calculate(no: 5, no1: 2, operation: add))
print(calculate(no: 5, no1: 2, operation: { (no1,no2) in
     no1 * no2
}))
//parameter 2 can be replaced with { $0 * $1} without a comma

//Closure shortcuts to add array no with 1
let array = [1,2,3,4,5]
//Functions
func addOne(no:Int) -> Int
{
    return no + 1
}
print(array.map(addOne))
//Closures
print(array.map{$0 + 1})
//Convert array to string
//function
func convertIntoToString(no:Int) ->String
{return "\(no)"}
var strArr:[String] = []
strArr = array.map(convertIntoToString(no:))
print("String using Function = \(strArr)")
//Closure
let newArr = array.map{ "\($0)" }
print("String Using Closure = \(newArr)")

