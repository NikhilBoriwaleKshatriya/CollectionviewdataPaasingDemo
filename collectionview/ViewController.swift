//
//  ViewController.swift
//  collectionview
//
//  Created by nikhil boriwale on 5/2/18.
//  Copyright © 2018 infostretch. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource {
    @IBOutlet weak var mycollection: UICollectionView!
    var arrlbl = ["Watch1","Watch2","Watch3","Watch4","Watch5","Watch6","Watch7","Watch8","Watch9","Watch10","Watch11","Watch12","Watch13","Watch14","Watch15","Watch16","Watch17","Watch18","Watch19","Watch20"]
    var arrimg = [#imageLiteral(resourceName: "watch10"),#imageLiteral(resourceName: "watch3"),#imageLiteral(resourceName: "watch5"),#imageLiteral(resourceName: "watch7"),#imageLiteral(resourceName: "watch6"),#imageLiteral(resourceName: "watch8"),#imageLiteral(resourceName: "watch9"),#imageLiteral(resourceName: "watch4"),#imageLiteral(resourceName: "watch10"),#imageLiteral(resourceName: "watch3"),#imageLiteral(resourceName: "watch5"),#imageLiteral(resourceName: "watch7"),#imageLiteral(resourceName: "watch6"),#imageLiteral(resourceName: "watch8"),#imageLiteral(resourceName: "watch9"),#imageLiteral(resourceName: "watch4"),#imageLiteral(resourceName: "watch6"),#imageLiteral(resourceName: "watch8"),#imageLiteral(resourceName: "watch9"),#imageLiteral(resourceName: "watch4")]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrlbl.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell: myCollectionViewCell =  collectionView.dequeueReusableCell(withReuseIdentifier: "myCollectionViewCell", for:indexPath)as! myCollectionViewCell
        cell.lblname!.text = arrlbl[indexPath.row]
        cell.myimage!.image = arrimg[indexPath.row]
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let imagedetail :PassdataCollectionViewViewController = self.storyboard?.instantiateViewController(withIdentifier: "PassdataCollectionViewViewController") as! PassdataCollectionViewViewController
      imagedetail.strcollimage = arrimg[indexPath.row]
       imagedetail.strlblcoll = arrlbl[indexPath.row]
        self.navigationController?.pushViewController(imagedetail, animated: true)
        
    }
  

}

