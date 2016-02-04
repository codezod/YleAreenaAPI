//
//  UrlQueryable.swift
//  YleAreenaAPI
//
//  Created by Juhani Vanhala on 2.2.2016.
//  Copyright © 2016 Juhani Vanhala. All rights reserved.
//

import Foundation

protocol UrlQueryable {
    
    func toQueryLine(base : String?) -> String
    
}