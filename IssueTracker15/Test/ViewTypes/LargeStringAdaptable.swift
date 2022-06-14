//
// Created by 백상휘 on 2022/06/14.
//

import UIKit

protocol LargeStringAdaptable: ViewTextBindable {
    func bind(_ text: String, with font: UIFont)
}
