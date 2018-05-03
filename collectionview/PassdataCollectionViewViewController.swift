//
//  PassdataCollectionViewViewController.swift
//  collectionview
//
//  Created by nikhil boriwale on 5/2/18.
//  Copyright © 2018 infostretch. All rights reserved.
//

import UIKit

class PassdataCollectionViewViewController: UIViewController {

    @IBOutlet weak var collimage: UIImageView!
    @IBOutlet weak var colllblname: UILabel!
     var strlblcoll : String?
      var strcollimage : UIImage?
    override func viewDidLoad() {
        super.viewDidLoad()
       
        
       if collimage != nil{
             collimage.image = strcollimage
        print(collimage!)
        }else{
            print("nil")
        }
        if colllblname != nil{
            colllblname.text = strlblcoll
            print(colllblname!)
            
        }else{
            print("nil")
        }
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
