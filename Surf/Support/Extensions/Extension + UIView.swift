//
//  Extension + UIView.swift
//  Surf
//
//  Created by Aleksandr on 29.02.2020.
//  Copyright © 2020 Aleksandr. All rights reserved.
//
import UIKit

extension UIView {
  
	//MARK: - Set view corner radius
	public func cornerRadius(_ radius: CGFloat = 9, _ clipsToBounds: Bool = true){
		self.layer.cornerRadius  = radius
		self.clipsToBounds       = clipsToBounds
	}
  //MARK: - Set view shadow color
	public func shadowColor(color: UIColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1), radius: CGFloat = 9){
		self.layer.shadowColor   = color.cgColor
		self.layer.shadowRadius  = radius
		self.layer.shadowOpacity = 1
		self.layer.shadowOffset  = CGSize(width: 0, height: 0)
	}
   //MARK: - Set view border color
	public func borderColor(_ color: UIColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1), _ width: CGFloat = 1){
		self.layer.borderColor  = color.cgColor
		self.layer.borderWidth  = width
	}
   //MARK: - Set nib file
	public func loadFromNib<T: UIView>() -> T {
		return Bundle.main.loadNibNamed(String(describing: T.self), owner: nil, options: nil)![0] as! T
	}
}
