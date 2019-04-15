//
//  AppHelper.swift
//  ChatWithStrangers
//
//  Created by Hai Vu on 4/15/19.
//  Copyright © 2019 Hai Vu. All rights reserved.
//

import Foundation
import UIKit
import YogaKit

//Entry Screen
//
extension ViewController {
    func setupLayout() {
        
        //setup for main view
        view.configureLayout{ layout in
            layout.isEnabled = true
            layout.flexDirection = .column
            layout.width = YGValue(self.view.bounds.size.width)
            layout.height = YGValue(self.view.bounds.size.height)
            layout.justifyContent = .flexStart
        }
        
        //content view
        let contentView = UIView()
        contentView.backgroundColor = .blue
        contentView.configureLayout { layout in
            layout.isEnabled = true
            layout.flexDirection = .row
            layout.justifyContent = .center
            layout.alignItems = .center
            layout.flexGrow = 1
        }
        
        //add new Button called "Click to enter"
        let btnClickToEnter = UIButton(type: .system)
        btnClickToEnter.setTitle("Enter", for: .normal)
        
        contentView.addSubview(btnClickToEnter)
        
        view.addSubview(contentView)
        
        view.yoga.applyLayout(preservingOrigin: true)
    }
}

//Entry Screen
//calculate the size of the screen when rotating the device
extension ViewController {
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        super.viewWillTransition(to: size, with: coordinator)
        view.configureLayout { layout in
            layout.isEnabled = true
            layout.width = YGValue(size.width)
            layout.height = YGValue(size.height)
        }
        view.yoga.applyLayout(preservingOrigin: true)
    }
}


//
extension UIView {
    func createActionView(with image: String, text: String) -> UIView {
        let actionView = UIView(frame: .zero)
        return actionView
    }
}
