//
//  SizeClassCollectionViewCell.swift
//  SizeClasses
//
//  Created by Peder Toftegaard Olsen on 14/09/15.
//  Copyright © 2015 Trifork GmbH. All rights reserved.
//

import UIKit

class SizeClassCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var label: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.accessibilityIdentifier = "cellView"
        self.contentView.accessibilityIdentifier = "contentView"
    }
}
