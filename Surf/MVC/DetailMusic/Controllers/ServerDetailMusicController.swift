//DetailMusic

import UIKit

class ServerDetailMusicController: NSObject, LifeCycloble, Controllers {
	
	//MARK: - Public variable
	public var VC: DetailMusicViewController!
	
	//MARK: - Public functions
	public func viewDidLoad(){
    self.getDetailMusic()
	}
}
//MARK: - Private functions
extension ServerDetailMusicController {
  
  //MARK: - Get search music
  private func getDetailMusic(){
    //Request
    self.VC.server.request(requestType: .GETDetailMusic, data: self.VC.albomID, vc: self.VC) { (serverResult) in
      //Response
      switch serverResult {
        case .error(let error):
          print("Error ", error!.localizedDescription)
          Alert.dеfault(vc: self.VC, textAlert: .noJSON)
        //Susses
        case .object(let object):
          let resultDetail = object as! DecDetailMusic
          self.VC.controllers?.present.setTableData(resultDetail: resultDetail)
      }
    }
  }
}
//MARK: - Initial
extension ServerDetailMusicController {
	
	//MARK: - Inition
	convenience init(vc: UIViewController) {
		self.init()
		self.VC = vc as? DetailMusicViewController
	}
}

