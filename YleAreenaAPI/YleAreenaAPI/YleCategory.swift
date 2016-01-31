//
//  YleCategory.swift
//  YleAreenaAPI
//
//  Created by Juhani Vanhala on 31.1.2016.
//  Copyright © 2016 Juhani Vanhala. All rights reserved.
//

import Foundation

class YleCategory {
    
    init(id: String, inScheme: String, indexDataModified: NSDate){
        self.id = id
        self.inScheme = inScheme
        self.indexDataModified = indexDataModified
    }
    
    var id: String
    
    var inScheme: String
    
    var indexDataModified:  NSDate
}