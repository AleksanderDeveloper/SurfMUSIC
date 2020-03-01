//
//  Extension + String.swift
//  Surf
//
//  Created by Aleksandr on 29.02.2020.
//  Copyright © 2020 Aleksandr. All rights reserved.
//
import Foundation

//MARK: - Others
extension String {
  
	static func format(_ format: Format) -> String {
		return format.rawValue
	}
	static func metod(_ metod: HTTPMethod) -> String {
		return metod.rawValue
	}
	enum Format: String {
		case two = "%02d:%02d"
	}
  
	enum HTTPMethod: String {
		case post  = "POST"
		case get   = "GET"
		case patch = "PATCH"
	}
}

