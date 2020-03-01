//
//  SearchMusic.swift
//  Surf
//
//  Created by Aleksandr on 29.02.2020.
//  Copyright © 2020 Aleksandr. All rights reserved.
//
import UIKit

class SearchMusicViewController: UIViewController {
	
  //MARK: - Public variable
  public var controllers: SearchMusicControllers? {
    get {
      return SearchMusicControllers(setup  : setupController,
                                    server : serverController,
                                    present: presentController,
                                    logic  : logicController)
    }
  }
  public let searchController = UISearchController(searchResultsController: nil)
	
	//MARK: - Controllers
	private var setupController  : SetupSearchMusicController!
	private var serverController : ServerSearchMusicController!
	private var presentController: PresentSearchMusicController!
	private var logicController  : LogicSearchMusicController!
  
  //MARK: - Outlets
  @IBOutlet weak var searchMusicTable: SearchMusicTable!
  @IBOutlet weak var server          : Server!
  @IBOutlet weak var activityView    : UIActivityIndicatorView!
	
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
		self.setupController   = SetupSearchMusicController(vc: self)
		self.serverController  = ServerSearchMusicController(vc: self)
		self.presentController = PresentSearchMusicController(vc: self)
		self.logicController   = LogicSearchMusicController(vc: self)
	}
}




