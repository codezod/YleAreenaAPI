//
//  YleAreenaAPI.swift
//  YleAreenaAPI
//
//  Created by Juhani Vanhala on 31.1.2016.
//  Copyright © 2016 Juhani Vanhala. All rights reserved.
//
//  See developer.yle.fi for documentation

import Foundation

protocol YleAreenaAPI{
    
    //  Returns a collection of items (programs, episodes or clips) matching a specified query.
    //  http://developer.yle.fi/api_docs.html#/programs-api-search-programs-clips-and-episodes
    func searchMediaItems(query: YleMediaItemQuery) -> [YleMediaItem]
    
    //  Returns the program, episode or clip. E.g. /v1/items/1-2.json
    //  http://developer.yle.fi/api_docs.html#/programs-api-get-a-single-program-clip-or-episode
    func getMediaItem(id: String) -> YleMediaItem
    
    //  Returns a collection of categories matching the query
    //  http://developer.yle.fi/api_docs.html#/programs-api-get-categories
    func getCategories(scheme: YleCategoryScheme, limit: Int, offset: Int) -> YleCategory
}