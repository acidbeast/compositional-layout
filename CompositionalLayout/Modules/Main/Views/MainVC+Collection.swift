//
//  MainVC+Collection.swift
//  CompositionalLayout
//
//  Created by Dmitry Shlepkin on 10/14/23.
//

import UIKit

extension MainVC: UICollectionViewDelegate {
    
    func setupCollection() {
        view.addSubview(collectionView)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.delegate = self
        collectionView.showsHorizontalScrollIndicator = false
        collectionView.backgroundColor = .lightGray
        NSLayoutConstraint.activate([
            collectionView.topAnchor.constraint(equalTo: view.topAnchor),
            collectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            collectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            collectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ])
    }
    
    func registerCells() {
        collectionView.register(
            PictureCellCollectionView.self,
            forCellWithReuseIdentifier: PictureCellCollectionView.identifier
        )
    }
    
    
}
