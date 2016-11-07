//
//  procedures.swift
//  tp
//
//  Created by imac on 07/11/2016.
//  Copyright © 2016 mbritto. All rights reserved.
//

import Foundation

func pythagore(sideA:Double, sideB: Double) -> Double {
    return sqrt((sideA * sideA) + (sideB * sideB))
}

func demandeValeurs(checkDivideBy:Double) -> Array<Int> {
    var nbValues:Int = 0
    var value:Double = 0
    var nbValuesDivByInt:Int = 0
    repeat {
        print("Entrez une valeur (ou zéro pour arrêter) :")
        value = readDouble()
        if (value != 0) {
            nbValues += 1
            if (value.truncatingRemainder(dividingBy: checkDivideBy) == 0) {
                nbValuesDivByInt += 1
            }
        }
    } while (value != 0)
    return [nbValues, nbValuesDivByInt]
}

func multiplication(multipleLevel:Int) {
    for i in 1...multipleLevel {
        for j in 1...multipleLevel {
            print("\(i*j) ", terminator:"")
        }
        print("")
    }
}

func checkNearestNumber(nb:Int) {
    var currentInt:Int = 0
    var previousSum:Int = 0
    var currentSum:Int = 0
    let result:Int
    repeat {
        currentInt += 1
        previousSum = currentSum
        currentSum += currentInt
    } while (currentSum < nb)
    if (min((currentSum - nb), (nb - previousSum)) == (nb - previousSum)) {
        result = previousSum
    } else {
        result = currentSum
    }
    print("La somme la plus proche est \(result)")
}
