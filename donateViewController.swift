//
//  donateViewController.swift
//  TasteTour
//
//  Created by Admin on 8/12/20.
//  Copyright © 2020 Maria Janoo. All rights reserved.
//

import UIKit
import SafariServices
class donateViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func unicefButton(_ sender: Any) {
        let vc = SFSafariViewController(url: URL(string:"https://www.unicefusa.org/mission/starts-with-u/protection-for-children?utm_campaign=20191202_Eoy&utm_medium=OnlineAudioAdvertising&utm_source=DBM&utm_content=Donate&ms=OnlineAudioAdvertising_DIG_2019_Eoy_20191202_DBM_Donate_delve_none&initialms=OnlineAudioAdvertising_DIG_2019_Eoy_20191202_DBM_Donate_delve_none")!)
        
        present(vc, animated: true)
    }
    
    @IBAction func saveChildrenButton(_ sender: Any) {
        let vc = SFSafariViewController(url: URL(string: "https://www.savethechildren.org/us/what-we-do/where-we-work/greater-middle-east-eurasia/yemen")!)
        present(vc, animated: true)
    }
    
    @IBAction func islamicReliefButton(_ sender: Any) {
        let vc = SFSafariViewController(url: URL(string: "https://secure.irusa.org/donate/donate-now")!)
        present(vc,animated: true)
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
