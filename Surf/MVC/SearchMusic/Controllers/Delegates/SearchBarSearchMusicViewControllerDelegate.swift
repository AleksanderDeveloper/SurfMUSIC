//
//  SearchBarSearchMusicViewControllerDelegate.swift
//  Surf
//
//  Created by Aleksandr on 29.02.2020.
//  Copyright © 2020 Aleksandr. All rights reserved.
//
import UIKit

extension SearchMusicViewController: UISearchBarDelegate, UISearchControllerDelegate, UISearchResultsUpdating {
  
  func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
    self.activityView.show(true)
    self.controllers?.logic?.searchMusic(searchText: searchText)
  }
  
  func updateSearchResults(for searchController: UISearchController) {
    
  }
}
