//
//  ViewController.swift
//  My app space
//
//  Created by Hector  on 11/4/15.
//  Copyright (c) 2015 beardboy. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{

    var list = ["Historia","Info","Proyectos","Galeria"]
    var listPost:Array<Post> = []
    var itemSelected = -1
    var img =
    [
        "1.jpg","2.jpg","3.jpg","4.jpg","5.jpg","6.jpg","7.jpg","8.jpg","1.jpg"
    ]
    
    @IBOutlet weak var myTable: UITableView!
    
    var queue: NSOperationQueue?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let server:Server = Server()
        queue = NSOperationQueue()
        server.httpGet(self.callbackGet)

        
    }

    func callbackGet (result: Array<Post>, error: String?){
        if error != nil{
            println("Error in callbackGet: \(error)")
        }
        
        listPost = result
        self.myTable.reloadData()
        var index = NSIndexPath(forRow: listPost.count, inSection: 1)
//        queue?.name = "mx.riactive.ui-thread"
//        queue?.maxConcurrentOperationCount = 2
//        self.myTable.reloadRowsAtIndexPaths(listPost, withRowAnimation: UITableViewRowAnimation.Fade)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    
    }
    
    
    
    func tableView(tableView: UITableView, indentationLevelForRowAtIndexPath indexPath: NSIndexPath) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listPost.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell:CollectionCellViewCell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as CollectionCellViewCell
        
        if listPost[indexPath.row].img != ""{
            
//            queue?.name = "mx.riactive.ui-thread"
//            queue?.maxConcurrentOperationCount = 2
//////            performOperation("http://www.nasa.gov/sites/default/files/styles/673xvariable_height/public/3_2.jpg?itok=pk1EOjAM", index: indexPath)
//            
            
//            cell.img.image = UIImage(data: dat!)
        }
        
        cell.img.image = UIImage(named: img[indexPath.row])
        cell.label.text = listPost[indexPath.row].name
        
        return cell
    }
    
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let item = myTable.indexPathForSelectedRow()
        var post = listPost[item!.row]
        post.img = img[item!.row]
       ((segue.destinationViewController as DetailsUIViewController)).post = post
    }
}

