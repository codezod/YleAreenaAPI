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
        
        let builder = QueryBuilder(baseUrl : base)
        
        builder.append(identifier : "id", queryVal : self.ids.count > 0 ? self.ids.joinWithSeparator(",") : nil)
        builder.append(identifier : "type", queryVal : self.type?.rawValue)
        builder.append(identifier : "q", queryVal : self.q)
        builder.append(identifier : "mediaobject", queryVal : self.mediaobject?.rawValue)
        builder.append(identifier : "category", queryVal : self.categories.count > 0 ? self.categories.map({
            (let category ) -> String in
            return category.id
            }).joinWithSeparator(",") : nil)
        builder.append(identifier : "series", queryVal : self.series.count > 0 ? self.series.joinWithSeparator(",") : nil)
        builder.append(identifier : "availability", queryVal : self.availability?.rawValue)
        if let _ = self.downloadable {
            builder.append(identifier : "downloadable", queryVal : "true")
        }
        builder.append(identifier: "language", queryVal : self.language?.rawValue)
        builder.append(identifier: "region", queryVal: self.region?.rawValue)
        builder.append(identifier: "serivce", queryVal: self.service?.rawValue)
        builder.append(identifier: "publisher", queryVal: self.publisher)
        builder.append(identifier: "contentprotection", queryVal: self.contentprotection.count > 0 ? self.contentprotection.joinWithSeparator(",") : nil)
        builder.append(identifier: "order", queryVal : self.order?.rawValue)
        builder.append(identifier: "limit", queryVal: self.limit?.description)
        builder.append(identifier: "offset", queryVal: self.offset?.description)
        
        return(builder.getQueryString())
    }
    
    
    //
    // Builds query strig with proper separators in between query parameters
    //
    class QueryBuilder {
        
        var query : String
        var separator : String
        
        init(let baseUrl base : String?){
            query = base != nil ? base!.lowercaseString.stringByTrimmingCharactersInSet(NSCharacterSet(charactersInString: "/")) : ""
            separator = "?"
        }
        
        
        func append(let identifier id : String, let queryVal value : String?){
            
            self.query += value != nil ? separator + id + "=" + value! : ""
            
            if separator != "&" && value != nil{
                separator = "&"
            }
        }

        
        func getQueryString() -> String{
            return query
        }
    
    }
}