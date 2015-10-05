//
//  Debug.swift
//  Sample
//
//  Created by g08m11 on 2015/09/18.
//  Copyright (c) 2015年 Bloc. All rights reserved.
//

import Foundation

struct Debug {
  static func debugInfoPlist(file: String = __FILE__, function: String = __FUNCTION__, line: Int = __LINE__) {
    var str = ""
    for (k, v) in NSBundle.mainBundle().infoDictionary! {
      str += "\(k) : \(v)\n"
    }
    log("\(str)", file: file, function: function,  line: line)
  }
  
  static func log(message: AnyObject,
    function: String = __FUNCTION__,
    file: String = __FILE__,
    line: Int = __LINE__) {
      #if DEBUG
        var str = "\(message)\n-- FileName: \(file)\n-- Method: \(function)\n-- Line: \(line)"
        str = str.stringByReplacingOccurrencesOfString("\n", withString: "\n  ", options: nil, range: nil)
        println("\n*** \(str)\n")
      #endif
  }
}