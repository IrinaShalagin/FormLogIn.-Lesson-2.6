//
//  ViewController.swift
//  FormLogIn
//
//  Created by Ирина Шалагина on 09.04.2023.
//

import UIKit

class MainViewController: UIViewController {
    
    @IBOutlet var emailAdress: UITextField!

    
    @IBOutlet var password: UITextField!

    
    @IBOutlet var logInButtonOutlet: UIButton!
    
   override func viewDidLoad() {
    super.viewDidLoad()
    logInButtonOutlet.layer.cornerRadius = 10

}

    

let userName = "User"
let passwordRight = "Password"
    
    /* func authorize() {
        let userLogin = emailAdress.text ?? ""
        let userPassword = password.text ?? ""
        
    
        if userLogin == userName && userPassword == passwordRight {
            //let newVC = storyboard?.instantiateViewController(withIdentifier: "newVC") as! ScreenRightViewController
            
           // navigationController?.pushViewController(newVC, animated: true)
        } else {
            showErrorAlert()
        }
    }*/
    

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.destination is ScreenRightViewController else { return }
        
        let userLogin = emailAdress.text ?? ""
        let userPassword = password.text ?? ""
        
        if userLogin == userName && userPassword == passwordRight {
            //let newVC = storyboard?.instantiateViewController(withIdentifier: "newVC") as! ScreenRightViewController
            
           // navigationController?.pushViewController(newVC, animated: true)
        } else {
            showErrorAlert()
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    
    func showErrorAlert() {
        let alert = UIAlertController(title: "Invalid login or password", message: "Please, enter correct login or password", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(okAction)
        present(alert, animated: true, completion: nil)
    }
    
    @IBAction func loginButtonTapped(_ sender: UIButton) {
        
        
    }
    
    
    func clearTextField() {
        emailAdress.text = ""
        password.text = ""
    }
            
        }
    




