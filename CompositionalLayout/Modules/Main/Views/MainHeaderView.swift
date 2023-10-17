//
//  MainHeaderView.swift
//  CompositionalLayout
//
//  Created by Dmitry Shlepkin on 10/16/23.
//

import UIKit

final class MainHeaderView: UICollectionReusableView {
    
    var titleLabel = UILabel()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setup() {
        setupLabel()
    }
    
    private func setupLabel() {
        addSubview(titleLabel)
        titleLabel.font = UIFont.boldSystemFont(ofSize: 16)
        titleLabel.textColor = .black
    }
    
    func updateWith(title: String) {
        titleLabel.text = title
    }
    
}
