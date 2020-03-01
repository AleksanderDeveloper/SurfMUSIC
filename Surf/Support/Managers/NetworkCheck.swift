//
//  NetworkCheck.swift
//  Surf
//
//  Created by Aleksandr on 29.02.2020.
//  Copyright © 2020 Aleksandr. All rights reserved.
//
import UIKit
import Reachability

class NetworkCheck {
	
	public func network(vc: UIViewController) -> Bool {
		let reachability = try? Reachability()
		
		switch reachability?.connection {
			case .cellular:
				print("cellular")
				return true
			case .wifi:
				print("wifi")
				return true
			case .unavailable:
				Alert.dеfault(vc: vc, textAlert: .noNetwork)
				return false
			case .none:
				Alert.dеfault(vc: vc, textAlert: .noNetwork)
				return false
			case .some(.none):
				Alert.dеfault(vc: vc, textAlert: .noNetwork)
				return false
		}
	}
}


