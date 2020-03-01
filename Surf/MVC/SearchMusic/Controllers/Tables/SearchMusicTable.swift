//
//  File.swift
//  Surf
//
//  Created by Aleksandr on 29.02.2020.
//  Copyright © 2020 Aleksandr. All rights reserved.
//
import UIKit

class SearchMusicTable: NSObject {
  
  public var tableView   : UITableView!
  public var resultSearch: DecSearchMusic!
  public var controllers : SearchMusicControllers!
}
//MARK: - Delegate
extension SearchMusicTable: UITableViewDelegate {

  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    self.controllers?.logic?.pushDetailMusic(searchMusic: resultSearch.results?[indexPath.row])
  }
}
//MARK: - DataSources
extension SearchMusicTable: UITableViewDataSource {
  
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    self.tableView = tableView
  return resultSearch?.results?.count ?? 0
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = SearchMusicTableViewCell().tableCell(owner: self)
    cell.configure(artistData: self.resultSearch.results?[indexPath.row].artistData)
  return cell
  }
  func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    return 59
  }
}
