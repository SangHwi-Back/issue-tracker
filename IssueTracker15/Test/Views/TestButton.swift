//
// Created by 백상휘 on 2022/06/14.
//

import UIKit

class TestButton: UIButton, ViewBindable {
    
    private(set) var vc: ViewBinding?
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        self.sendAction(nil)
    }
    
    func sendAction(_ param: Any?) {
        vc?.inputViewEvent(self, param)
    }
    
    func receive(_ responseData: Any) {
        print(responseData)
    }
    func setVC(_ binding: ViewBinding) {
        self.vc = binding
    }
}
