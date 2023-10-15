//
//  Router.swift
//  CompositionalLayout
//
//  Created by Dmitry Shlepkin on 10/14/23.
//

import UIKit

protocol RouterProtocol: AnyObject {
    var navigationController: UINavigationController? { get set }
    var moduleBuilder: ModuleBuilderProtocol? { get set }
}

protocol MainRouterProtocol: RouterProtocol {
    func start()
    func showMain()
    func goToRoot()
    func goBack()
}

final class MainRouter: MainRouterProtocol {
    
    var navigationController: UINavigationController?
    var moduleBuilder: ModuleBuilderProtocol?
    
    init(
        navigationController: UINavigationController?,
        moduleBuilder: ModuleBuilderProtocol?
    ) {
        self.navigationController = navigationController
        self.moduleBuilder = moduleBuilder
    }
    
    func start() {
        showMain()
    }
    
    func showMain() {
        guard let navigationController = navigationController else { return  }
        guard let mainVC = moduleBuilder?.createMainModule(
            router: self
        )
        else { return }
        navigationController.pushViewController(mainVC, animated: false)
    }

    func goToRoot() {
        guard let navigationController = navigationController else { return }
        navigationController.popToRootViewController(animated: true)
    }
    
    func goBack() {
        guard let navigationController = navigationController else { return }
        navigationController.popViewController(animated: true)
    }
    
}
