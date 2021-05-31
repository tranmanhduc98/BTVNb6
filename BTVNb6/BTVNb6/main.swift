//
//  main.swift
//  BTVNb6
//
//  Created by Trần Thanh Nguyên on 31/05/2021.
//

import Foundation
 

/*1. Chèn phần tử có giá trị X vào phía sau phần tử có giá trị lớn nhất trong mảng.

2. Chèn phần tử có giá trị X vào mảng sao cho mảng vẫn có thứ tự tăng dần.

3. Cho số nguyên n. Kiểm tra n có phải là số nguyên tố hay không?

4. Đếm số nguyên tố trong đoạn [a, b].
*/

func inputArr() -> [Int]
{
    print("Nhap so phan tu trong mang :")
    var  number = Int(readLine()!)!
    var numberArr : [Int] = []
    for i in 1...number
    {
        print("Nhap phan tu thứ \(i): ")
       var  n1 = Int(readLine()!)!
        numberArr.append(n1)
    }
    return numberArr
}
func inputX() -> Int
{
    print("nhập phần tử X:")
    let X = Int(readLine()!)!
    return X
}
func timMax( x : [Int] ) -> Int
{
    
    var max : Int = x[0]
    for i in x //a cũng dc
    {
        if  i > max
        {
            max = i
        
        }
  }
    return max
}
func timVTMAX(m : Int , x : [Int]) -> Int
{
    var b : Int = 0
   
    for i in x {
        if i == m
        {
            return b
        }
        b += 1
    }
    return b
}

//var a : [Int] = inputArr()
//var b : Int = inputX()
//var max : Int = timMax(x: a)
//var vt : Int = timVTMAX(m: max, x: a)
//a.insert(b, at: vt + 1)
//print(a)
//MARK: - 3
//Cho số nguyên n. Kiểm tra n có phải là số nguyên tố hay không?
 func inputN() -> Int
 {
    print("nhập số N")
    var N = Int(readLine()!)!
    return N
 }
func ktNT(n : Int) ->Int
{
     
    var count : Int = 0
    if n < 2 {
       
        count = count + 1
        return count
    }
    if n == 2 || n == 3
    {
        
        return count
    }
    else
    {
        
        var b : Int = Int(sqrtf(Float(n)))
        for i in 2...b
        {
            if n % i == 0
            {
                count += 1
            }
        }
    }
    return count
}
var a3 = inputN()
var b3 = ktNT(n : a3 )
if b3 == 0
{
    print("\(a3) là  so nguyen to")
}
else
{
    print("\(a3) ko phải so nguyen to")
}
//MARK: -4
//4. Đếm số nguyên tố trong đoạn [a, b].

func inputArrdau() ->  Int
{
    print("nhập số đầu : ")
    var sd = Int(readLine()!)!
    return sd
}
func inputArrcuoi() ->  Int
{
    print("nhập số cuoi : ")
    var sc = Int(readLine()!)!
    return sc
}


func countSNT(sd : Int , sc : Int ) -> Int
{
    var dem = 0
    for i in sd...sc
    {
        var count = ktNT(n: i)
        if count == 0
        {
           dem += 1
            
        }
    }
    return dem
}
var sd1 : Int = inputArrdau()
var sc1 : Int = inputArrcuoi()
var dem1 : Int  = countSNT(sd: sd1, sc: sc1)
print("so nguyen to co trong mảng \(sd1) đên \(sc1) là \(dem1)")
//MARK: - 2
//2. Chèn phần tử có giá trị X vào mảng sao cho mảng vẫn có thứ tự tăng dần.
