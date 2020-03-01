//
//  GETDetailMusic.swift
//  Surf
//
//  Created by Aleksandr on 29.02.2020.
//  Copyright © 2020 Aleksandr. All rights reserved.
//
import Foundation

class GETDetailMusic: Requestoble {
  
  var urls       = URLs()
  var parameters = URLParameters()
  var headers    = URLHeaders()
  var jsonDecode = JSONDecode()
  
  func request(data: Any?, completion: @escaping ClousureRequest) {
    
    //create parameters
    let albomID   = data as? String ?? "304522684"
    let parameter = parameters.cretae(queryItems: .detailAlbom(id: albomID))
    //create url
    let url = urls.create(.https, .itunes, .lookup, parameter)
    
    //Request
    self.jsonDecode.decode(jsonType: DecDetailMusic.self, url: url, httpMethod: .get) { (decodeResult) in
      //Responce
      switch decodeResult {
        //Error
        case .error(let error):
          completion(.error(error))
        //Susses
        case .json(let object):
          if let detailMusic = object as? DecDetailMusic {
            completion(.object(detailMusic))
          }
      }
    }
  }
}
