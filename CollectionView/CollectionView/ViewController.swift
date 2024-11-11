//
//  ViewController.swift
//  CollectionView
//
//  Created by Alperen Çerkez on 11.11.2024.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    
    @IBOutlet weak var cvList: UICollectionView!
    var list = ["E 1", "E 2", "E 3", "E 4", "E 5", "E 6", "E 7", "E 8", "E 9", "E 10"]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        cvList.register(UINib(nibName: "CVC_Cell", bundle: nil), forCellWithReuseIdentifier: "CVC_Cell")
        cvList.collectionViewLayout = ColumnFlowLayout(columnCount: 3, minColumnSpacing: 50, minRowSpacing: 50)

    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return list.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CVC_Cell", for: indexPath) as! CVC_Cell
        
        cell.lblText.text = list[indexPath.row]
        
        return cell
    }


}

