//
//  TweetsViewController.swift
//  Twitter
//
//  Created by Mohamed Omane on 10/16/20.
//  Copyright © 2020 Dan. All rights reserved.
//

import UIKit

class TweetsViewController: UIViewController {

    @IBOutlet weak var tweetString: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tweetString.becomeFirstResponder()
        // Do any additional setup after loading the view.
    }
    @IBAction func cancelAction(_ sender: Any) {
        dismiss(animated: true, completion: nil)
        
        
    }
    @IBAction func tweetAction(_ sender: Any) {
        if(!tweetString.text.isEmpty) {
            TwitterAPICaller.client?.postTweet(tweetString: tweetString.text, success: {
                self.dismiss(animated: true, completion: nil)
            }, failure: { (error) in
                print("Error posting tweet \(error)")
                self.dismiss(animated: true, completion: nil)
            })
        } else {
            self.dismiss(animated: true, completion: nil)
        }
    }
    
    // 
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
