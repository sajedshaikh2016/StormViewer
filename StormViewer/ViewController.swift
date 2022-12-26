//
//  ViewController.swift
//  StormViewer
//
//  Created by Sajed Shaikh on 26/12/22.
//

import UIKit

class ViewController: UIViewController {
    
    var pictures = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let fm = FileManager.default
        let path = Bundle.main.resourcePath!
        
        let items = try! fm.contentsOfDirectory(atPath: path)
        for item in items {
            if item.hasPrefix("nssl") {
                 // this is a picture load
                pictures.append(item)
            }
        }
        print(pictures)
    }


}

