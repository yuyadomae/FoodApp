//
//  ViewController.swift
//  FoodApp
//
//  Created by Yuya Domae on 2019/02/05.
//  Copyright © 2019 Yuya Domae. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate, UIImagePickerControllerDelegate {
    
    //MARK: Properties
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var mealNameLabel: UILabel!
    @IBOutlet weak var photoImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        nameTextField.delegate = self

//        var monster = Monster(name: "勇者", level: 10)
//        var slime = Slime(name: "スライム", level: 5)
//        monster.attackMonster(enemy: slime)
//        slime.attackMonster(enemy: monster)
//        slime.escapeFromMonster(enemy: monster)
        

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
    
    @IBAction func selectImagePhotoLibrary(_ sender: UITapGestureRecognizer) {
        nameTextField.resignFirstResponder()
        
        let imagePickerController = UIImagePickerController()
        imagePickerController.sourceType = .photoLibrary
        imagePickerController.delegate = self as! UIImagePickerControllerDelegate & UINavigationControllerDelegate
        present(imagePickerController, animated: true, completion: nil)
    }
}

////Monsterクラスの定義
//class Monster {
//    var name: String
//    var level: Int
//    var hp: Int
//
//    init(name: String, level: Int) {
//        self.name = name
//        self.level = level
//        self.hp = 1
//    }
//
//    func attackMonster(enemy: Monster) {
//        print("\(self.name)は\(enemy.name)を攻撃した。")
//    }
//}
//
////スライムクラスの定義
//class Slime: Monster {
//    func escapeFromMonster(enemy: Monster) {
//        print("\(self.name)は\(enemy.name)から逃げた。")
//    }
//
//    override func attackMonster(enemy: Monster) {
//        print("\(self.name)は\(enemy.name)から全てを奪った。")
//    }
//}




