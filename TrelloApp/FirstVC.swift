//
//  FirstVC.swift
//  TrelloApp
//
//  Created by Asfand HAfeez on 11/12/2018.
//  Copyright © 2018 Asfand HAfeez. All rights reserved.
//

import UIKit

class FirstVC: UIViewController , UICollectionViewDelegate , UICollectionViewDataSource , UICollectionViewDelegateFlowLayout  {
  
    
    let layout = UICollectionViewFlowLayout()
    @IBOutlet weak var collectionView: UICollectionView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.dataSource = self
        collectionView.delegate = self
        
        
        
        
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
        
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
       if  let cell =  collectionView.dequeueReusableCell(withReuseIdentifier: "cellid", for: indexPath) as? ListView {
            
            return cell
        }
        return UICollectionViewCell()
        
        
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: self.view.frame.width, height: self.view.frame.height - 40)
    }
    
    

}

class ListView: UICollectionViewCell  , UITableViewDataSource , UITableViewDelegate  {

    

    @IBOutlet weak var tableView: UITableView!
    override func awakeFromNib() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = "Trello"
        return cell
        
    }
}
