//
//  MyViewController.swift
//  my
//
//  Created by Mikey on 2018/1/9.
//

import UIKit
//import CTMediator
import hotel_category

class MyViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        view.backgroundColor = .red
        
        let btn = UIButton(frame: CGRect(x: 10, y: 100, width: 100, height: 40))
        btn.backgroundColor = .blue
        view.addSubview(btn)
        btn.addTarget(self, action: #selector(click), for: .touchUpInside)
        
        
    }
    
    @objc func click() {
        let vc = CTMediator.sharedInstance().hotelViewController { (str) in
            print(str ?? "hoteldd")
        }
        if let vc = vc {
            self.navigationController?.pushViewController(vc, animated: true)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
