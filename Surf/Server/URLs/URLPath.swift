//
//  URLPath.swift
//  Surf
//
//  Created by Aleksandr on 27.02.2020.
//  Copyright © 2020 Aleksandr. All rights reserved.
//
import Foundation

class URLPath {
  
  enum Path: String {

    case non
    case search = "/search"
    case lookup = "/lookup"
  }
  enum ChangePath {
    
    case non
  }
  
  public func create(change: ChangePath) -> String {
    //create Change Path for url
    switch change {
      //MARK: - Non
      case .non:
      return ""
    }
  }
}
