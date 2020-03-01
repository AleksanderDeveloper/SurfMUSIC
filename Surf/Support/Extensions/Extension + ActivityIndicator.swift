//
//  Extension + ActivityIndicator.swift
//  Surf
//
//  Created by Aleksandr on 29.02.2020.
//  Copyright © 2020 Aleksandr. All rights reserved.
//
import UIKit

extension UIActivityIndicatorView {
	
	func show(_ activity: Bool){
		if activity {
			self.startAnimating()
			self.isHidden = false
		} else {
			self.stopAnimating()
			self.isHidden = true
		}
	}
}
