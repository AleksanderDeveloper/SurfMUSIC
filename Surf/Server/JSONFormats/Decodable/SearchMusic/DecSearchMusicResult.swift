//
//  DecSearchMusicResult.swift
//  Surf
//
//  Created by Aleksandr on 29.02.2020.
//  Copyright © 2020 Aleksandr. All rights reserved.
//
import Foundation

struct DecSearchMusicResult {
  
  //MARK: - Public variable
  private let artistID   : Int?
  private let albomID    : Int?
  private let trackID    : Int?
  private let artistName : String?
  private let albomName  : String?
  private let trackName  : String?
  private let albomUrl130: String?
  private let albomUrl160: String?
  private let albomUrl100: String?
  
  //MARK: - Public variable
  public let artistData : ArtistData?
  
  enum DecSearchMusicResultCodingKey: String, CodingKey {
    
    case artistID    = "artistId"
    case albomID     = "collectionId"
    case trackID     = "trackId"
    case artistName  = "artistName"
    case albomName   = "collectionName"
    case trackName   = "trackName"
    case albomUrl130 = "artworkUrl30"
    case albomUrl160 = "artworkUrl60"
    case albomUrl100 = "artworkUrl100"
  }
  
}
extension DecSearchMusicResult: Decodable {
  
  init(from decoder: Decoder) throws {
    
    let values = try decoder.container(keyedBy: DecSearchMusicResultCodingKey.self)
    
    self.artistID    = try? values.decode(Int?.self   , forKey: .artistID)
    self.albomID     = try? values.decode(Int?.self   , forKey: .albomID)
    self.trackID     = try? values.decode(Int?.self   , forKey: .trackID)
    self.artistName  = try? values.decode(String?.self, forKey: .artistName)
    self.albomName   = try? values.decode(String?.self, forKey: .albomName)
    self.trackName   = try? values.decode(String?.self, forKey: .trackName)
    self.albomUrl130 = try? values.decode(String?.self, forKey: .albomUrl130)
    self.albomUrl160 = try? values.decode(String?.self, forKey: .albomUrl160)
    self.albomUrl100 = try? values.decode(String?.self, forKey: .albomUrl100)
    //custom data
    let id = String(self.albomID ?? 0)
    self.artistData = ArtistData(albom: self.albomName,
                                 name: self.artistName,
                                 albomImage: self.albomUrl160,
                                 albomID: id)
  }
}
