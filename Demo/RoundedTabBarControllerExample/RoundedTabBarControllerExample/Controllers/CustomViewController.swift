//
//  CustomViewController.swift
//  RoundedTabBarControllerExample
//
//  Created by Erid Bardhaj on 10/28/18.
//  Copyright © 2018 Erid Bardhaj. All rights reserved.
//

import UIKit

class CustomViewController: UIViewController {
    
    
    // MARK: - View Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupView()
    }
    
    
    // MARK: - Setups
    
    private func setupView() {
        view.backgroundColor = .brown
        
        navigationItem.title = "Modal"
        navigationItem.rightBarButtonItem = UIBarButtonItem(
            barButtonSystemItem: .done,
            target: self,
            action: #selector(dismissController)
        )
    }
    
    
    // MARK: - Actions
    
    @objc private func dismissController() {
        dismiss(animated: true, completion: nil)
    }
}
