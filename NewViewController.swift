//
//  ViewController.swift
//  exercise32
//
//  Created by Otávio da Silva on 09/11/22.
//

import UIKit

class NewViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    var image: UIImage?
    var contentStyle: UIView.ContentMode?
    var colorBackground: UIColor?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.image = image
        imageView.contentMode = contentStyle ?? .scaleAspectFit
        view.backgroundColor = colorBackground
        // Do any additional setup after loading the view.
    }
    @IBAction func back(_ sender: Any) {
        self.dismiss(animated: true)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
    }
    
    
}
