//
//  TableViewController.swift
//  onMap
//
//  Created by Marvellous Dirisu on 29/05/2022.
//

import UIKit

class TableViewController: UITableViewController {
    
    @IBOutlet var studentListTable: UITableView!
    
    var students =  [StudentInformation]()
//    var students = ["Powerbanks","Storage Devices","LED Bulbs","Laptop Bags","Keyboards","Routers","Shoes"]
    
    override func viewDidLoad() {
        super.viewDidLoad()


    }
    
    override func viewWillAppear(_ animated: Bool) {
        getStudentsList()
    }


    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return students.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "studentviewcell", for: indexPath)
        let student = students[indexPath.row]
        cell.textLabel?.text = "\(student.firstName)" + " " + "\(student.lastName)"
//        cell.detailTextLabel?.text = "\(student.mediaURL ?? "")"
        return cell
    }

    @IBAction func logout(_ sender: UIBarButtonItem) {
//        showActivityIndicator()
        UdacityClient.logout {
            DispatchQueue.main.async {
                self.dismiss(animated: true, completion: nil)
//                self.hideActivityIndicator()
            }
        }
    }
    
    // MARK: Refresh list
    
    @IBAction func refreshList(_ sender: UIBarButtonItem) {
        getStudentsList()
    }
    
    @IBAction func addLocation(_ sender: UIBarButtonItem) {
        performSegue(withIdentifier: "addLocation", sender: sender)
    }
    
    func getStudentsList() {
//        showActivityIndicator()
        UdacityClient.getStudentLocations() {students, error in
            self.students = students ?? []
            DispatchQueue.main.async {
                self.tableView.reloadData()
//                self.hideActivityIndicator()
            }
        }
    }
}
