//
//  ViewController.swift
//  carCollection
//
//  Created by Mohammad Kiani on 2019-11-06.
//  Copyright © 2019 mohammadkiani. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    var carNames = ["car1", "car2", "car3", "car4", "car5", "car6", "car7", "car8", "car9"]
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return carNames.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "carCell", for: indexPath) as! CarImageCell
//        cell.carName = carNames[indexPath.row]
        cell.carImageaView.image = UIImage(named: carNames[indexPath.row])
        return cell
    }
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

