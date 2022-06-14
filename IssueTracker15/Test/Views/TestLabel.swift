//
// Created by 백상휘 on 2022/06/14.
//

import UIKit

class TestLabel: UILabel,
        ViewBindable,
        BoldStringAdaptable, LargeStringAdaptable {
    
    var vc: ViewBinding?
    
    func bind(_ text: String) { // ViewTextBindable
        self.text = text
    }
    
    func bind(_ text: String, with font: UIFont) { // BoldStringAdaptable, LargeStringAdaptable
        self.text = text
        self.font = font
    }
    
    func sendAction(_ param: Any?) {
    
    }
    
    func receive(_ responseData: Any) {
        // Do Something...
    }
    
    func setVC(_ binding: ViewBinding) {
        self.vc = binding
    }
}

