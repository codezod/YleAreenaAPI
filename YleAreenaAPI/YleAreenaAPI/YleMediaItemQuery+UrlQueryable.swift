//
//  YleMediaItemQuery+UrlQueryable.swift
//  YleAreenaAPI
//
//  Created by Juhani Vanhala on 2.2.2016.
//  Copyright © 2016 Juhani Vanhala. All rights reserved.
//

import Foundation

extension YleMediaItemQuery : UrlQueryable {
    
    func toQueryLine(base : String?) -> String {
        
        var query : String
        
        query = base != nil ? base!.lowercaseString : ""
        query = query + (self.ids != nil ? self.ids!.joinWithSeparator(",") + "&" : "")
        query = query + (self.availability != nil ? self.availability!.rawValue + "&" : "")
    
        return(query)
    }
    
}