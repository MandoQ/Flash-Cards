//
//  CreationViewController.swift
//  Flash Cards
//
//  Created by Mando Quintana on 10/27/18.
//  Copyright © 2018 Armando Quintana. All rights reserved.
//

import UIKit

class CreationViewController: UIViewController {
    var flashCardsController: ViewController!
    
    @IBOutlet var questionField: UITextField!
    @IBOutlet var answerField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func didTapCancel(_ sender: Any) {
        dismiss(animated: true)
    }
    
    @IBAction func didTapDone(_ sender: Any) {
        
        let questionText = questionField.text
        let answerText = answerField.text
        
        let alert = UIAlertController(title: "Missing Text", message: "You need to input a Question and an Answer", preferredStyle: .alert)
        
         let okAlert = UIAlertAction(title: "Ok", style: .default)
       
        
        
        if questionText == nil || answerText == nil || questionText!.isEmpty || answerText!.isEmpty {
              self.present(alert, animated: true)
              alert.addAction(okAlert)
            
        }else{
             flashCardsController.updateFlashCard(question: questionText!, answer: answerText!)
        }
        

    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
