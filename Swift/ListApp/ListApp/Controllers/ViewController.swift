//
//  ViewController.swift
//  ListApp
//
//  Created by Salim Özel on 20.07.2023.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate,UITableViewDataSource  {
    var alertController = UIAlertController()
    @IBOutlet weak var tableView : UITableView!
    var data = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "defaultCell", for: indexPath)
        cell.textLabel?.text = data[indexPath.row]
        return cell
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    @IBAction func didRemoveBarButtonItemTabbed(_ sender : UIBarButtonItem){
        presentAlert(title: "Uyarı!", message: "Listedki bütün ögeleri silmek istediğinizden emin misiniz ? ", cancelButtonTitle: "Vazgeç", defaultButtonTitle: "Evet") { _ in
            self.data.removeAll()
            self.tableView.reloadData()
        }
        
    
    }
    
    @IBAction func didAddBarButtonItemTabbed(_ sender : UIBarButtonItem){
        presentAddAlert()
    }
    func presentAddAlert(){
        presentAlert(title: "Yeni Eleman Ekle",
                     message: nil,
                     cancelButtonTitle: "Vazgeç",
                     defaultButtonTitle: "Ekle",
                     isTextFieldAvaliable: true,
                     defaultButtonHandler: {_ in
            let text = self.alertController.textFields?.first?.text
            
            if text != ""{
                self.data.append((text)!)
                self.tableView.reloadData()
            }
            else {
                self.presentWarningAlert()
            }
        }
                    
        ) }
    func presentWarningAlert(){
        presentAlert(title: "Uyarı!",
                     message: "Liste elemanı boş olamaz",
                     cancelButtonTitle: "Tamam")
    }
    // Alert Create Function
    func presentAlert(title: String?,
                      message: String?,
                      preferredStyle : UIAlertController.Style = .alert,
                      cancelButtonTitle : String?,
                      defaultButtonTitle : String? = nil,
                      isTextFieldAvaliable : Bool = false,
                      defaultButtonHandler : ((UIAlertAction)-> Void)? = nil){
        alertController = UIAlertController(title: title,
                                            message: message,
                                            preferredStyle: preferredStyle)
        let canceButton = UIAlertAction(title: cancelButtonTitle,
                                        style: .cancel)
        if defaultButtonTitle != nil {
            let defaultButton = UIAlertAction(title:defaultButtonTitle,
                                              style:.default,
                                              handler: defaultButtonHandler)
            alertController.addAction(defaultButton)
        }
        if isTextFieldAvaliable {
            alertController.addTextField()
        }
        alertController.addAction(canceButton)
        present(alertController, animated: true)
    }
    
}

