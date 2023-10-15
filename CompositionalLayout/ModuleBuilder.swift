//
//  ModuleBuilder.swift
//  CompositionalLayout
//
//  Created by Dmitry Shlepkin on 10/14/23.
//

import UIKit

protocol ModuleBuilderProtocol {
    func createMainModule(router: MainRouterProtocol) -> UIViewController
}

final class ModuleBuilder: ModuleBuilderProtocol {
    
    func createMainModule(router: MainRouterProtocol) -> UIViewController {
        let vm = MainVM()
        let vc = MainVC(router: router, viewModel: vm)
        return vc
    }
    
}
