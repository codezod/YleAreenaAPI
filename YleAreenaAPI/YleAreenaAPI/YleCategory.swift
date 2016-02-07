//
//  YleCategory.swift
//  YleAreenaAPI
//
//  Created by Juhani Vanhala on 31.1.2016.
//  Copyright © 2016 Juhani Vanhala. All rights reserved.
//

import Foundation

class YleCategory {
    
    init(id: String, inScheme: String, indexDataModified: NSDate, key : String, title : [Language: String], type : String){
        self.id = id
        self.inScheme = inScheme
        self.indexDataModified = indexDataModified
        self.key = key
        self.title = title
        self.type = type
    }
    
    var id: String
    
    var inScheme: String
    
    var indexDataModified:  NSDate
    
    var key : String
    
    var title : [Language: String]
    
    var type : String
}