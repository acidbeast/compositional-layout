//
//  PictureCellCollectionView.swift
//  CompositionalLayout
//
//  Created by Dmitry Shlepkin on 10/16/23.
//

import UIKit

final class PictureCellCollectionView: UICollectionViewCell {
        
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setup() {
        backgroundColor = .red
        layer.cornerRadius = 16
    }
    
}
