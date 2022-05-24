//
//  ViewController.swift
//  MVVMExample
//
//  Created by Angelos Staboulis on 25/5/22.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource,TableDelegate {
   
    @IBOutlet var txtFirstName: UITextField!
    @IBOutlet var mainTableView: UITableView!
    var viewModel = ViewModel()
    override func viewDidLoad() {
        super.viewDidLoad()
        initialView()
        // Do any additional setup after loading the view.
    }
    @IBAction func btnFindGender(_ sender: Any) {
        self.viewModel.fetchGender(name: txtFirstName.text!)
    }
    
}

extension ViewController{
    func initialView(){
        mainTableView.delegate = self
        mainTableView.dataSource = self
        self.viewModel.delegate = self
    }
    func updateData() {
        DispatchQueue.main.async {
            self.mainTableView.reloadData()
        }
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 900.0
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:GenderCell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! GenderCell
        cell.txtGender.text = self.viewModel.genderModel.gender
        cell.txtProbability.text = String(self.viewModel.genderModel.probability)
        cell.txtCount.text = String(self.viewModel.genderModel.count)
        return cell
    }
}
