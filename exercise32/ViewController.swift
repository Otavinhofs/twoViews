//
//  ViewController.swift
//  exercise32
//
//  Created by Otávio da Silva on 09/11/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageTextFind: UITextField!
     
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func newView() -> NewViewController {
        let name: String = imageTextFind.text ?? ""
        let imageName = UIImage(named: name)
        
        let storyBoard: UIStoryboard = UIStoryboard(name: "secondScreem", bundle: nil)
        
        let secondViewScreem = storyBoard.instantiateViewController(withIdentifier: "secondView") as! NewViewController
        
        secondViewScreem.modalPresentationStyle = .overFullScreen
        secondViewScreem.image = imageName
        
        return secondViewScreem
    }

    @IBAction func button(_ sender: Any) {
       let nextViewController = newView()
        nextViewController.contentStyle = .scaleToFill
        nextViewController.colorBackground = .red
        self.present(nextViewController, animated: true)
    }
    
    @IBAction func buttonThirtScreem(_ sender: Any) {
        let nextViewController = newView()
         nextViewController.contentStyle = .scaleAspectFit
         nextViewController.colorBackground = .yellow
         self.present(nextViewController, animated: true)
    }
    
}

