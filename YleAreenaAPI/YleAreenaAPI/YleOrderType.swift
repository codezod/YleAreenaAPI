//
//  YleOrderType.swift
//  YleAreenaAPI
//
//  Created by Juhani Vanhala on 2.2.2016.
//  Copyright © 2016 Juhani Vanhala. All rights reserved.
//

import Foundation

enum YleOrderType : String {
    
    case Playcount6hAsc = "playcount.6h:asc:asc"
    
    case Playcount6hDesc = "playcount.6h:asc:desc"
    
    case Playcount24hAsc = "playcount.24h:asc:asc"
    
    case Playcount24hDesc = "playcount.24h:asc:desc"
    
    case PlaycountWeekAsc = "playcount.week:asc:asc"
    
    case PlaycountWeekDesc = "playcount.week:asc:desc"
    
    case PlaycountMonthAsc = "playcount.month:asc:asc"
    
    case PlaycountMonthDesc = "playcount.month:asc:desc"
    
    case PlaycountStartTimeAsc = "publication.starttime:asc"
    
    case PlaycountStartTimeDesc = "publication.starttime:desc"
    
    case PlaycountEndTimeAsc = "publication.endtime:asc"
    
    case PlaycountEndTimeDesc  = "publication.endtime:desc"
    
    case PlaycountUpdatedAsc = "updated:asc"
    
    case PlaycountUpdatedDesc = "updated:desc"
}