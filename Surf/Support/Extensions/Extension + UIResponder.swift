//
//  Extension + UIResponder.swift
//  PhotoGalery
//
//  Created by Aleksandr on 15.10.2019.
//  Copyright © 2019 Aleksandr. All rights reserved.
//
import UIKit

extension UIResponder {
	
	static var identifier: String {
		get {
			return String(describing: self )
		}
	}
}

