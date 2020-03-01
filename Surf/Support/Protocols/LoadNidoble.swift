//
//  LoadNidoble.swift
//  Surf
//
//  Created by Aleksandr on 29.02.2020.
//  Copyright © 2020 Aleksandr. All rights reserved.
//
import UIKit

protocol LoadNidoble {
	
	func tableCell(owner: Any) -> Self
	func collectionCell(_ collection: UICollectionView)
	func loadNibFile() -> UINib
	
}

extension LoadNidoble {
	
	func tableCell(owner: Any) -> Self {
		let nib = Bundle.main.loadNibNamed(String(describing: Self.self), owner: owner, options: nil)?.first
		return nib as! Self
	}
	func loadNibFile() -> UINib {
		return UINib(nibName: String(describing: Self.self), bundle: nil)
	}
	func collectionCell(_ collection: UICollectionView){
		let nib =  UINib(nibName: String(describing: Self.self), bundle: nil)
		collection.register(nib, forCellWithReuseIdentifier: String(describing: Self.self))
	}
}
