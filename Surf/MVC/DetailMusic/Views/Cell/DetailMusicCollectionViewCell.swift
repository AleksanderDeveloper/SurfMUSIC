//
//  DetailMusicCollectionViewCell.swift
//  Surf
//
//  Created by Aleksandr on 29.02.2020.
//  Copyright © 2020 Aleksandr. All rights reserved.
//
import SDWebImage
import UIKit

class DetailMusicCollectionViewCell: UICollectionViewCell {
    
  //MARK: - Outlets
  @IBOutlet weak var albomNamelabel  : UILabel!
  @IBOutlet weak var artistNamelabel : UILabel!
  @IBOutlet weak var trackNamelabel  : UILabel!
  @IBOutlet weak var trackPricelabel : UILabel!
  @IBOutlet weak var albomPricelabel : UILabel!
  @IBOutlet weak var releaseDatalabel: UILabel!
  @IBOutlet weak var countrylabel    : UILabel!
  @IBOutlet weak var genrelabel      : UILabel!
  @IBOutlet weak var albomImageView  : UIImageView!
  @IBOutlet weak var activityView    : UIActivityIndicatorView!
  
  //MARK: - Configure cell
  public func configure(detailMusic: DecDetailMusicResult?){
    guard let detailMusic = detailMusic else { return }
    //Set data cell
    self.albomNamelabel.text   = detailMusic.albomName
    self.artistNamelabel.text  = detailMusic.artistName
    self.trackNamelabel.text   = detailMusic.trackName
    self.trackPricelabel.text  = String(detailMusic.trackPrice ?? 0)
    self.albomPricelabel.text  = String(detailMusic.alboPrice ?? 0)
    self.releaseDatalabel.text = detailMusic.reliseDate
    self.genrelabel.text       = detailMusic.genre
    self.countrylabel.text     = detailMusic.country
    self.setImageAlbom(urlString: detailMusic.albomUrl160)
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
  override func layoutSubviews() {
    super.layoutSubviews()
    self.cornerRadius(7, false)
    self.shadowColor(color: .gray, radius: 9)
    self.borderColor(.black, 1)
  }
}
