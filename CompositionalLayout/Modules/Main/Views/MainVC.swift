//
//  MainVC.swift
//  CompositionalLayout
//
//  Created by Dmitry Shlepkin on 10/14/23.
//

import UIKit

final class MainVC: UIViewController {
    
    var viewModel: MainVMProtocol
    var router: MainRouterProtocol
    
    init(
        router: MainRouterProtocol,
        viewModel: MainVMProtocol
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
        view.backgroundColor = .red
    }
    
}
