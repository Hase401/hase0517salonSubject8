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
        super.viewWillAppear(animated)

        //sliderの表示とvalueは連携しているため、valueプロバティのみを変えれば良い。
        //【疑問①】sliderのみの受け渡しでは、なぜ、sliderの表示が変わらないのか？
        slider2.value = appDelegate.slider0.value
        sliderValueLabel.text = String(slider2.value)
    }
    
    @IBAction private func changeSliderValue(_ sender: UISlider) {
        //secondでは値の下の１行、sliderの受け渡しはしてないので、valueも書かないといけない
        appDelegate.slider0.value = sender.value
        sliderValueLabel.text = String(appDelegate.slider0.value)
    }
}
