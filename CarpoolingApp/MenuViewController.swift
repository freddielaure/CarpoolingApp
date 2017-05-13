//
//  MenuViewController.swift
//  CarpoolingApp
//
//  Created by Laure Tchagam on 10.05.17.
//  Copyright © 2017 Laure Tchagam. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController,UITableViewDelegate,UITableViewDataSource{

    var menuNameArr:Array =  [String]()
    var iconeImage: Array = [UIImage]()
    
    @IBOutlet weak var ImgProfil: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        menuNameArr = ["Home","Fahrt finden","Fahrt anbieten","Setting"]
        iconeImage = [UIImage(named: "home")!,UIImage(named: "search")!,UIImage(named: "addImage")!,UIImage(named: "setting")!]
        
        ImgProfil.layer.borderColor = UIColor(red:0.25, green:0.60, blue:1.00, alpha:1.0)
.cgColor
        ImgProfil.layer.cornerRadius = 50
        ImgProfil.layer.borderWidth = 2
        ImgProfil.layer.masksToBounds = false
        ImgProfil.clipsToBounds = true

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return menuNameArr.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MenuTableViewCell") as! MenuTableViewCell
       
        cell.imgIcon.image = iconeImage[indexPath.row]
        cell.lblMenuName.text! = menuNameArr[indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let revealViewController:SWRevealViewController = self.revealViewController()
        
        let cell:MenuTableViewCell = tableView.cellForRow(at: indexPath) as! MenuTableViewCell
       
        print(cell.lblMenuName.text!)

        if cell.lblMenuName.text! == "Home"
        {
            let mainStoryboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
            let desController = mainStoryboard.instantiateViewController(withIdentifier: "ViewController") as! ViewController
            let newFrontviewController = UINavigationController.init(rootViewController:desController)
            
            revealViewController.pushFrontViewController(newFrontviewController, animated: true)
        }
        
        
        
        if cell.lblMenuName.text! == "Fahrt finden"
        {
            let mainStoryboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
            let desController = mainStoryboard.instantiateViewController(withIdentifier: "MessageViewController") as! MessageViewController
            let newFrontviewController = UINavigationController.init(rootViewController:desController)
            
            revealViewController.pushFrontViewController(newFrontviewController, animated: true)
        }
        if cell.lblMenuName.text! == "Fahrt anbieten"
        {
            print("Fahrt anbieten Tapped")
        }
        if cell.lblMenuName.text! == "Setting"
        {
            print("setting Tapped")
        }
    }
    
 
}
