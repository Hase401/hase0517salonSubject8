//
//  FirstViewController.swift
//  subject_8
//
//  Created by 長谷川孝太 on 2021/05/16.
//

import UIKit

class FirstViewController: UIViewController {
    @IBOutlet private weak var sliderValueLabel: UILabel!
    @IBOutlet private weak var slider1: UISlider!
    
    private let appDelegate = UIApplication.shared.delegate as! AppDelegate
    
    override func viewWillAppear(_ animated: Bool) {
        appDelegate.slider0 = slider1
        sliderValueLabel.text = String(appDelegate.slider0.value)
    }
    
    @IBAction private func changeSliderValue(_ sender: UISlider) {
        sliderValueLabel.text = String(appDelegate.slider0.value)
    }
}
