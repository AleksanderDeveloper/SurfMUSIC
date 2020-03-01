//
//  Requestoble.swift
//  Surf
//
//  Created by Aleksandr on 29.02.2020.
//  Copyright © 2020 Aleksandr. All rights reserved.
//

import Foundation

protocol Requestoble {
	
	var urls      : URLs          { get set}
	var parameters: URLParameters { get set}
	var headers   : URLHeaders    { get set}
	//var jsonDecode: JSONDecode    { get set}
	
	func request(data: Any?, completion: @escaping ClousureRequest)
}




