//
//  BuyCoordinator.swift
//  CoordinatorExample
//
//  Created by Pisit W on 10/12/2562 BE.
//  Copyright © 2562 23. All rights reserved.
//

import UIKit

class BuyCoordinator: Coordinator {
    func start() {
    }
    
    var childCoordinators = [Coordinator]()
    var navigationController: UINavigationController
    weak var parentCoordinator: MainCoordinator?

    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }

    func start(productType: Int) {
        let vc = BuyViewController.instantiate()
        vc.selectedProduct = productType
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }
    
//    func didFinishBuying() {
//        parentCoordinator?.childDidFinish(self)
//    }
}
