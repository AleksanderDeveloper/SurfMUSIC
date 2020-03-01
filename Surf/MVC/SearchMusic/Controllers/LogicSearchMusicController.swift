//SearchMusic

import UIKit

class LogicSearchMusicController: NSObject, LifeCycloble, Controllers {
	
	//MARK: - Public variable
	public var VC: SearchMusicViewController!
	
	//MARK: - Public functions
	public func viewDidLoad(){
		
	}
  //MARK: - Search music
  public func searchMusic(searchText: String?){
    guard let searchText = searchText else { return }
    if searchText != "" {
      self.VC.controllers?.server.getSearchMusic(searchText: searchText)
    } else {
      self.VC.controllers?.server.getSearchMusic(searchText: "Music")
    }
  }
  //MARK: - Push DetailMusic after click table view cell
  public func pushDetailMusic(searchMusic: DecSearchMusicResult?){
    let albomID = searchMusic?.artistData?.albomID
    self.VC.pushVCSegueID(sgID: .SearchMusicVC_DetailMusicVC, sender: albomID)
  }
}
//MARK: - Initial
extension LogicSearchMusicController {
	
	//MARK: - Inition
	convenience init(vc: UIViewController) {
		self.init()
		self.VC = vc as? SearchMusicViewController
	}
}
