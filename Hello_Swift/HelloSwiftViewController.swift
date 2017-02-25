//
//  HelloSwiftViewController.swift
//  Hello_Swift
//
//  Created by Александр Смирнов on 25/02/17.
//  Copyright © 2017 alex. All rights reserved.
//

import UIKit

class HelloSwiftViewController: UIViewController {

   
    
    
    @IBOutlet var nameInput: UITextField!
    
    
    @IBAction func helloButtonPresses(_ sender: UIButton) {
        // убедимся что в поле для ввода есть какой-то текст
        
        guard nameInput?.text?.isEmpty == false,
        let userName = nameInput?.text else {return}
        
    
    let greeting = "Здравствуйте \(userName)"
    
    //контроллер для всплывающего сообщения
    
    let alert = UIAlertController(title: "Ура", message: greeting, preferredStyle: .alert)
        
        //кнопка для всплывающего сообщения
    
        let helloAction = UIAlertAction(title: "Привет", style: .default) {
        
        action in print("Пользователь нажал \(action)")
        
        }
        
        //добавим кнопку на контроллер
        
     alert.addAction(helloAction)
        
        present(alert, animated: true, completion: nil)
}


}
















