//
//  DetailsUIViewController.swift
//  My app space
//
//  Created by Hector  on 13/4/15.
//  Copyright (c) 2015 beardboy. All rights reserved.
//

import UIKit

class DetailsUIViewController: UIViewController {

    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var detail: UILabel!
    
    var post:Post = Post()
    
    override func viewDidLoad() {
        img.image = UIImage(named: post.img)
        name.text = post.name
        detail.text = post.description
    }
}
