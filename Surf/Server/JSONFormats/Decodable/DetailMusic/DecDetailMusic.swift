//
//  DecDetailMusic.swift
//  Surf
//
//  Created by Aleksandr on 29.02.2020.
//  Copyright © 2020 Aleksandr. All rights reserved.
//

import Foundation

struct DecDetailMusic: Decodable {
  
  let resultCount: Int?
  let results    : [DecDetailMusicResult]?
}
