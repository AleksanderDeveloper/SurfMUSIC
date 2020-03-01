//
//  RootVC.swift
//  Surf
//
//  Created by Aleksandr on 29.02.2020.
//  Copyright © 2020 Aleksandr. All rights reserved.
//
import UIKit

class RootVC {
  
  public func set(window: UIWindow?){
    let rootViewController = UIStoryboard.createVC(sbID: .SearchMusic)
    window?.rootViewController = rootViewController
    window?.makeKeyAndVisible()
  }
  public func setScene(windowScene: UIWindowScene?, window: UIWindow?){
    let rootViewController = UIStoryboard.createVC(sbID: .SearchMusic)
    window?.windowScene = windowScene
    window?.rootViewController = rootViewController
    window?.makeKeyAndVisible()
  }
}


