//
//  WelcomeViewController.swift
//  Sportify12
//
//  Created by Apple on 20/02/2023.
//

import UIKit

class WelcomeViewController: UIViewController {

    private let signinbutton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .white
        button.setTitle("sign in with spotify", for: .normal)
        button.setTitleColor(.blue, for: .normal)
        return button
        
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
         title = "Spotify"
          view.addSubview(signinbutton)
          view.backgroundColor = .systemBlue
         signinbutton.addTarget( self, action: #selector(didtapsignin), for: .touchUpInside)
        image()
        // Do any additional setup after loading the view.
    }
    

    @objc func didtapsignin() {
        let vc = AuthViewController()
        vc.navigationItem.largeTitleDisplayMode = .never
        navigationController?.pushViewController(vc, animated: true)
    }
    
    
    
    private func image() {
        signinbutton.translatesAutoresizingMaskIntoConstraints = false
       
        signinbutton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -200).isActive = true
        signinbutton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        signinbutton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30).isActive = true
        signinbutton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30).isActive = true
         
         
     }
}
