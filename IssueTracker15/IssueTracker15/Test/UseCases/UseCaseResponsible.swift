//
// Created by 백상휘 on 2022/06/14.
//

import Foundation

protocol UseCaseResponsible: AnyObject {
    func requestFromUseCase(_ completionBlock: @escaping (Any?)->Void)
}
