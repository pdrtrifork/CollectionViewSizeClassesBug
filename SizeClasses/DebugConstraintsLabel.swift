//
//  DebugConstraintsLabel.swift
//  SizeClasses
//
//  Created by Peder Toftegaard Olsen on 14/09/15.
//  Copyright © 2015 Trifork GmbH. All rights reserved.
//

import UIKit

class DebugConstraintsLabel: UILabel {

    override func awakeFromNib() {
        super.awakeFromNib()
        self.accessibilityIdentifier = "label"
        let tapRecognizer = UITapGestureRecognizer(target: self, action: Selector("handleTapRecognizer:"))
        self.addGestureRecognizer(tapRecognizer)
        self.userInteractionEnabled = true
    }
    
    func handleTapRecognizer(recognizer: UITapGestureRecognizer) {
        if recognizer.state == UIGestureRecognizerState.Ended {
            let constraints = self.constraintsAffectingLayoutForAxis(UILayoutConstraintAxis.Horizontal)
            if let
                rootViewController = self.window?.rootViewController,
                debugConstraintsNavigationController = rootViewController.storyboard?.instantiateViewControllerWithIdentifier("DebugConstraints") as? UINavigationController,
                debugConstraintsController = debugConstraintsNavigationController.topViewController as? DebugConstraintsTableViewController {
                debugConstraintsController.constraints = constraints
                rootViewController.presentViewController(debugConstraintsNavigationController, animated: true, completion: nil)
            } else {
                print("Active Horizontal Constraints:")
                for constraint in constraints {
                    if constraint.active {
                        print(" constraint: \(constraint)")
                    }
                }
            }
        }
    }

}
