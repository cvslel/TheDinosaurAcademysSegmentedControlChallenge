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
            make.width.equalTo(95)
        
        }
    }
    @objc func valueHasChanged(_ segmentedController: UISegmentedControl){
        switch segmentedController.selectedSegmentIndex {
        case 0: 
            view.backgroundColor = .yellow
            segmentedController.setWidth(150, forSegmentAt: 0)
            segmentedController.setWidth(100, forSegmentAt: 1)
            segmentedController.setWidth(100, forSegmentAt: 2)
            UIView.animate(withDuration: 1) {
                segmentedController.snp.updateConstraints { make in
                    make.height.equalTo(165)
                    make.top.equalTo(self.view.safeAreaLayoutGuide.snp.bottom).offset(-165)
                    make.right.equalTo(self.view.snp.right).offset(-20)
                    make.left.equalTo(self.view.snp.left).offset(20)
                }
                self.view.layoutIfNeeded()
            }
        case 1:
            view.backgroundColor = .red
            segmentedController.setWidth(150, forSegmentAt: 1)
            segmentedController.setWidth(100, forSegmentAt: 0)
            segmentedController.setWidth(100, forSegmentAt: 2)
            UIView.animate(withDuration: 1) {
                segmentedController.snp.updateConstraints { make in
                    make.height.equalTo(65)
                    make.top.equalTo(self.view.safeAreaLayoutGuide.snp.bottom).offset(-65)
                    make.right.equalTo(self.view.snp.right).offset(-20)
                    make.left.equalTo(self.view.snp.left).offset(20)
                }
                self.view.layoutIfNeeded()
            }
        case 2:
            view.backgroundColor = .blue
            UIView.animate(withDuration: 1) {
                segmentedController.setWidth(150, forSegmentAt: 2)
                segmentedController.setWidth(100, forSegmentAt: 1)
                segmentedController.setWidth(100, forSegmentAt: 0)
                segmentedController.snp.updateConstraints { make in
                    make.height.equalTo(35)
                    make.top.equalTo(self.view.safeAreaLayoutGuide.snp.bottom).offset(-35)
                    make.right.equalTo(self.view.snp.right).offset(-20)
                    make.left.equalTo(self.view.snp.left).offset(20)
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
