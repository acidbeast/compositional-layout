//
//  MainVC+Sections.swift
//  CompositionalLayout
//
//  Created by Dmitry Shlepkin on 10/16/23.
//

import UIKit

extension MainVC {
    
    func createSingleListSection() -> NSCollectionLayoutSection {
        let itemSize = NSCollectionLayoutSize(
            widthDimension: .fractionalWidth(1),
            heightDimension: .fractionalHeight(1)
        )
        let item = NSCollectionLayoutItem(
            layoutSize: itemSize
        )
        item.contentInsets = .init(top: 0, leading: 0, bottom: 0, trailing: 16)
        let groupSize =  NSCollectionLayoutSize(
            widthDimension: .fractionalWidth(0.95),
            heightDimension: .estimated(250)
        )
        let group = NSCollectionLayoutGroup.horizontal(
            layoutSize: groupSize,
            subitems: [item]
        )
        let section = NSCollectionLayoutSection(group: group)
        section.orthogonalScrollingBehavior = .groupPagingCentered
        return section
    }
    
    func createTwoColumnListSection() -> NSCollectionLayoutSection {
        let itemSize = NSCollectionLayoutSize(
            widthDimension: .fractionalWidth(0.95),
            heightDimension: .fractionalHeight(0.5)
        )
        let item = NSCollectionLayoutItem(
            layoutSize: itemSize
        )
        item.contentInsets = .init(top: 0, leading: 0, bottom: 16, trailing: 0)
        let groupSize =  NSCollectionLayoutSize(
            widthDimension: .fractionalWidth(0.65),
            heightDimension: .estimated(165)
        )
        let group = NSCollectionLayoutGroup.vertical(
            layoutSize: groupSize,
            repeatingSubitem: item, 
            count: 2
        )
        let section = NSCollectionLayoutSection(group: group)
        section.orthogonalScrollingBehavior = .groupPaging
        section.contentInsets = .init(top: 0, leading: 8, bottom: 0, trailing: 16)
        return section
    }
    
}
