//DetailMusic

import UIKit

class LogicDetailMusicController: NSObject, LifeCycloble, Controllers {
	
	//MARK: - Public variable
	public var VC: DetailMusicViewController!
	
	//MARK: - Public functions
	public func viewDidLoad(){
		
	}
}
//MARK: - Initial
extension LogicDetailMusicController {
	
	//MARK: - Inition
	convenience init(vc: UIViewController) {
		self.init()
		self.VC = vc as? DetailMusicViewController
	}
}
