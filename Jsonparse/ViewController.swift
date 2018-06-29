//
//  ViewController.swift
//  Jsonparse
//
//  Created by vikas srivastava on 29/06/18.
//  Copyright © 2018 vikas srivastava. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    private var actorDataStore = [Actor]()

    @IBOutlet weak var actorTable: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        DispatchQueue.global(qos: .background).async {
            self.callApi()
        }
        // changes done ljlknklnknk,
    }
    
    func callApi()  {
        APIManger.shared.getActorsFromServer { (Actor) in
            
          self.actorDataStore = Actor
            print(Actor)
//            DispatchQueue.global(qos: .main).async {
//                self.actorTable.reloadData()
//            }
            DispatchQueue.main.async {
                  self.actorTable.reloadData()
            }
        }
       
    }
 
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return actorDataStore.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "actorcell", for: indexPath) as! ActorcellTableViewCell
        cell.actorName.text = actorDataStore[indexPath.row].name
        cell.actorCountry.text = actorDataStore[indexPath.row].country
        cell.actorDescription.text = actorDataStore[indexPath.row].description
        cell.actorImage.loadImageUsingCacheWithUrlString(actorDataStore[indexPath.row].image)
        return cell
    }

}

