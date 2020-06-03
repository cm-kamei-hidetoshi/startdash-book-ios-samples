//
//  ViewController.swift
//  UITestSample
//
//  Created by Maeda Tasuku on 2019/12/30.
//  Copyright © 2019 SampleCompany. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var num1TextField: UITextField?
    @IBOutlet weak var num2TextField: UITextField?
    @IBOutlet weak var resultLabel: UILabel!
    
    weak var editingTextField: UITextField?
    var inputTextAtStartEditing: String?
    var isCalculateComplete: Bool = false

    override func viewDidLoad() {
        super.viewDidLoad()

        setup()
    }

    func setup() {
        addBackgroundTapGesture()
        num1TextField?.inputAccessoryView = createNumpadToolbar()
        num2TextField?.inputAccessoryView = createNumpadToolbar()
        resultLabel.text = nil
    }

    func addBackgroundTapGesture() {
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(ViewController.didTapBackground))
        tapGesture.numberOfTapsRequired = 1
        view.addGestureRecognizer(tapGesture)
    }

    @objc func didTapBackground() {
        stopTextEditing()
    }

    func createNumpadToolbar() -> UIToolbar {
        let toolbarFrame = CGRect(x: 0, y: 0, width: view.frame.width, height: 44)
        let toolbar = UIToolbar(frame: toolbarFrame)
        toolbar.barStyle = .default
        toolbar.autoresizingMask = .flexibleWidth

        let cancelButton = UIBarButtonItem(
            barButtonSystemItem: .cancel,
            target: self,
            action: #selector(ViewController.didTapNumpadCancelButton(_:)))

        let doneButton = UIBarButtonItem(
            barButtonSystemItem: .done,
            target: self,
            action: #selector(ViewController.didTapNumpadDoneButton(_:)))

        let spacer = UIBarButtonItem(
            barButtonSystemItem: .flexibleSpace,
            target: nil,
            action: nil)

        toolbar.setItems([cancelButton, spacer, doneButton], animated: false)
        toolbar.sizeToFit()
        return toolbar
    }

    @objc func didTapNumpadCancelButton(_ button: UIBarButtonItem) {
        editingTextField?.text = inputTextAtStartEditing
        stopTextEditing()
    }

    @objc func didTapNumpadDoneButton(_ button: UIBarButtonItem) {
        stopTextEditing()
    }
    
    func stopTextEditing() {
        view.endEditing(true)
    }
    
    @IBAction func didTapCalculateButton() {
        if let result = calculate() {
            resultLabel.text = "\(result)"
            isCalculateComplete = true
        }
        stopTextEditing()
    }
    
    func calculate() -> Int? {
        guard let num1Text = num1TextField?.text,
              let num1 = Int(num1Text),
              let num2Text = num2TextField?.text,
              let num2 = Int(num2Text) else {
            print("入力数値がおかしいですよー")
            return nil
        }
        return num1 + num2
    }
}

extension ViewController: UITextFieldDelegate {
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        // 計算が完了した後に入力を開始した場合はリセットする
        if isCalculateComplete {
            num1TextField?.text = nil
            num2TextField?.text = nil
            resultLabel.text = nil
            isCalculateComplete = false
        }
        inputTextAtStartEditing = textField.text
        editingTextField = textField
    }
}
