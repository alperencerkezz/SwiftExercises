//
//  ViewController.swift
//  CollectionView Lab-1
//
//  Created by Alperen Çerkez on 11.11.2024.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
 
    @IBOutlet weak var cvProducts: UICollectionView!
    var ProductList: [Product] = []
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var p = Product()
        p.Title = "Milk"
        p.Price = 40
        p.ShortDescription = "Product 1 short description"
        p.ImgName = "milk"
        
        ProductList.append(p)
        
        p = Product()
        p.Title = "Beer"
        p.Price = 80
        p.ShortDescription = "Product 2 short description"
        p.ImgName = "beer"
        
        ProductList.append(p)
        
        cvProducts.register(UINib(nibName: "CVC_Product", bundle: nil), forCellWithReuseIdentifier: "CVC_Product")
        cvProducts.collectionViewLayout = ColumnFlowLayout(columnCount: 2, minColumnSpacing: 10, minRowSpacing: 20)
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return ProductList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CVC_Product", for: indexPath) as! CVC_Product
        
        let p = ProductList[indexPath.row]
        
        cell.lblTitle.text = p.Title
        cell.lblShortDescription.text = p.ShortDescription
        cell.lblPrice.text = "\(p.Price!) TL"
        cell.ivImage.image = UIImage(named: p.ImgName!)
        
        return cell
    }


}

