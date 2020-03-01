//
//  SearchMusicTableViewCell.swift
//  Surf
//
//  Created by Aleksandr on 29.02.2020.
//  Copyright © 2020 Aleksandr. All rights reserved.
//
import UIKit
import SDWebImage

class SearchMusicTableViewCell: UITableViewCell, LoadNidoble {
  
  //MARK: - Outlets
  @IBOutlet weak var albomImageView : UIImageView!
  @IBOutlet weak var albomNameLabel : UILabel!
  @IBOutlet weak var artistNameLabel: UILabel!
  @IBOutlet weak var activityView   : UIActivityIndicatorView!

  //MARK: - Configure self cell
  public func configure(artistData: ArtistData?){
    guard let artistData = artistData else { return }
    //set dta
    self.albomNameLabel.text  = artistData.albom
    self.artistNameLabel.text = artistData.name
    self.setImageAlbom(urlString: artistData.albomImage)
  }
  //MARK: - Set iamge albom artist
  private func setImageAlbom(urlString: String?){
    self.activityView.show(true)
    guard let urlString = urlString else { return }
    let url = URL(string: urlString)
    self.albomImageView.sd_setImage(with: url) { [unowned self]  (_, _, _, _) in
      self.activityView.show(false)
    }
  }
}
