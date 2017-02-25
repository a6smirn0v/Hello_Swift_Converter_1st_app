//
//  ConverterViewController.swift
//  Hello_Swift
//
//  Created by Александр Смирнов on 25/02/17.
//  Copyright © 2017 alex. All rights reserved.
//

import UIKit

class ConverterViewController: UIViewController {

 
    
    
    var converter = Converter(forwardRatio:1 / 62, backwardRatio:58, precision:2)
    
    
    @IBOutlet weak var converterView: ConverterView!
  // метод вызывается один раз и является точкой для настройки
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    func setup(){
    // станем делегатом нашего ConverterView
    converterView.delegate = self
    
    
    }
    
    

}

extension ConverterViewController: ConverterViewDelegate {

    func converterView(view: ConverterView, convertForward value: String) {
        
        guard case let rubText = value,
        
            let rubles = Double(rubText)
        
            else {
            return
        }
        let euros = converter.convertForward(amount: rubles)
        
        view.fromValue = "\(euros)"
        
    }

    func converterView(view: ConverterView, convertBackward value: String) {
        
    }
    
}










