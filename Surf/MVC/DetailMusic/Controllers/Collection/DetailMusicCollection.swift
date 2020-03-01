//
//  DetailMusicCollection.swift
//  Surf
//
//  Created by Aleksandr on 29.02.2020.
//  Copyright © 2020 Aleksandr. All rights reserved.
//
import UIKit

class DetailMusicCollection : NSObject {
  
  public var collection  : UICollectionView!
  public var resultDetail: DecDetailMusic!
  public var controllers : DetailMusicControllers!
}

//MARK: - Delegate CollectionView
extension DetailMusicCollection: UICollectionViewDelegate {
  func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
    
  }
}

//MARK: - DataSource CollectionView
extension DetailMusicCollection: UICollectionViewDataSource {
  
  func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    self.collection = collectionView
  return self.resultDetail?.results?.count ?? 0
  }
  
  func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    let cell = collectionView.dequeueReusableCell(withReuseIdentifier: DetailMusicCollectionViewCell.identifier, for: indexPath) as! DetailMusicCollectionViewCell
    cell.configure(detailMusic: self.resultDetail.results?[indexPath.row])
  return cell
  }
}


