//
//  ViewController.swift
//  IssueTracker15_1
//
//  Created by 박진섭 on 2022/06/13.
//

import UIKit

protocol ViewBinding {
    func inputViewEvent(_ target: ViewBindable, _ param: Any?)
}

class ViewController: UIViewController, ViewBinding {

    private var vm: TestViewModel?
    
    let label: TestLabel = {
        let label = TestLabel()
        return label
    }()
    
    let button: TestButton = {
        let button = TestButton()
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .red
        bind(button)
        bind(label)
        
        vm = TestViewModel { data, target in
            if let data = data {
                target.receive(data)
            }
        }
    }
    
    func bind(_ bindable: ViewBindable) {
        bindable.setVC(self)
    }
    
    func inputViewEvent(_ target: ViewBindable, _ param: Any?) {
        vm?.request(target, param: param)
    }
}

