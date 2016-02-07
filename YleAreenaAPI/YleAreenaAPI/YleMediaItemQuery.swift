//
//  YleMediaItemQuery.swift
//  YleAreenaAPI
//
//  Created by Juhani Vanhala on 31.1.2016.
//  Copyright © 2016 Juhani Vanhala. All rights reserved.
//

import Foundation

struct YleMediaItemQuery {
    
    init(){
        ids = [String]()
        categories = [YleCategory]()
        series = [String]()
        contentprotection = [String]()
    }

    var ids : [String]
    
    var type : YleMediaItemType?
    
    var q : String? //query string
    
    var mediaobject : YleMediaObjectType?
    
    var categories : [YleCategory]
    
    var series : [String]
    
    var availability : YleMediaAvailability?
    
    var downloadable : Bool?
    
    var language : Language?
    
    var region : Region?
    
    var service : YleServiceType?
    
    var publisher : String?
    
    var contentprotection : [String]
    
    var order : YleOrderType?
    
    var limit : Int?
    
    var offset : Int?
}