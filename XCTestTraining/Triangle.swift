//
//  Triangle.swift
//  XCTestTraining
//
//  Created by Fadhil Ikhsanta on 07/12/22.
//

import Foundation

enum TriangleType: String {
    case samaKaki = "sama kaki"
    case samaSisi = "sama sisi"
    case sikuSiku = "siku-siku"
    case sembarang
}

enum TriangleError: Error {
    case invalidInput
    case invalidTriangle
}

struct Triangle {
    
    let sideA: Int
    let sideB: Int
    let sideC: Int
    
    init(sideA: Int, sideB: Int, sideC: Int) {
        self.sideA = sideA
        self.sideB = sideB
        self.sideC = sideC
    }
    
    func getType() throws -> TriangleType {
        
        if (
            sideA < 0 ||
            sideB < 0 ||
            sideC < 0
        ) {
            throw TriangleError.invalidInput
        }
        else if (
            sideA + sideB == sideC ||
            sideB + sideC == sideA ||
            sideC + sideA == sideB
        ) {
            throw TriangleError.invalidTriangle
        }
        
        
        if (
            sideA == sideB &&
            sideB == sideC
        ) {
            return TriangleType.samaSisi
        }
        else if (
            sideA == sideB ||
            sideC == sideA  ||
            sideC == sideB
        ) {
            return TriangleType.samaKaki
        } else if Double((sideA * sideA + sideB * sideB)).squareRoot() == Double(sideC) {
            return TriangleType.sikuSiku
        } else {
            return TriangleType.sembarang
        }
        
    }
    
}
