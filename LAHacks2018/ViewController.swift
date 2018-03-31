//
//  ViewController.swift
//  LAHacks2018
//
//  Created by Rahul Sheth on 3/30/18.
//  Copyright © 2018 Rahul Sheth. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @objc func segueToStudent() {
        let studentViewController = StudentViewController()
        self.present(studentViewController, animated: true, completion: nil)
    }
    @objc func segueToProf() {
        let profViewController = ProfessorViewController()
        self.present(profViewController, animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Student versus professor choosing
        
        
        let studentButton = UIButton()
        self.view.addSubview(studentButton)
        studentButton.translatesAutoresizingMaskIntoConstraints = false
        studentButton.setTitle("Student", for: .normal)
        studentButton.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        studentButton.centerYAnchor.constraint(equalTo: self.view.centerYAnchor, constant: -30).isActive = true
        studentButton.widthAnchor.constraint(equalToConstant: self.view.bounds.width * 0.5).isActive = true
        studentButton.heightAnchor.constraint(equalToConstant: self.view.bounds.width * 0.1).isActive = true
        studentButton.addTarget(self, action: #selector(segueToStudent), for: .touchUpInside)
        studentButton.backgroundColor = UIColor.blue
        let professorButton = UIButton()
        self.view.addSubview(professorButton)
        
        professorButton.translatesAutoresizingMaskIntoConstraints = false
        professorButton.titleLabel?.text = "Professor"
        professorButton.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        professorButton.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
        professorButton.widthAnchor.constraint(equalToConstant: self.view.bounds.width * 0.5).isActive = true
        professorButton.setTitle("Professor", for: .normal)
        professorButton.heightAnchor.constraint(equalToConstant: self.view.bounds.width * 0.1).isActive = true
        professorButton.addTarget(self, action: #selector(segueToProf), for: .touchUpInside)
        professorButton.backgroundColor = UIColor.blue

        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

