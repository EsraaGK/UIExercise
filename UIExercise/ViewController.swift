//
//  ViewController.swift
//  UIExercise
//
//  Created by EsraaGK on 10/1/19.
//  Copyright © 2019 EsraaGK. All rights reserved.
//

import UIKit

class ViewController: UIViewController,  UICollectionViewDelegate, UICollectionViewDataSource {
    @IBOutlet weak var collectionview: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionview.dataSource = self
        collectionview.delegate = self
        
        ( collectionview.collectionViewLayout as? UICollectionViewFlowLayout)?.scrollDirection = .horizontal
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
      return  10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
      let cell = collectionview.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath)
        let img = cell.viewWithTag(2) as! UIImageView
          img.image  = UIImage(named: "icons8-ninja-head-100")
          (cell.viewWithTag(1) as! UILabel).text = "manshet"
        return cell
    }
    

   


}

