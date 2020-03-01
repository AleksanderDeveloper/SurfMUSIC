//
//  LifeCycloble.swift
//  Surf
//
//  Created by Aleksandr on 29.02.2020.
//  Copyright © 2020 Aleksandr. All rights reserved.
//
import UIKit

@objc(LifeCycleble)
protocol LifeCycloble {
	@objc optional func viewWillAppear()
	@objc optional func viewDidAppear()
	@objc optional func viewWillDisappear()
	@objc optional func viewDidDisappear()
	@objc optional func viewDidLayoutSubviews()
	@objc optional func viewWillLayoutSubviews()
	
}

