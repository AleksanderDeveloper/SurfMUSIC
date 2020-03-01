//
//  Typealiases.swift
//  Surf
//
//  Created by Aleksandr on 29.02.2020.
//  Copyright © 2020 Aleksandr. All rights reserved.
//
import Foundation

//MARK:- RESULTS CLOUSURE
typealias ClousurePictureSession = ((PictureSessionResult) -> Void)
typealias ClousureServerResult   = ((ServerResult) -> Void)
typealias ClousureDecode         = ((DecodeResult) -> Void)
typealias ClousureSession        = ((SessionResult) -> Void)
typealias ClousureSessionData    = ((SessionDataResult) -> Void)
typealias ClousureRequest        = ((RequestResult) -> Void)
//MARK: - CLOUSURES
typealias Clousure<T>            = ((T) -> Void)
typealias ClousureEmpty          = (() -> Void)?
typealias ClousureTwo<T, G>      = ((T, G) -> Void)
typealias ClousureAny            = ((Any?) -> Void)
//MARK: - CUSTOM TYPE
typealias Header                 = [String: String]

