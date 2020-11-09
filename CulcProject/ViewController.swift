//
//  ViewController.swift
//  CulcProject
//
//  Created by Elizaveta on 09.11.2020.
//  Copyright © 2020 Elizaveta. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    var operand = ""
    var numberOne = ""
    var numberTwo = ""
    
    @IBOutlet weak var resultLabel: UILabel!
    
    // Обработка клавиш * / + -
    @IBAction func inputOperand(_ sender: UIButton)
    {
        operand = (sender.titleLabel?.text!)!
    }
    
    // Обнуление переменных, очистка Label
    @IBAction func clearAction(_ sender: UIButton)
    {
        operand = ""
        numberOne = ""
        numberTwo = ""
        resultLabel.text = "0"
    }
    
    // Функция нажатия кнопок 0..9
    // Значение первой нажатой кнопки - numberOne
    // Значение нажатой операции (плюс, минус и тд) лежит в operand
    // Значение второй нажатой кнопки - numberTwo
    @IBAction func inputNumber(_ sender: UIButton)
    {
        if operand.isEmpty
        {
            numberOne = numberOne + (sender.titleLabel?.text)!
            resultLabel.text = numberOne
        }
        else
        {
            numberTwo = numberTwo + (sender.titleLabel?.text)!
            resultLabel.text = numberTwo
        }
    }
    
    // Кнопка равно
    @IBAction func resulAction(_ sender: Any)
    {
        var result = 0.0
        
        switch operand
        {
        case "/":
            result = Double(numberOne)! / Double(numberTwo)!
        case "*":
            result = Double(numberOne)! * Double(numberTwo)!
        case "-":
            result = Double(numberOne)! - Double(numberTwo)!
        case "+":
            result = Double(numberOne)! + Double(numberTwo)!
        default:
            break
        }
        
        if result.truncatingRemainder(dividingBy: 1.0) == 00
        {
            resultLabel.text = String(Int(result))
        }
        else
        {
            resultLabel.text = String(result)
        }
    }
}
	
