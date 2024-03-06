//
//  DatabaseManager.swift
//  SqliteDatabase
//
//  Created by Deepak on 06/03/24.
//

import Foundation
var shareInstance = DatabaseManager()
class DatabaseManager: NSObject {
    var database:FMDatabase? = nil
    
    class func getInstance() -> DatabaseManager {
        if shareInstance.database == nil {
            shareInstance.database = FMDatabase(path: Util.getPath("SignUp.db"))
        }
        return shareInstance
    }
    
    func saveData(_ modelInfo: SignUpModel)-> Bool {
        shareInstance.database?.open()
        let isSave = shareInstance.database?.executeUpdate("INSERT INTO SignUP(name,email,phone,address) VALUES (?,?,?,?)", withArgumentsIn: [modelInfo.name,modelInfo.email,modelInfo.phone,modelInfo.address])
        shareInstance.database?.close()
        return isSave!
    }
}
