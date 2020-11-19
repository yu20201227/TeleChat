//
//  RoomViewController.swift
//  TeleChat
//
//  Created by Owner on 2020/11/07.
//

import UIKit
import ViewAnimator


class RoomViewController: UIViewController,UITableViewDataSource,UITableViewDelegate{
    
    
    @IBOutlet weak var tableView: UITableView!
    
    
    var roomNameArray = ["good","bad","notbad","great","super","notsogood","great","brilliant","notthebest","clear"]
    
    var roomImageStringArray = ["0","1","2","3","4","5","6","7","8","9"]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.isHidden = true
        

    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        tableView.isHidden = false
        
        let animation = [AnimationType.vector(CGVector(dx: 0, dy: 30))]
        UIView.animate(views:tableView.visibleCells,animations: animation,completion: nil)
     
    }
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return roomNameArray.count
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "RoomCell", for: indexPath)
        let imageView = cell.contentView.viewWithTag(1) as! UIImageView
        imageView.image = UIImage(named: roomImageStringArray[indexPath.row])
        
        let label = cell.contentView.viewWithTag(2) as! UILabel
        label.text = roomNameArray[indexPath.row]
        
        return cell
        
        //cell.imageView?.image = UIImage(named: roomImageStringArray[indexPath.row])
        //cell.imageView?.contentMode = .scaleAspectFill
        //cell.textLabel?.text = roomNameArray[indexPath.row]
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 118
    }

    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        performSegue(withIdentifier: "RoomChat", sender: indexPath.row)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let roomChatVC = segue.destination as! ChatViewController
        roomChatVC.roomName = roomNameArray[sender as! Int]
    }
    

}
