//
//  MainVC+Layout.swift
//  CompositionalLayout
//
//  Created by Dmitry Shlepkin on 10/16/23.
//

import UIKit

extension MainVC {
    
    func createLayout() -> UICollectionViewCompositionalLayout {
        let layout = UICollectionViewCompositionalLayout { (sectionIndex: Int, layoutEnvinronment: NSCollectionLayoutEnvironment) -> NSCollectionLayoutSection in
            let section = MainSection(rawValue: sectionIndex)
            switch section {
            case .carousel:
                return self.createSingleListSection()
            case .widget:
                return self.createTwoColumnListSection()
            case .pinterest:
                return self.createSingleListSection()
            case .widget2:
                return self.createTwoColumnListSection()
            case .none:
                return self.createSingleListSection()
            }
        }
        let configuration = UICollectionViewCompositionalLayoutConfiguration()
        configuration.interSectionSpacing = 24
        layout.configuration = configuration
        return layout
    }
    
}
