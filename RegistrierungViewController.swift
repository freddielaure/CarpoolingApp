//
//  RegistrierungViewController.swift
//  CarpoolingApp
//
//  Created by Laure Tchagam on 03.06.17.
//  Copyright © 2017 Laure Tchagam. All rights reserved.
//

import UIKit

class RegistrierungViewController: UIViewController,UINavigationBarDelegate,UINavigationControllerDelegate {

    @IBOutlet weak var btnButton1: UIBarButtonItem!
    
    @IBOutlet weak var lblFontAwason1: UILabel!
    
    @IBOutlet weak var btnFacebookButton: UIButton!
    
    @IBOutlet weak var btnAnmeldenButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fontawesone1()
        
        self.navigationController?.isToolbarHidden = false
        self.navigationController?.toolbar.barTintColor=UIColor(red:0.13, green:0.46, blue:0.64, alpha:1.0)

                btnButton1.target = revealViewController()
                btnButton1.action = #selector(SWRevealViewController.revealToggle(_:))
                self.navigationController?.navigationBar.topItem?.title = "Anmelden";
                navigationController?.navigationBar.barTintColor = UIColor(red:0.25, green:0.60, blue:1.00, alpha:1.0)
                navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.white]
        
        
        btnFacebookButton.layer.cornerRadius = 15
        btnAnmeldenButton.layer.cornerRadius = 15
        

        
                
   
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func fontawesone1(){
        var faicon = [String:UniChar]()
        
        faicon["fafacebook"]=0xf09a
        lblFontAwason1.font = UIFont(name: "FontAwesome", size:25)
        lblFontAwason1.text = String(format: "%C",faicon["fafacebook"]!)
        
    }
    
    

    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
