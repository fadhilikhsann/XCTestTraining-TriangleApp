//
//  XCTestTrainingTests.swift
//  XCTestTrainingTests
//
//  Created by Fadhil Ikhsanta on 06/12/22.
//

import XCTest
@testable import XCTestTraining



final class XCTestTrainingTests: XCTestCase {
    
    var operationn = Operationn()
    var triangle: Triangle? = nil
    var viewController: ViewController!
    
//    func testCalculate() {
//        XCTAssertEqual(15, viewController.calculate(firstInput: 5, secondInput: 10), "Failed")
//    }
//
//    func testMultiply() {
//        XCTAssertEqual(operationn.multiplyValue(firstInput: 10, secondInput: 3), 30, "Failed")
//        XCTAssertEqual(operationn.multiplyValue(firstInput: 10, secondInput: 3), 30)
//        XCTAssertEqual(operationn.multiplyValue(firstInput: 10, secondInput: 3), 30)
//        XCTAssertEqual(operationn.multiplyValue(firstInput: 10, secondInput: 3), 30)
//        XCTAssertEqual(operationn.multiplyValue(firstInput: 10, secondInput: 3), 30)
//        XCTAssertEqual(operationn.multiplyValue(firstInput: 10, secondInput: 3), 30)
//    }
//
//    func testFunctionThatThrows() {
//        XCTAssertThrowsError(try operationn.funcThatThrow(forInput: 5)) { error in
//            XCTAssertEqual(error as! SomeError, SomeError.FifthError)
//        }
//    }
    
    func testInputTriangle() {
        XCTAssertThrowsError(try Triangle(sideA: 2, sideB: 5, sideC: 7).getType()) {
            error in
            XCTAssertEqual(error as! TriangleError, TriangleError.invalidTriangle)
        }
        XCTAssertThrowsError(try Triangle(sideA: 8, sideB: 4, sideC: 4).getType()) {
            error in
            XCTAssertEqual(error as! TriangleError, TriangleError.invalidTriangle)
        }
        XCTAssertThrowsError(try Triangle(sideA: 5, sideB: 12, sideC: 7).getType()) {
            error in
            XCTAssertEqual(error as! TriangleError, TriangleError.invalidTriangle)
        }
        
        XCTAssertThrowsError(try Triangle(sideA: -2, sideB: 12, sideC: 7).getType()) {
            error in
            XCTAssertEqual(error as! TriangleError, TriangleError.invalidInput)
        }
        XCTAssertThrowsError(try Triangle(sideA: 5, sideB: -12, sideC: 7).getType()) {
            error in
            XCTAssertEqual(error as! TriangleError, TriangleError.invalidInput)
        }
        XCTAssertThrowsError(try Triangle(sideA: 5, sideB: 12, sideC: -7).getType()) {
            error in
            XCTAssertEqual(error as! TriangleError, TriangleError.invalidInput)
        }
        XCTAssertThrowsError(try Triangle(sideA: 5, sideB: -12, sideC: -7).getType()) {
            error in
            XCTAssertEqual(error as! TriangleError, TriangleError.invalidInput)
        }
        XCTAssertThrowsError(try Triangle(sideA: -5, sideB: -12, sideC: 7).getType()) {
            error in
            XCTAssertEqual(error as! TriangleError, TriangleError.invalidInput)
        }
        XCTAssertThrowsError(try Triangle(sideA: -5, sideB: 12, sideC: -7).getType()) {
            error in
            XCTAssertEqual(error as! TriangleError, TriangleError.invalidInput)
        }
        XCTAssertThrowsError(try Triangle(sideA: -5, sideB: -12, sideC: -7).getType()) {
            error in
            XCTAssertEqual(error as! TriangleError, TriangleError.invalidInput)
        }
    }
    
    func testTypeTriangle() {
        XCTAssertEqual(try Triangle(sideA: 4, sideB: 4, sideC: 10).getType(), TriangleType.samaKaki)
        XCTAssertEqual(try Triangle(sideA: 6, sideB: 4, sideC: 6).getType(), TriangleType.samaKaki)
        XCTAssertEqual(try Triangle(sideA: 10, sideB: 3, sideC: 3).getType(), TriangleType.samaKaki)
        
        XCTAssertEqual(try Triangle(sideA: 4, sideB: 4, sideC: 4).getType(), TriangleType.samaSisi)
        XCTAssertEqual(try Triangle(sideA: 6, sideB: 6, sideC: 6).getType(), TriangleType.samaSisi)
        XCTAssertEqual(try Triangle(sideA: 5, sideB: 5, sideC: 5).getType(), TriangleType.samaSisi)
        
        XCTAssertEqual(try Triangle(sideA: 4, sideB: 5, sideC: 6).getType(), TriangleType.sembarang)
        XCTAssertEqual(try Triangle(sideA: 2, sideB: 4, sideC: 10).getType(), TriangleType.sembarang)
        XCTAssertEqual(try Triangle(sideA: 4, sideB: 2, sideC: 7).getType(), TriangleType.sembarang)
        
        XCTAssertEqual(try Triangle(sideA: 6, sideB: 8, sideC: 10).getType(), TriangleType.sikuSiku)
    }

//    override func setUpWithError() throws {
//        // Put setup code here. This method is called before the invocation of each test method in the class.
//        viewController = (UIStoryboard(name: "Main", bundle: nil).instantiateInitialViewController() as? ViewController)!
//        _ = viewController.view
//    }
//    override func tearDownWithError() throws {
//        // Put teardown code here. This method is called after the invocation of each test method in the class.
//    }
//    func testExample() throws {
//        // This is an example of a functional test case.
//        // Use XCTAssert and related functions to verify your tests produce the correct results.
//        // Any test you write for XCTest can be annotated as throws and async.
//        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
//        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
//    }
//    func testPerformanceExample() throws {
//        // This is an example of a performance test case.
//        measure {
//            // Put the code you want to measure the time of here.
//        }
//    }
    
    func testUI() {
        let tfA = viewController.tfSideA
        let tfB = viewController.tfSideB
        let tfC = viewController.tfSideC
        _ = viewController.action(tfA!, tfB!, tfC!)
        
        XCTAssertEqual(viewController.lblTypeResult.text, viewController.res)
        
    }
}
