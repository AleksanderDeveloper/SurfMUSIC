//
//  URLs.swift
//  Surf
//
//  Created by Aleksandr on 27.02.2020.
//  Copyright © 2020 Aleksandr. All rights reserved.
//
import Foundation

class URLs {
	
  private var urlPath   = URLPath()
  private var urlString = URLString()
  
	enum URLApyKey: String {
		case some
	}
	enum Scheme: String {
    
		case http
		case https
	}
  
  enum Host: String {
    
    case itunes = "itunes.apple.com"
  }
	
	enum TypeURL {
		
		case api
		case store(url: String)
		case webSocet
	}
  public func get(typeURL: TypeURL, path: URLPath.Path = .non, changePath: URLPath.ChangePath = .non) -> URL? {
		switch typeURL {
			case .api:
				let url = URL(string: "")
				return url
			case .webSocet:
				let url = URL(string: "")
				return url
      case .store(url: let url):
				let url = URL(string: url)
			return url
		}
	}
	
  public func create(_ scheme: Scheme, _ host: Host, _ path:  URLPath.Path, changePath: URLPath.ChangePath = .non,  _ queryItems: [URLQueryItem]? = nil ) -> URL? {
		var components = URLComponents()
		components.scheme = scheme.rawValue
		components.path   = path.rawValue
    components.host   = host.rawValue + urlPath.create(change: changePath)
		components.queryItems = queryItems
	return components.url
	}
}


