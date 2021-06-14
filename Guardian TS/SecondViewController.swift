//
//  SecondViewController.swift
//  Guardian TS
//
//  Created by Cody Maheu on 6/7/21.
//

import UIKit
import Auth0

class SecondViewController: UIViewController {

    
    @IBOutlet weak var Welcome: UILabel!
    var email:String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        Welcome.text = "Welcome \(email)!"
        // Do any additional setup after loading the view.
    }
    
    @IBAction func logout(_ sender: Any) {
        Auth0
            .webAuth()
//            .useEphemeralSession()
            .clearSession(federated:false){
                switch $0{
                    case true:
                       //Go back to home screen
                        print("cleared")
                    case false:
                        //Nothing
                        print("Not cleared")
                }
            }

        self.dismiss(animated: true, completion: nil)
        
        
        
    }
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
