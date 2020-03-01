//
//  Server.swift
//  Surf
//
//  Created by Aleksandr on 29.02.2020.
//  Copyright © 2020 Aleksandr. All rights reserved.
//
import UIKit

class Server: NSObject {
	
	//MARK: - Public variable
	public let urls       = URLs()
	public let parameters = URLParameters()
	public let headers    = URLHeaders()
	//MARK: - Private variable
	private var requestoble: Requestoble!
	private let networkCheck = NetworkCheck()
	
	//MARK: - Request Server
	public func request(requestType: RequestType, data: Any? = nil, vc: UIViewController, completion: @escaping ClousureServerResult){
		
		//check network
		guard self.networkCheck.network(vc: vc) else { return }
		
		//create type request
		requestoble = self.requests(requestType: requestType)
		
		//request
		requestoble.request(data: data) { (requestResult) in
			//responce
			switch requestResult{
				//susses
				case .object(let json):
					DispatchQueue.main.async {
						completion(.object(json))
				}
				//error
				case .error(let error):
					DispatchQueue.main.async {
						completion(.error(error))
				}
			}
		}
	}
	//MARK: - Create type request
	private func requests(requestType: RequestType) -> Requestoble {
		switch requestType {
      //GET
			case .GETSearchMusic:
				return GETSearchMusic()
      case .GETDetailMusic:
        return GETDetailMusic()
		}
	}
	enum RequestType {
    //GET
		case GETSearchMusic
    case GETDetailMusic
	}
}







