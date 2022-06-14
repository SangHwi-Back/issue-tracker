//
// Created by 백상휘 on 2022/06/14.
//

import Foundation

class TestViewModel: CommonViewModel {
    
    var output: (Any?, ViewBindable) -> Void
    
    init(_ output: @escaping (Any?, ViewBindable) -> Void) {
        self.output = output
    }
    
    // Simulation Button request REST-API
    func request(_ bindable: ViewBindable, param: Any?) {
        if let button = bindable as? TestButton {
            TestUseCase.shared.requestFromUseCase { result in
                self.output(result, button)
            }
        } else {
            print("It is not TestButton")
        }
    }
}

protocol CommonViewModel {
    var output: (Any?, ViewBindable) -> Void { get }
    func request(_ bindable: ViewBindable, param: Any?)
}
