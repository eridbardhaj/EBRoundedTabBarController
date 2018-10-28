//
//  CustomTabBarItem.swift
//  RoundedTabBarControllerExample
//
//  Created by Erid Bardhaj on 10/28/18.
//  Copyright © 2018 Erid Bardhaj. All rights reserved.
//

import UIKit

enum CustomTabBarItem {
    case firstItem, secondItem, roundedItem, thirdItem, fourthItem
}

extension CustomTabBarItem {
    
    var title: String {
        switch self {
        case .firstItem, .secondItem, .thirdItem, .fourthItem:
            return "Custom"
        case .roundedItem:
            return ""
        }
    }
    
    var isEnabled: Bool {
        switch self {
        case .firstItem, .secondItem, .thirdItem, .fourthItem:
            return true
        case .roundedItem:
            return false
        }
    }
    
    var tag: Int {
        switch self {
        case .firstItem:
            return 1
        case .secondItem:
            return 2
        case .roundedItem:
            return 3
        case .thirdItem:
            return 4
        case .fourthItem:
            return 5
        }
    }
    
    var image: UIImage {
        return UIImage()
    }
    
    var tabBarItem: UITabBarItem {
        return UITabBarItem(title: title, image: image, tag: tag)
    }
    
    var backgroundColor: UIColor {
        switch self {
        case .firstItem:
            return .magenta
        case .secondItem:
            return .green
        case .thirdItem:
            return .orange
        case .fourthItem:
            return .gray
        default:
            return .white
        }
    }
}

