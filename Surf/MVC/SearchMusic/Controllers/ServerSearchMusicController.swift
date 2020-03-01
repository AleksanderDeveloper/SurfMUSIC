//SearchMusic

import UIKit

class ServerSearchMusicController: NSObject, LifeCycloble, Controllers {
	
	//MARK: - Public variable
	public var VC: SearchMusicViewController!
	
	//MARK: - Public functions
	public func viewDidLoad(){
    self.getSearchMusic()
	}
 //MARK: - Get search music
 public func getSearchMusic(searchText: String = "music"){
  self.VC.activityView.show(true)
   //Request
   self.VC.server.request(requestType: .GETSearchMusic, data: searchText, vc: self.VC) { (serverResult) in
     //Response
     switch serverResult {
       case .error(let error):
         print("Error ", error!.localizedDescription)
         Alert.dеfault(vc: self.VC, textAlert: .noJSON)
       //Susses
       case .object(let object):
         let searchResult = object as! DecSearchMusic
         self.VC.controllers?.present.setTableData(resultSearch: searchResult)
         self.VC.activityView.show(false)
     }
   }
 }
}

//MARK: - Initial
extension ServerSearchMusicController {
	//MARK: - Inition
	convenience init(vc: UIViewController) {
		self.init()
		self.VC = vc as? SearchMusicViewController
	}
}

