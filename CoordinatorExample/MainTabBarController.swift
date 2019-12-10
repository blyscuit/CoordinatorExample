//
//  MainTabBarController.swift
//  CoordinatorExample
//
//  Created by Pisit W on 10/12/2562 BE.
//  Copyright © 2562 23. All rights reserved.
//

import UIKit

class MainTabBarController: UITabBarController {
    let mainCoordinator = MainCoordinator(navigationController: UINavigationController())

    override func viewDidLoad() {
        super.viewDidLoad()

        mainCoordinator.start()
        viewControllers = [mainCoordinator.navigationController]
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
