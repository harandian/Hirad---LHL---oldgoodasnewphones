//
//  ProductTableViewController.swift
//  oldgoodasnewphones
//
//  Created by Hirad on 2017-07-16.
//  Copyright © 2017 Hirad. All rights reserved.
//

import UIKit

class ProductTableViewController: UITableViewController {
    
    var products: [Product]?

    override func viewDidLoad() {
        
        let product1 = Product()
        let product2 = Product()
        let product3 = Product()
        let product4 = Product()
        
        product1.name = "1907 Wall Set"
        product1.productImage = "phone-fullscreen1"
        product1.cellImage = "image-cell1"
        
        product2.name = "1921 Dial Phone"
        product2.productImage = "phone-fullscreen2"
        product2.cellImage = "image-cell2"
        
        product3.name = "1937 Desk Set"
        product3.productImage = "phone-fullscreen3"
        product3.cellImage = "image-cell3"
        
        product4.name = "1984 Motorla Portable"
        product4.productImage = "phone-fullscreen4"
        product4.cellImage = "image-cell4"
        
        products = [product1, product2, product3, product4]
    }
   
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       
        if let pNames = products {
            return pNames.count
        }
        return 0
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ProductCell", for: indexPath)
    
        
        let product = products?[indexPath.row]
        if let pName = product {
            cell.textLabel?.text = pName.name
            if let i = pName.cellImage {
                cell.imageView?.image = UIImage(named: i)

            }

        }
        
        //cell.textLabel?.text = "Hello Friend"
        //cell.imageView?.image = UIImage(named: "image-cell1")
        
        return cell

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowProduct" {
            
            let productVC = segue.destination as? ProductViewController
            //productVC?.products
            
            guard let cell = sender as? UITableViewCell,
            let indexPath = tableView.indexPath(for: cell)
            else {
                return
            }
                    
                productVC?.product = products? [indexPath.row]
                
            }
        }
    }
