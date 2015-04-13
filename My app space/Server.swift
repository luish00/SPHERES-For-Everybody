//
//  File.swift
//  pitic
//
//  Created by Hector  on 5/4/15.
//  Copyright (c) 2015 beardboy. All rights reserved.
//

import Foundation

class Server {
    
    var list:Array<Post> = []
    
    func httpGet(callback: (Array<Post>, String?) -> Void) {
//    func httpGet( )-> Array<Event>{
        let url = "http://192.168.2.197/app/index.php"
        var request = NSMutableURLRequest(URL: NSURL(string: url)!)
        var session = NSURLSession.sharedSession()
        
        
        //Send data from jason values
//        let jsonString = "jason=[{\"str\":\"Hello\",\"num\":1},{\"str\":\"Goodbye\",\"num\":99}]" // create some JSON data and configure the request
//        request.HTTPBody = jsonString.dataUsingEncoding(NSUTF8StringEncoding, allowLossyConversion: true)
        
        //Send data from values pair
//        let values = "nombre=Hector&password=12345&correo=titit@gmail"
//        request.HTTPBody = values.dataUsingEncoding(NSUTF8StringEncoding)
        
        
        request.HTTPMethod = "POST"
        request.setValue("application/x-www-form-urlencoded", forHTTPHeaderField: "Content-Type")
        
        var e: NSError?
        
        var task = session.dataTaskWithRequest(request){
            (data, response, error) -> Void in
            if error != nil {
                callback([], error.localizedDescription)
                println(error.localizedDescription)
            }else{
                //                var result = NSString(data: data, encoding: NSASCIIStringEncoding)!
                var result = NSString(data: data, encoding: NSASCIIStringEncoding)?
                
                //callback(result, nil)
                // convert NSData to 'AnyObject'
                var dataJason: NSData = result!.dataUsingEncoding(NSUTF8StringEncoding)!
                
                let anyObj: AnyObject? = NSJSONSerialization.JSONObjectWithData(dataJason, options: NSJSONReadingOptions(0), error: &e)
                
                if let isError = e?{
                    println("Error anyObj: \(e)")
                }
                
//                println("result: \(result!)")
                
                self.list = self.parseJson(anyObj!)
                
                callback(self.list, nil)
            }
        }
        task.resume()
        
//        return self.list
    }
    
    
    func callbackGet (result: Array<Post>, error: String?){
        if error != nil{
            println("Error in callbackGet: \(error)")
        }
    }

    func parseJson(anyObj:AnyObject) -> Array<Post>{
        
        var events:Array<Post> = []
        
        if  anyObj is Array<AnyObject> {
            
            var jason: Array<AnyObject> = anyObj as Array<AnyObject>
            let hasResponse = (jason[0][String("result")] as AnyObject? as? String) ?? "false"
            
            if hasResponse == "true"{
                jason.removeAtIndex(0)
                for json in jason{
                    var post:Post = Post()
                    post.name = (json[String("name")] as AnyObject? as? String) ?? ""
                    post.description = (json[String("description")] as AnyObject? as? String) ?? ""
                    let imgOld:String = (json[String("img")] as AnyObject? as? NSString) ?? ""
                    
                    post.img = imgOld.stringByReplacingOccurrencesOfString("\"", withString: "", options: NSStringCompareOptions.LiteralSearch, range: nil)
                    println("\(imgOld)")
                    
                    events.append(post)
                }
            }else{
                var error = (jason[0][String("error")] as AnyObject? as? String)
                println("Error on json \(error)")
            }
        }else{
            println("No is Array<>")
        }
        
        return events
        
    }//func    
   
}
