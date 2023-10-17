//
//  MainVM.swift
//  CompositionalLayout
//
//  Created by Dmitry Shlepkin on 10/14/23.
//

protocol MainViewModel {
    var dataSource: DataSource? { get set }
    func configureData()
}

final class MainViewModelImpl: MainViewModel {
    
    var dataSource: DataSource?
    
    private var snapshot = DataSourceSnapshot()
    
    init() {
        configureData()
    }
    
    func configureData() {
        snapshot.deleteAllItems()
        snapshot.appendSections(MainSection.allCases)
        snapshot.appendItems([
            .init(name: "Picture 1", url: ""),
            .init(name: "Picture 2", url: ""),
            .init(name: "Picture 3", url: ""),
            .init(name: "Picture 4", url: ""),
            .init(name: "Picture 5", url: "")
        ], toSection: .carousel)
        snapshot.appendItems([
            .init(name: "Picture 6", url: ""),
            .init(name: "Picture 7", url: ""),
            .init(name: "Picture 8", url: ""),
            .init(name: "Picture 9", url: ""),
            .init(name: "Picture 10", url: "")
        ], toSection: .widget)
        snapshot.appendItems([
            .init(name: "Picture 11", url: ""),
            .init(name: "Picture 12", url: ""),
            .init(name: "Picture 13", url: ""),
            .init(name: "Picture 14", url: ""),
            .init(name: "Picture 15", url: "")
        ], toSection: .pinterest)
        snapshot.appendItems([
            .init(name: "Picture 16", url: ""),
            .init(name: "Picture 17", url: ""),
            .init(name: "Picture 18", url: ""),
            .init(name: "Picture 19", url: ""),
            .init(name: "Picture 20", url: "")
        ], toSection: .widget2)
        dataSource?.apply(snapshot, animatingDifferences: true)
    }
    
}
