//
//  DetailsVC.swift
//  NewsApp
//
//  Created by Admin on 17/1/23.
//

import UIKit

class DetailsVC: UIViewController {

    var getHome: HomeVC?
    
    var ti_tle: String = ""
    var time: String = ""
    var imgURL: String = ""
    var url: String = ""
    var author: String = "unknown author"
    var content: String = ""
    var desc: String = ""
    
    @IBOutlet weak var titleField: UILabel!
    @IBOutlet weak var timeField: UILabel!
    
    @IBOutlet weak var imgView: UIImageView!
    
    @IBOutlet weak var authorField: UILabel!
    
    @IBOutlet weak var contentField: UILabel!
    @IBOutlet weak var descField: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        titleField.text = getHome?.myArticles[(getHome?.idxPath.row)!].title
//        timeField.text = getHome?.myArticles[(getHome?.idxPath!.row)!].time
//
//        let imgURL = getHome?.myArticles[(getHome?.idxPath.row)!].imgURL
//        imgView.sd_setImage(with: URL(string: imgURL ?? ""), placeholderImage: UIImage(systemName: "photo"), context: nil)
//
//
//        authorField.text = "Author: \(getHome?.myArticles[(getHome?.idxPath.row)!].author ?? "unknow author")"
//        descField.text = getHome?.myArticles[(getHome?.idxPath.row)!].desc
//        contentField.text = getHome?.myArticles[(getHome?.idxPath.row)!].content
        
        titleField.text = ti_tle
        timeField.text = time
        imgView.sd_setImage(with: URL(string: imgURL), placeholderImage: UIImage(systemName: "photo"), context: nil)
        authorField.text = author
        descField.text = desc
        contentField.text = content
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == Constants.gotoWebSegue {
            if let webPage = segue.destination as? WKVC {
                //webPage.forURL = getHome?.myArticles[(getHome?.idxPath.row)!].URL
                webPage.forURL = url
            }
        }
    }
    
    @IBAction func moreBtnTapped(_ sender: Any) {
        performSegue(withIdentifier: Constants.gotoWebSegue, sender: nil)
    }
    
}