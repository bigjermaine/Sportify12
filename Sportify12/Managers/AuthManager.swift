//
//  AuthManager.swift
//  Sportify12
//
//  Created by Apple on 20/02/2023.
//

import Foundation


   final class Authmanager {
    
   static let shared = Authmanager()
    
    private init() {}
    
    
    
    var issignedin:Bool {
        return false
     }
    
    
    private var acessToken:String? {
        
      return nil
    }
    
    private var refreshToken:String? {
        
      return nil
    }
    
    private var tokenExpirationDate: Date? {
        
      return nil
    }
    
    private var shouldrefreshtoken: Date? {
        
      return nil
    }
    
}
