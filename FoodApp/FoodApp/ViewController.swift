//
//  ViewController.swift
//  FoodApp
//
//  Created by Yuya Domae on 2019/02/05.
//  Copyright © 2019 Yuya Domae. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    //MARK: Properties
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var mealNameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        nameTextField.delegate = self
        
//        var items: [Int] = [1,2,3,4,5,6]
//        var double = items.reduce(0, { (total: Int, number: Int) -> Int in
//            print(number)
//            return tatal
//        })
//        print(double)
//
        
        let cl = MyApp()
//        cl.test()
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        // Hide the keyboard.
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        mealNameLabel.text = textField.text
    }
    
    //MARK: Actions
    @IBAction func setDefaultLabelText(_ sender: UIButton) {
        mealNameLabel.text = "Default Text"
    }
}

class Monster {
    var name: String
    var level: Int
    
    init(name: String, level: Int) {
        self.name = name
        self.level = level
    }
    
    func printStatus() {
        print("名前: \(name) レベル: \(level)")
    }
    
    func attackMonster(enemy: Monster) {
        print("\(name)は\(enemy.name)を攻撃した。")
    }
}

class slime: Monster {
    init(level: Int = 1) {
        super.init(name: "スライム", level: "")
    }
}

