//
//  NSDate+RFC339.swift
//  YleAreenaAPI
//
//  Created by Juhani Vanhala on 31.1.2016.
//  Copyright © 2016 Juhani Vanhala. All rights reserved.
//

import Foundation

extension NSDate {
    
    convenience init? (dateString : String){
        if let d = rfc3339formatter.dateFromString(dateString){
            self.init(timeInterval:0,sinceDate:d)
        }
        else{
            return nil
        }
    }
    
    var stringFormattedAsRFC3339: String {
        return rfc3339formatter.stringFromDate(self)
    }
}

private var rfc3339formatter:NSDateFormatter = {
    let formatter = NSDateFormatter()
    formatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSS'Z"
    formatter.timeZone = NSTimeZone(forSecondsFromGMT: 0)
    formatter.calendar = NSCalendar(calendarIdentifier: NSCalendarIdentifierISO8601)!
    formatter.locale = NSLocale(localeIdentifier: "en_US_POSIX")
    return formatter
}()