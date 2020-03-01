//
//  GETSearchMusic.swift
//  Surf
//
//  Created by Aleksandr on 29.02.2020.
//  Copyright © 2020 Aleksandr. All rights reserved.
//
import Foundation

class GETSearchMusic: Requestoble {
	
	var urls       = URLs()
	var parameters = URLParameters()
	var headers    = URLHeaders()
	var jsonDecode = JSONDecode()
	
	func request(data: Any?, completion: @escaping ClousureRequest) {
		
    let searchName = data as? String ?? "music"
    let parameter  = parameters.cretae(queryItems: .searchMusic(search: searchName))
    let url = urls.create(.https, .itunes, .search, parameter)
		//Request
		self.jsonDecode.decode(jsonType: DecSearchMusic.self, url: url, httpMethod: .get) { (decodeResult) in
			//Responce
			switch decodeResult {
				//Error
				case .error(let error):
					completion(.error(error))
				//Susses
				case .json(let object):
          if let searchMusic = object as? DecSearchMusic {
            completion(.object(searchMusic))
          }
			}
		}
	}
}
