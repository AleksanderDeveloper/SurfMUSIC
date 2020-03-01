//
//  Extension + UIStoryboard.swift
//  PhotoGalery
//
//  Created by Aleksandr on 15.10.2019.
//  Copyright © 2019 Aleksandr. All rights reserved.
//
import UIKit

extension UIStoryboard {
	
	static func create(sbID: UIStoryboard.ID) -> UIStoryboard {
		return UIStoryboard(name: sbID.rawValue, bundle: nil)
	}
	static func createVC(sbID: UIStoryboard.ID) -> UIViewController {
		let storyBoard     = UIStoryboard(name: sbID.rawValue, bundle: nil)
		let viewController = storyBoard.instantiateInitialViewController() ?? UIViewController()
		return viewController
	}
  static func createVCID(sbID: UIStoryboard.ID, vcID: UIViewController.IDVC) -> UIViewController {
     let storyBoard     = UIStoryboard(name: sbID.rawValue, bundle: nil)
     let viewController = storyBoard.instantiateViewController(identifier: vcID.rawValue)
     return viewController
   }
	enum ID: String, CaseIterable {
		case SearchMusic
	}
}

