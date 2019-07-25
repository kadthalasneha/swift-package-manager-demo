//
//  JsonData.swift
//  PackageManager
//
//  Created by KADTHALA SNEHA on 05/03/19.
//

import Foundation
import SwiftyJSON

class JsonData{
    func withSwiftyJSon(){
        
        let jsonString = "{\"name\":\"sneha\",\"birthday\":{\"year\":1990,\"month\":1,\"day\":1},\"isActive\":true,\"contacts\":[{\"type\":\"email\",\"value\":\"abc@test.com\"},{\"type\":\"phone\",\"value\":\"9856321475\"}]}"
        
        if let dataFromString = jsonString.data(using: String.Encoding.utf8, allowLossyConversion: false) {
            do{
                let userJson = try JSON(data: dataFromString)
                
                if let name = userJson["name"].string {
                    print("name is :\(name)")
                }
                
               if let year  = userJson["birthday"]["year"].number,
                    let month = userJson["birthday"]["month"].number,
                    let day   = userJson["birthday"]["day"].number {
                    print("data od birth is: \(day)-\(month)-\(year)")
                    
                }
                if let isActive = userJson["isActive"].bool {
                    print("is active: \(isActive)")
                    
                }
                if let contactArr = userJson["contacts"].array {
                    for contactDict in contactArr {
                        if let type = contactDict["type"].string {
                            print(type)
                            // get type
                        }
                        if let value = contactDict["value"].string {
                            print(value)
                            
                        }
                    }
                }
                
            }
            catch {
                print("error")
            }
            
        }
    }
        
        
        
        
    
   
    
    
    

}
