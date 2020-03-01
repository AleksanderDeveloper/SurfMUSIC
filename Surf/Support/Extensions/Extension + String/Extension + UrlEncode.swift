//
//  Extension + Urlencode.swift
//  Surf
//
//  Created by Aleksandr on 29.02.2020.
//  Copyright © 2020 Aleksandr. All rights reserved.
//
import Foundation

//MARK: - Encode URL
extension String {
  
  public func encodedUrl() -> String? {
    // Remove preexisting encoding,
    guard let decodedString = self.removingPercentEncoding,
      // encode any Unicode characters so URLComponents doesn't choke,
      let unicodeEncodedString = decodedString.addingPercentEncoding(withAllowedCharacters: .urlAllowedCharacters),
      // break into components to use proper encoding for each part,
      let components = URLComponents(string: unicodeEncodedString),
      // and reencode, to revert decoding while encoding missed characters.
      let percentEncodedUrl = components.url else {
        // Encoding failed
        return nil
    }
    return percentEncodedUrl.absoluteString
  }
  public func encodedUrlParameters(_ parameters: CharacterSet) -> String? {
    let unicodeEncodedString = self.addingPercentEncoding(withAllowedCharacters: parameters)
    return unicodeEncodedString
  }
}
