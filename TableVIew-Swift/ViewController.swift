//
//  ViewController.swift
//  TableVIew-Swift
//
//  Created by anneka naganuma on 2015/03/11.
//  Copyright (c) 2015年 anneka. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    
    /*変数の宣言*/
    @IBOutlet var tableView: UITableView!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var picture: UIImageView!
    
    /*配列の宣言*/
    //配列で名前宣言してね
    //var nameArray:[String] = []
    //　　　　　　　　　　　　　　　　　↓初期化するよ
    var nameArray = Array<String>()  //空をもともといれないで作れる
    var pictureArray = Array<UIImage>()  //空をもともといれないで作れる
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        pictureArray.append(UIImage(named: "masuhara1.jpg")!)
        pictureArray.append(UIImage(named: "masuhara2.jpg")!)
        pictureArray.append(UIImage(named: "masuhara3.jpg")!)
        
        nameArray = ["まっすーその１","まっすーその２","まっすーその３"]
        
        NSLog("画像の配列　== %@ \n名前の配列　== %@", pictureArray,nameArray)
        
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    //MARK: UITableView　DataSource Methods(Requires)
    //何行あるのか
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        
        //number of images(何個TableViewを使ったか数を返してあげる)
        return pictureArray.count
    }
    
    // 行ごとにどういうセルが必要なのか
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        
        // Cellの.を取得する.
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as UITableViewCell
        
        // Cellに値を設定する.
        cell.textLabel!.text = "\(nameArray[indexPath.row])"

        // Cellに値を設定する.
        cell.imageView!.image = pictureArray[indexPath.row]

        return cell
        
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath){
     NSLog("%d",indexPath.row)
    }

    
}

