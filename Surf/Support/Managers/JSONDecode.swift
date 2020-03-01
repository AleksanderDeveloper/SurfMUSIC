//
//  JSONDecode.swift
//  Surf
//
//  Created by Aleksandr on 29.02.2020.
//  Copyright © 2020 Aleksandr. All rights reserved.
//
import Foundation

class JSONDecode: Sessionoble {

	private let decoder = JSONDecoder()

	public func decode<T: Decodable>(jsonType: T.Type ,url: URL?, body: Data? = nil, httpMethod: String.HTTPMethod, header: Header? = nil, completion: @escaping ClousureDecode){
		self.session(url: url, body: body, httpMethod: httpMethod, header: header) { (sessionResult) in
			switch sessionResult {
				case .data(let data):
					do{
						//return data
						//self.decoder.keyDecodingStrategy = .convertFromSnakeCase
						let json = try self.decoder.decode(T.self, from: data)
						completion(.json(json))
						//return error
					} catch let error {
						let jsonString = String(data: data, encoding: .utf8) ?? " Error JsonString"
						print(error.localizedDescription, "Error parse JSONDecode \(jsonString) string convert")
						completion(.error(error))
				}
				case .error(let error):
					print(error!.localizedDescription, "Error JSONDecode get from Server ")
					completion(.error(error))
			}
		}
	}
}

