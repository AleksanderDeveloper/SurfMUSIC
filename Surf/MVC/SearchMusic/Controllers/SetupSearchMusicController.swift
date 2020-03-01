//SearchMusic

import UIKit

class SetupSearchMusicController: NSObject, LifeCycloble, Controllers {
	
	//MARK: - Public variable
	public var VC: SearchMusicViewController!
	
	//MARK: - Public functions
	public func viewDidLoad(){
    self.setupSearchController()
	}
}
//MARK: - Private functions
extension SetupSearchMusicController {
  
  //MARK: - Search bar controller
  private func setupSearchController(){
    self.VC.navigationItem.searchController = self.VC.searchController
    self.VC.navigationItem.hidesSearchBarWhenScrolling = true
    self.VC.definesPresentationContext = true
    self.VC.searchController.searchResultsUpdater = self.VC
    self.VC.searchController.obscuresBackgroundDuringPresentation = false
    self.VC.searchController.searchBar.delegate = self.VC
  }
}
//MARK: - Initial
extension SetupSearchMusicController {
	
	//MARK: - Inition
	convenience init(vc: UIViewController) {
		self.init()
		self.VC = vc as? SearchMusicViewController
	}
}


