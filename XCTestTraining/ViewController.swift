//
//  ViewController.swift
//  XCTestTraining
//
//  Created by Fadhil Ikhsanta on 06/12/22.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var tfSideA: UITextField!
    @IBOutlet weak var tfSideB: UITextField!
    @IBOutlet weak var tfSideC: UITextField!
    @IBOutlet weak var lblTypeResult: UILabel!
    var res: String? = nil
    
    @IBAction func checkType(_ sender: Any) {
        do {
            res = try? Triangle(sideA: 8, sideB: 8, sideC: 8).getType().rawValue
            lblTypeResult.text = res
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view.
        
        
    }
    
    func calculate(firstInput a: Int, secondInput b: Int) -> Int {
        return a + b
    }
    
    func action(_ tfA: UITextField, _ tfB: UITextField, _ tfC: UITextField) -> Bool {
        do {
            res = try? Triangle(
                sideA: Int(tfA.text ?? "") ?? 0,
                sideB: Int(tfB.text ?? "") ?? 0,
                sideC: Int(tfC.text ?? "") ?? 0
            ).getType().rawValue
            
            lblTypeResult.text = res
        }
        return true
    }
    
}

extension ViewController: UITextViewDelegate {

}

