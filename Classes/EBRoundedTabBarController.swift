import UIKit

class EBRoundedTabBarController: UITabBarController {
    
    
    // MARK: - Inner Types
    
    private struct Constants {
        static let actionButtonSize = CGSize(width: 64, height: 64)
    }
    
    
    // MARK: - Properties
    // MARK: Immutable
    
    private let actionButton: UIButton = {
        let button = UIButton(type: .custom)
        button.translatesAutoresizingMaskIntoConstraints = false
        
        button.backgroundColor = UIColor.darkGray
        button.layer.cornerRadius = Constants.actionButtonSize.height/2
        
        button.addTarget(self, action: #selector(actionButtonTapped(sender:)), for: .touchUpInside)
        
        return button
    }()
    
    
    // MARK: - View lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupSubviews()
        setupConstraints()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        actionButton.isHidden = false
    }
    
    
    // MARK: - Setups
    
    private func setupSubviews() {
        createTabbarControllers()
        
        view.addSubview(actionButton)
    }
    
    private func setupConstraints() {
        actionButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        actionButton.widthAnchor.constraint(equalToConstant: Constants.actionButtonSize.width).isActive = true
        actionButton.heightAnchor.constraint(equalToConstant: Constants.actionButtonSize.height).isActive = true
        actionButton.bottomAnchor.constraint(equalTo: tabBar.safeAreaLayoutGuide.bottomAnchor).isActive = true
    }
    
    
    // MARK: - Actions
    
    @objc private func actionButtonTapped(sender: UIButton) {
        let customViewController = CustomViewController()
        let navigationController = UINavigationController(rootViewController: customViewController)
        
        present(navigationController, animated: true) {
            self.actionButton.isHidden = true
        }
    }
    
    
    // MARK: - Helpers
    
    private func createTabbarControllers() {
        let systemTags = [EBRoundedTabBarItem.firstItem, .secondItem, .roundedItem, .thirdItem, .fourthItem]
        let viewControllers = systemTags.compactMap { self.createController(for: $0, with: $0.tag) }
        
        self.viewControllers = viewControllers
    }
    
    private func createController(for customTabBarItem: EBRoundedTabBarItem, with tag: Int) -> UINavigationController? {
        let viewController = UIViewController()
        viewController.title = customTabBarItem.title
        viewController.tabBarItem = customTabBarItem.tabBarItem
        viewController.view.backgroundColor = customTabBarItem.backgroundColor
        
        return UINavigationController(rootViewController: viewController)
    }
}

