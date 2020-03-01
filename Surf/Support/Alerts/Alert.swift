//
//  Alert.swift
//  Surf
//
//  Created by Aleksandr on 29.02.2020.
//  Copyright © 2020 Aleksandr. All rights reserved.
//
import UIKit

struct Alert {
  
  static private var text  = TextsProject()
  static private var alert : UIAlertController!
  
  //MARK: - Default
  static func dеfault(vc: UIViewController, textAlert: TextAlert, completion: ClousureEmpty? = nil){
    let message = Alert.text[.Message, textAlert]
    let title   = Alert.text[.Title, textAlert]
    alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
    alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: { (alert) in
      completion??()
    }))
    vc.present(alert, animated: true)
  }
  //MARK: -  Worning
  static func worning(vc: UIViewController, textAlert: TextAlert){
    let message = Alert.text[.Message, textAlert]
    let title   = Alert.text[.Title, textAlert]
    alert = UIAlertController(title: title, message: message , preferredStyle: .alert)
    vc.present(alert, animated: true)
  }
}



