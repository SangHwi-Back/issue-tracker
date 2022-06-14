//
// Created by 백상휘 on 2022/06/14.
//

import Foundation

protocol ViewBindable {
    var vc: ViewBinding? { get }
    
    func sendAction(_ param: Any?)
    func receive(_ responseData: Any)
    func setVC(_ binding: ViewBinding)
}
