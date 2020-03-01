//DetailMusic

import UIKit

class PresentDetailMusicController: NSObject, LifeCycloble, Controllers {
	
	//MARK: - Public variable
	public var VC: DetailMusicViewController!
	
	//MARK: - Public functions
	public func viewDidLoad(){
		
	}
  //MARK: - Set TableData after get search request
  public func setTableData(resultDetail: DecDetailMusic){
    self.VC?.detailMusicCollection?.controllers  = self.VC.controllers
    self.VC?.detailMusicCollection?.resultDetail = resultDetail
    self.VC?.detailMusicCollection?.collection?.reloadData()
  }
}
//MARK: - Initial
extension PresentDetailMusicController {
	
	//MARK: - Inition
	convenience init(vc: UIViewController) {
		self.init()
		self.VC = vc as? DetailMusicViewController
	}
}
