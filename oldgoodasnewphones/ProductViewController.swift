//
//  ProductViewController.swift
//  oldgoodasnewphones
//
//  Created by Hirad on 2017-07-16.
//  Copyright © 2017 Hirad. All rights reserved.
//

import UIKit

class ProductViewController: UIViewController {

    @IBOutlet weak var productNameLabel: UILabel!
    @IBOutlet weak var productImageView: UIImageView!
    
    var product: Product?
    override func viewDidLoad() {
        super.viewDidLoad()

        if let p = product {
            productNameLabel.text = p.name;
            if let i = p.productImage {
                productImageView.image = UIImage(named: i);

            }

        }
    }
    
     
    @IBAction func addToCartPressed(_ sender: UIButton) {
    
            print("Button Pressed")
    }
    


   
}
