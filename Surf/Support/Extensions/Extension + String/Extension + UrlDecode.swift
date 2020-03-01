//
//  Extension + UrlDecode.swift
//  Surf
//
//  Created by Aleksandr on 29.02.2020.
//  Copyright © 2020 Aleksandr. All rights reserved.
//
import Foundation

//MARK: - Decodcode URL
extension String {
  
  public func decode64ToString() -> String {
    let decodedData = NSData(base64Encoded: self, options: NSData.Base64DecodingOptions(rawValue: 0))! as Data
    guard let decodedString = NSString(data: decodedData, encoding: String.Encoding.utf8.rawValue) as String? else { return "Error" }
    return decodedString
  }
  public func decodedUrl() -> String {
    if let url = self.addingPercentEncoding( withAllowedCharacters: NSCharacterSet.urlQueryAllowed) {
      return url
    }
    return ""
  }
  public func decodeRemovingUrl() -> String?{
    return self.removingPercentEncoding
  }
}
