//
//  MessageViewController.swift
//  CarpoolingApp
//
//  Created by Laure Tchagam on 11.05.17.
//  Copyright © 2017 Laure Tchagam. All rights reserved.
//

import UIKit

class MessageViewController: UIViewController,UINavigationBarDelegate,UINavigationControllerDelegate {

    @IBOutlet weak var btnButtonme: UIBarButtonItem!
   
    @IBOutlet weak var lblTextLabel: UILabel!
    
    @IBOutlet weak var lblFontAwason: UILabel!
    
    @IBOutlet weak var textField1: UITextField!
    
    @IBOutlet weak var textField2: UITextField!
    
   
    @IBOutlet weak var textFieldDate: UITextField!
    
    @IBOutlet weak var textFieldTime: UITextField!
    
    @IBOutlet weak var btnMinusButton: UIButton!
   
    @IBOutlet weak var btnPlusButton: UIButton!
    
    @IBOutlet weak var lblNumberPerson: UILabel!
    
    @IBOutlet weak var btnSearchButton: UIButton!
    
    
    
    var numberplus=1
    


    
    override func viewDidLoad() {
        super.viewDidLoad()
         fontawesone1()
         fontawesone2()
        
        self.navigationController?.isToolbarHidden = false
        
        self.navigationController?.toolbar.barTintColor=UIColor(red:0.13, green:0.46, blue:0.64, alpha:1.0)
       
        

        btnButtonme.target = revealViewController()
        btnButtonme.action = #selector(SWRevealViewController.revealToggle(_:))
        self.navigationController?.navigationBar.topItem?.title = "Fahr finden";
        navigationController?.navigationBar.barTintColor = UIColor(red:0.25, green:0.60, blue:1.00, alpha:1.0)
        navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.white]
        
        
     
       

        
        
        btnPlusButton.tag = 5
        btnPlusButton.addTarget(self,action:#selector(buttonClickedplus),
                                for:.touchUpInside)
        
        
        btnMinusButton.tag = 5
        btnMinusButton.addTarget(self,action:#selector(buttonClickedminus),
                                for:.touchUpInside)
        
        textField1.attributedPlaceholder = NSAttributedString(string: "Von",
                                                               attributes: [NSForegroundColorAttributeName: UIColor(red:0.49, green:0.49, blue:0.49, alpha:1.0)])
        textField2.attributedPlaceholder = NSAttributedString(string: "Nach",
                                                              attributes: [NSForegroundColorAttributeName: UIColor(red:0.49, green:0.49, blue:0.49, alpha:1.0)])
        textFieldDate.attributedPlaceholder = NSAttributedString(string: "Datum",
                                                              attributes: [NSForegroundColorAttributeName: UIColor(red:0.49, green:0.49, blue:0.49, alpha:1.0)])
        textFieldTime.attributedPlaceholder = NSAttributedString(string: "Abfahrt nach",
                                                                 attributes: [NSForegroundColorAttributeName: UIColor(red:0.49, green:0.49, blue:0.49, alpha:1.0)])
        

        
        btnSearchButton.layer.cornerRadius = 15
      

       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func buttonClickedplus(sender:UIButton)
    {
                print("hello")
        if(numberplus<5){
               numberplus += 1
                self.lblNumberPerson.text = String(numberplus)
        }
        
    }
    
    
    func buttonClickedminus(sender:UIButton)
    {
        print("hello")
        if(numberplus>1){
        numberplus -= 1
        self.lblNumberPerson.text = String(numberplus)
    }
        
    }
    func fontawesone1(){
        var faicon = [String:UniChar]()
        
        faicon["famusic"]=0xf192
        faicon["famusicMinus"]=0xf056
        
        
        lblTextLabel.font = UIFont(name: "FontAwesome", size:25)
        lblTextLabel.text = String(format: "%C",faicon["famusic"]!)
        
        lblFontAwason.font = UIFont(name: "FontAwesome", size:25)
        lblFontAwason.text = String(format: "%C",faicon["famusic"]!)
        

        
    }
    
    
    
    func fontawesone2(){
        
        btnMinusButton.titleLabel?.font = UIFont.fontAwesome(ofSize: 20)
        btnMinusButton.setTitle(String.fontAwesomeIcon(name: .minusCircle), for: .normal)
        
        
        btnPlusButton.titleLabel?.font = UIFont.fontAwesome(ofSize: 20)
        btnPlusButton.setTitle(String.fontAwesomeIcon(name: .plusCircle), for: .normal)
        
        
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
