//
//  ViewController.swift
//  CoordinatorExample
//
//  Created by Pisit W on 10/12/2562 BE.
//  Copyright © 2562 23. All rights reserved.
//

import UIKit

class ViewController: UIViewController, Storyboarded {
    weak var coordinator: MainCoordinator?
    @IBOutlet weak var buySegment: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buyTapped(_ sender: Any) {
        coordinator?.buySubscription(to: buySegment.selectedSegmentIndex)
    }

    @IBAction func createAccount(_ sender: Any) {
        coordinator?.createAccount()
    }

}

