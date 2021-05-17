//
//  SecondViewController.swift
//  subject_8
//
//  Created by 長谷川孝太 on 2021/05/16.
//

import UIKit

class SecondViewController: UIViewController {
    @IBOutlet private weak var sliderValueLabel: UILabel!
    @IBOutlet private weak var slider2: UISlider!
    
    private let appDelegate = UIApplication.shared.delegate as! AppDelegate
    
    override func viewWillAppear(_ animated: Bool) {
        slider2.value = appDelegate.slider0.value
        sliderValueLabel.text = String(slider2.value)
    }
    
    @IBAction private func changeSliderValue(_ sender: UISlider) {
        appDelegate.slider0.value = sender.value
        sliderValueLabel.text = String(appDelegate.slider0.value)
    }
}
