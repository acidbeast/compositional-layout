//
//  MainVC.swift
//  CompositionalLayout
//
//  Created by Dmitry Shlepkin on 10/14/23.
//

import UIKit

typealias DataSource = UICollectionViewDiffableDataSource<MainSection, Picture>
typealias DataSourceSnapshot = NSDiffableDataSourceSnapshot<MainSection, Picture>

final class MainVC: UIViewController {
    
    var viewModel: MainViewModel
    var router: MainRouterProtocol
    
    lazy var collectionView = UICollectionView(
        frame: .zero,
        collectionViewLayout: UICollectionViewLayout()
    )
    
    init(
        router: MainRouterProtocol,
        viewModel: MainViewModel
    ) {
        self.router = router
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "Compositional Layout"
        setupCollection()
        registerCells()
        setupLayout()        
        setupDataSource()
        viewModel.configureData()
    }
    
    private func setupDataSource() {
        viewModel.dataSource = DataSource(
            collectionView: collectionView,
            cellProvider: { (collectionView, indexPath, model) -> PictureCellCollectionView in
                let cell = collectionView.dequeueReusableCell(
                    withReuseIdentifier: PictureCellCollectionView.identifier,
                    for: indexPath
                ) as! PictureCellCollectionView
                return cell
            }
        )
    }
    
    private func setupLayout() {
        let layout = createLayout()
        collectionView.setCollectionViewLayout(layout, animated: true)
    }
    
}
