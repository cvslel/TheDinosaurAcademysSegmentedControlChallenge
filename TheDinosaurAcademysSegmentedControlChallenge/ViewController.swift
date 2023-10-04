//
//  ViewController.swift
//  TheDinosaurAcademysSegmentedControlChallenge
//
//  Created by Cenker Soyak on 4.10.2023.
//

import UIKit
import SnapKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        createUI()
    }

    func createUI(){
        view.backgroundColor = .white
        
        let items = ["Neon Academy 2023", "Neon", "Apps"]
        let segmentedController = UISegmentedControl(items: items)
        view.addSubview(segmentedController)
        segmentedController.addTarget(self, action: #selector(valueHasChanged(_: )), for: UIControl.Event.valueChanged)
        segmentedController.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide.snp.bottom).offset(-90)
            make.left.equalTo(view.snp.left).offset(20)
            make.right.equalTo(view.snp.right).offset(-20)
            make.height.equalTo(95)
        }
    }
    
    @objc func valueHasChanged(_ segmentedController: UISegmentedControl){
        switch segmentedController.selectedSegmentIndex {
        case 0: 
            view.backgroundColor = .yellow
            UIView.animate(withDuration: 1) {
                segmentedController.snp.updateConstraints { make in
                    make.height.equalTo(165)
                    make.top.equalTo(self.view.safeAreaLayoutGuide.snp.bottom).offset(-165)
                }
                self.view.layoutIfNeeded()
            }
        case 1:
            view.backgroundColor = .red
            UIView.animate(withDuration: 1) {
                segmentedController.snp.updateConstraints { make in
                    make.height.equalTo(65)
                    make.top.equalTo(self.view.safeAreaLayoutGuide.snp.bottom).offset(-65)
                }
                self.view.layoutIfNeeded()
            }
            
        case 2:
            view.backgroundColor = .blue
            UIView.animate(withDuration: 1) {
                segmentedController.snp.updateConstraints { make in
                    make.height.equalTo(35)
                    make.top.equalTo(self.view.safeAreaLayoutGuide.snp.bottom).offset(-35)

                }
                self.view.layoutIfNeeded()
            }
            
        default:
            UIView.animate(withDuration: 1) {
                segmentedController.snp.updateConstraints { make in
                    make.height.equalTo(225)
                }
                self.view.layoutIfNeeded()
            }
        }
    }
}

