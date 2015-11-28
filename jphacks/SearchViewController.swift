//
//  SearchViewController.swift
//  jphacks
//
//  Created by 内村祐之 on 2015/11/28.
//  Copyright © 2015年 at. All rights reserved.
//

import UIKit

class SearchViewController: UIViewController {
    
    @IBAction func GoToMapView(sender: AnyObject) {
        let storyboard = UIStoryboard(name: "MapView", bundle: nil)
        let controller = storyboard.instantiateInitialViewController() as! MapViewController
        // controller.delegate = self;
        // controller.checkout = self.checkout;
        self.presentViewController(controller, animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        let results1 = CSVManager.nightViewData()
        var nightViewSpots = [NightViewSpot]()
        for result in results1 {
            nightViewSpots.append(NightViewSpot(result: result))
            print(nightViewSpots.last?.name)
        }

        
        let results2 = CSVManager.sightseeingData()
        var SightseengSpots = [SightseeingSpot]()
        for result in results2 {
            SightseengSpots.append(SightseeingSpot(result: result))
            print(SightseengSpots.last?.name)
        }

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    /*
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    // Get the new view controller using segue.destinationViewController.
    // Pass the selected object to the new view controller.
    }
    */
    
}
