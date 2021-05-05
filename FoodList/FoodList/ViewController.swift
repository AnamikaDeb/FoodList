//
//  ViewController.swift
//  FoodList
//
//  Created by Anamika Deb on 4/5/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    let viewModel = ListViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.register(UINib(nibName: "SectionCell", bundle: nil), forCellReuseIdentifier: "SectionCell")
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource{
    
    func numberOfSections(in tableView: UITableView) -> Int {
        viewModel.getCategoryList().count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let model = viewModel.getCategoryList()[section]
        let title = model.categoryName
        return title
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let model = viewModel.getCategoryList()[section]
        let count = model.categoryInfo?.count ?? 0
        return count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SectionCell") as! SectionCell
        
        let model = viewModel.getCategoryList()[indexPath.section]
        guard let categoryInfo = model.categoryInfo else{return UITableViewCell()}
        
        cell.configuareCell(categoryInfo: (categoryInfo[indexPath.row]))
        return cell
    }
}

