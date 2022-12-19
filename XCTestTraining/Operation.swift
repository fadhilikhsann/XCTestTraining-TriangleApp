//
//  Operation.swift
//  XCTestTraining
//
//  Created by Fadhil Ikhsanta on 06/12/22.
//

import Foundation

enum SomeError: Error {
    case FifthError
    case FirstError
}

struct Operationn {
    init(){
        
    }
    func multiplyValue(firstInput a: Int, secondInput b: Int) -> Int {
        return a * b
    }
    
    func funcThatThrow(forInput a: Int) throws {
        if (a == 5) {
            throw SomeError.FifthError
        }
    }
}
