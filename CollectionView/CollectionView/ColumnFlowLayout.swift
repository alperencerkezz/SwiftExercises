//
//  ColumnFlowLayout.swift
//  CollectionView
//
//  Created by Alperen Çerkez on 11.11.2024.
//

import UIKit

class ColumnFlowLayout: UICollectionViewFlowLayout {

    let columnCount: Int
    var heightRatio: CGFloat = (2.0 / 3.0)
    
    init(columnCount: Int, minColumnSpacing: CGFloat = 0, minRowSpacing: CGFloat = 0) {
        self.columnCount = columnCount
        super.init()
        
        self.minimumInteritemSpacing = minColumnSpacing
        self.minimumLineSpacing = minRowSpacing
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func prepare() {
        super.prepare()
        
        guard let collectionView = collectionView else {return}
        
        let spacings = collectionView.safeAreaInsets.left + collectionView.safeAreaInsets.right + minimumInteritemSpacing * CGFloat(columnCount-1)
        
        let elementWidth = ((collectionView.bounds.size.width - spacings) / CGFloat(columnCount)).rounded(.down)
        let elementHeight = elementWidth * heightRatio
        
        itemSize = CGSize(width: elementWidth, height: elementHeight)
    }
}
