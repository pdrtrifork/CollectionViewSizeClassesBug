//
//  SizeClassCollectionViewController.swift
//  SizeClasses
//
//  Created by Peder Toftegaard Olsen on 14/09/15.
//  Copyright © 2015 Trifork GmbH. All rights reserved.
//

import UIKit

private let reuseIdentifier = "Cell"

class SizeClassCollectionViewController: UICollectionViewController {

    // MARK: UICollectionViewDataSource

    override func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }

    override func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 100
    }

    override func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier(reuseIdentifier, forIndexPath: indexPath)
        return cell
    }
}
