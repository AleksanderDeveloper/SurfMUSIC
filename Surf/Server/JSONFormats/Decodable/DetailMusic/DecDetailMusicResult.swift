//
//  DecDetailMusicResult.swift
//  Surf
//
//  Created by Aleksandr on 29.02.2020.
//  Copyright © 2020 Aleksandr. All rights reserved.
//
import Foundation

struct DecDetailMusicResult {

  public let artistName : String?
  public let albomName  : String?
  public let trackName  : String?
  public let albomUrl130: String?
  public let albomUrl160: String?
  public let albomUrl100: String?
  public let alboPrice  : Double?
  public let trackPrice : Double?
  public let reliseDate : String?
  public let country    : String?
  public let curency    : String?
  public let genre      : String?
 
  
  enum DecDetailMusicResultCodingKey: String, CodingKey {
    
    case artistID    = "artistId"
    case albomID     = "collectionId"
    case trackID     = "trackId"
    case artistName  = "artistName"
    case albomName   = "collectionName"
    case trackName   = "trackName"
    case previewUrl  = "previewUrl"
    case albomUrl130 = "artworkUrl30"
    case albomUrl160 = "artworkUrl60"
    case albomUrl100 = "artworkUrl100"
    case alboPrice   = "collectionPrice"
    case trackPrice  = "trackPrice"
    case reliseDate  = "releaseDate"
    case country     = "country"
    case curency     = "currency"
    case genre       = "primaryGenreName"
  }
  
}
extension DecDetailMusicResult: Decodable {
  
  init(from decoder: Decoder) throws {
    
    let values = try decoder.container(keyedBy: DecDetailMusicResultCodingKey.self)
  
    self.artistName  = try? values.decode(String?.self, forKey: .artistName)
    self.albomName   = try? values.decode(String?.self, forKey: .albomName)
    self.trackName   = try? values.decode(String?.self, forKey: .trackName)
    self.albomUrl130 = try? values.decode(String?.self, forKey: .albomUrl130)
    self.albomUrl160 = try? values.decode(String?.self, forKey: .albomUrl160)
    self.albomUrl100 = try? values.decode(String?.self, forKey: .albomUrl100)
    self.alboPrice   = try? values.decode(Double?.self, forKey: .alboPrice)
    self.trackPrice  = try? values.decode(Double?.self, forKey: .trackPrice)
    self.reliseDate  = try? values.decode(String?.self, forKey: .reliseDate)
    self.country     = try? values.decode(String?.self, forKey: .country)
    self.curency     = try? values.decode(String?.self, forKey: .curency)
    self.genre       = try? values.decode(String?.self, forKey: .genre)
  }
}
