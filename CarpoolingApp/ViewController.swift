//
//  ViewController.swift
//  CarpoolingApp
//
//  Created by Laure Tchagam on 10.05.17.
//  Copyright © 2017 Laure Tchagam. All rights reserved.
//

import UIKit


class ViewController: UIViewController{

    @IBOutlet weak var btnMenuButton: UIBarButtonItem!
    
    @IBOutlet weak var bntAnbietenButton: UIButton!
    
    @IBOutlet weak var btnSuchenButton: UIButton!
    
  
    
    
       override func viewDidLoad() {
        super.viewDidLoad()
        if revealViewController() != nil {
        btnMenuButton.target = revealViewController()
        btnMenuButton.action = #selector(SWRevealViewController.revealToggle(_:))
            self.navigationController?.isToolbarHidden = false

            
            self.navigationController?.toolbar.barTintColor=UIColor(red:0.13, green:0.46, blue:0.64, alpha:1.0)
            
            /* var items = [UIBarButtonItem]()
             items.append(
             UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: self, action: nil)
             )
             items.append(
             UIBarButtonItem(barButtonSystemItem: .add, target: self, action: Selector(("onClickedToolbeltButton:")))
             )
             self.navigationController?.toolbar.items = items
              */
            
            
    navigationController?.navigationBar.barTintColor = UIColor(red:0.25, green:0.60, blue:1.00, alpha:1.0)
    navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.white]
    //tabBarController?.tabBar.barTintColor = UIColor.brown
    //tabBarController?.tabBar.tintColor = UIColor.yellow
           
        UIGraphicsBeginImageContext(self.view.frame.size)
            UIImage(named: "background")?.draw(in: self.view.bounds)
            
            let image: UIImage = UIGraphicsGetImageFromCurrentImageContext()!
            
            UIGraphicsEndImageContext()
            
            self.view.backgroundColor = UIColor(patternImage: image)
            
                 }
        
        
        bntAnbietenButton.layer.cornerRadius = 15
        btnSuchenButton.layer.cornerRadius = 15
        
        
        
          }
    
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}



