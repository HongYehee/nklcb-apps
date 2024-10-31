//  MyViewController.swift
//  MyUIKit

import UIKit

class MyViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var helloLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
    }

    @IBAction func didTabButton(_ sender: Any) {
        print("Hello, Leo!")
    }
}
