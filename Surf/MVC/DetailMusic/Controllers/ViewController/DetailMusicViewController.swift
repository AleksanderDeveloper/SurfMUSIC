//
//  DetailMusic.swift
//  Surf
//
//  Created by Aleksandr on 29.02.2020.
//  Copyright © 2020 Aleksandr. All rights reserved.
//
import UIKit

class DetailMusicViewController: UIViewController {
	
  //MARK: - Public variable
  public var controllers: DetailMusicControllers? {
    get {
      return DetailMusicControllers(setup  : setupController,
                                    server : serverController,
                                    present: presentController,
                                    logic  : logicController)
    }
  }
  public var albomID: String?
	
	//MARK: - Outlets controllers
	private var setupController  : SetupDetailMusicController!
	private var serverController : ServerDetailMusicController!
	private var presentController: PresentDetailMusicController!
	private var logicController  : LogicDetailMusicController!
  
  //MARK: - Outlets
  @IBOutlet weak var collectionView       : UICollectionView!
  @IBOutlet weak var detailMusicCollection: DetailMusicCollection!
  @IBOutlet weak var server               : Server!
	
	//MARK: - LifeCycle
	override func viewDidLoad() {
		super.viewDidLoad()
		self.initial()
		self.setupController.viewDidLoad()
		self.serverController.viewDidLoad()
		self.presentController.viewDidLoad()
		self.logicController.viewDidLoad()
	}
	//MARK: - Initial
	private func initial(){
		self.setupController   = SetupDetailMusicController(vc: self)
		self.serverController  = ServerDetailMusicController(vc: self)
		self.presentController = PresentDetailMusicController(vc: self)
		self.logicController   = LogicDetailMusicController(vc: self)
	}
}




