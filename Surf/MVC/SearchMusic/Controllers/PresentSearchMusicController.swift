//SearchMusic

import UIKit

class PresentSearchMusicController: NSObject, LifeCycloble, Controllers {
	
	//MARK: - Public variable
	public var VC: SearchMusicViewController!
	
	//MARK: - Public functions
	public func viewDidLoad(){
		
	}
  //MARK: - Set TableData after get search request
  public func setTableData(resultSearch: DecSearchMusic?){
    self.VC?.searchMusicTable?.controllers  = self.VC.controllers
    self.VC?.searchMusicTable?.resultSearch = resultSearch
    self.VC?.searchMusicTable?.tableView?.reloadData()
  }
}
//MARK: - Initial
extension PresentSearchMusicController {
	
	//MARK: - Inition
	convenience init(vc: UIViewController) {
		self.init()
		self.VC = vc as? SearchMusicViewController
	}
}
