//
//  NavigationSearchMusicViewController.swift
//  Surf
//
//  Created by Aleksandr on 29.02.2020.
//  Copyright © 2020 Aleksandr. All rights reserved.
//
import UIKit

extension SearchMusicViewController {
  
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    super.prepare(for: segue, sender: sender)
    switch segue.ID() {
      case .SearchMusicVC_DetailMusicVC:
        (segue.destination as! DetailMusicViewController).albomID = sender as? String
    default:
      break
    }
  }
}
