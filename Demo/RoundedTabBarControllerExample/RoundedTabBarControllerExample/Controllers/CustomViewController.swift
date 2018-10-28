//
//  CustomViewController.swift
//  RoundedTabBarControllerExample
//
//  Created by Erid Bardhaj on 10/28/18.
//  Copyright © 2018 Erid Bardhaj. All rights reserved.
//

import UIKit

class CustomViewController: UIViewController {
    
    
    // MARK: - Properties
    // MARK: Immutable
    
    private let dismissBarButtonItem = UIBarButtonItem(
        barButtonSystemItem: .cancel,
        target: self,
        action: #selector(dismissController)
    )
    
    
    // MARK: - View Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupView()
    }
    
    
    // MARK: - Setups
    
    private func setupView() {
        navigationItem.title = "Modal"
        navigationItem.rightBarButtonItem = dismissBarButtonItem
    }
    
    
    // MARK: - Actions
    
    @objc private func dismissController() {
        dismiss(animated: true)
    }
}
