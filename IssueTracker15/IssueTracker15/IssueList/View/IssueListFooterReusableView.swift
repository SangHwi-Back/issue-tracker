//
//  IssueListFooterReusableView.swift
//  IssueTracker15
//
//  Created by 백상휘 on 2022/06/21.
//

import UIKit

class IssueListFooterReusableView: UICollectionReusableView {
    static var reuseIdentifier: String {
        return String(describing: Self.self)
    }
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.textColor = .label
        label.font = UIFont(name: "SFProDisplay-Regular", size: 13)
        label.text = "아래로 당기면 검색바가 보여요!👀"
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(titleLabel)
        titleLabel.snp.makeConstraints {
            $0.top.equalToSuperview().offset(39)
            $0.bottom.equalToSuperview().offset(3)
            $0.leading.trailing.equalToSuperview().inset(8)
        }
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
}
