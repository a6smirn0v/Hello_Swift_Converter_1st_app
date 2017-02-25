//
//  ConverterView.swift
//  Hello_Swift
//
//  Created by Александр Смирнов on 25/02/17.
//  Copyright © 2017 alex. All rights reserved.
//

import UIKit


protocol ConverterViewDelegate: class {

    func converterView(view: ConverterView, convertForward value:String)
    
    func converterView(view: ConverterView, convertBackward value:String)
    


}

class ConverterView: UIView {

    weak var delegate: ConverterViewDelegate?
    
    var toValue:String?{
    
        get{ return toTextField?.text}
        set {fromTextFiels?.text = newValue}
    
    }
    
    
    
    var fromValue:String?{
    
        get{ return fromTextFiels?.text}
        set {fromTextFiels?.text = newValue}
    
    
    }
    


    
    
@IBOutlet private weak var toTextField: UITextField?
@IBOutlet private weak var fromTextFiels: UITextField?
    
    
    
    @IBAction func forwardPressed(){
    
    delegate?.converterView(view: self, convertForward: fromValue!)
    
    }
    
    @IBAction func backwardPressed(){
    
        delegate?.converterView(view: self, convertBackward: toValue!)
    
    
    }

    
   required  init?(coder aDecoder:NSCoder) {super.init(coder:aDecoder)
    
    setup()
    
    }
    
    private func setup(){
    
    self.layer.cornerRadius = 5
self.clipsToBounds = true
    
    }
    
    
}





















