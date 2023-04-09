//
//  ScreenRightViewController.swift
//  FormLogIn
//
//  Created by Ирина Шалагина on 09.04.2023.
//

import UIKit

class ScreenRightViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    
    //@IBAction func unwind(for segue: UIStoryboardSegue) {
    //if let mainViewController = segue.source as? MainViewController {
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        guard let mainVC = segue.source as? MainViewController else { return }
        mainVC.emailAdress.text = ""
        mainVC.password.text = ""
        
    }
    
    @IBAction func logOutButton() {
 dismiss(animated: true)
    }
    
}
