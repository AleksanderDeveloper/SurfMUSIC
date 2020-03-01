//
//  URLParameters.swift
//  Surf
//
//  Created by Aleksandr on 27.02.2020.
//  Copyright © 2020 Aleksandr. All rights reserved.
//
import Foundation


class URLParameters: NSObject {
	
  private var queryKeyQueryValue  : [QueryKey: QueryValue]!
	private var queryKeyStringValue : [QueryKey: String]!
  private var stringKeyStringValue: [String: String]!
  private let apyKey              = "0e136f5c3190f4ecbd019f599f5a33f6"
  private let token               = "9ebe6181e4179df07cf2e4aeb149062b43f09a7387c8e0f9fb199624081c91e1"
 
	
	enum QueryItemsType {
    
    case searchMusic(search: String)
    case detailAlbom(id: String)
	}
	
	enum QueryKey: String {
    
    //Required YES
		case term      //Текстовая строка в кодировке URL, которую вы хотите найти. Например: Джек + Джонсон.
    case country   //Двухбуквенный код страны для магазина, который вы хотите найти. Например: us
    case id
    //Required NO
    case media     //Тип носителя, который вы хотите найти. Например: movie. По умолчанию все.
    case entity    //Тип результатов, которые вы хотите вернуть, относительно указанного типа мультимедиа.
    case attribute //Атрибут, который вы хотите найти в магазинах, относительно указанного типа носителя. Например: entity = allArtist
    case limit     //Количество результатов поиска, которое вы хотите, чтобы iTunes Store
    case lang      //Язык который вы хотите использовать при возврате результатов поиска. Например: en_us
	}
	enum QueryValue: String {
    
    //static country code
    case ru = "RU"
    //static entity responce code
    case limit25 = "25"
    //Values entity/media keys
		case movie
    case podcast
    case music
    case musicVideo
    case album
	}
  enum QueryValueString {
    
    case non
  }
  enum QueryKeyStringValueString {
    
    case non
  }
  enum DictionaryType {
    
    case QueryKeyQueryValue([QueryKey: QueryValue])
    case QueryKeyStringValue([QueryKey: String])
    case StringKeyStringValue([String: String])
  }
  
  //MARK: - Cretae URLQueryItems parameters for url
  public func cretae(queryItems: QueryItemsType, _ valueString: QueryValueString = .non, _ queryKeyStringValueString: QueryKeyStringValueString = .non) -> [URLQueryItem]? {
    
		switch queryItems {
      
			//MARK: - Get request search music
			case .searchMusic(search: let name):
        //create parameters
        self.queryKeyQueryValue  = [ .limit: .limit25, .country: .ru]
        self.queryKeyStringValue = [ .term: name]
        //create query items
        let queryItemsOne = self.createQueryItems(dictionaryType: .QueryKeyQueryValue(self.queryKeyQueryValue))
        let queryItemsTwo = self.createQueryItems(dictionaryType: .QueryKeyStringValue(self.queryKeyStringValue))
        //plus two query
        let queryItems = queryItemsOne + queryItemsTwo
      return queryItems
      
      //MARK: - Get request search music
      case .detailAlbom(id: let idAlbom):
        //create parameters
        self.queryKeyQueryValue  = [ .entity: .album]
        self.queryKeyStringValue = [ .id: idAlbom]
        //create query items
        let queryItemsOne = self.createQueryItems(dictionaryType: .QueryKeyQueryValue(self.queryKeyQueryValue))
        let queryItemsTwo = self.createQueryItems(dictionaryType: .QueryKeyStringValue(self.queryKeyStringValue))
        //plus two query
        let queryItems = queryItemsOne + queryItemsTwo
      return queryItems
		}
	}
  //MARK: - Create Query parameters for url
  private func createQueryItems(dictionaryType: DictionaryType) -> [URLQueryItem] {
    switch dictionaryType {
      
      //MARK: - Create dictionary QueryKey/QueryValue
      case .QueryKeyQueryValue(let dictionary):
        return dictionary.map{ URLQueryItem(name: $0.rawValue, value: $1.rawValue) }
      
       //MARK: - Create dictionary QueryKey/StringValue
      case .QueryKeyStringValue(let dictionary):
        return dictionary.map{ URLQueryItem(name: $0.rawValue, value: $1) }
      
       //MARK: - Create dictionary StringKey/StringValue
      case .StringKeyStringValue(let dictionary):
        return dictionary.map{ URLQueryItem(name: $0, value: $1) }
    }
	}
}


