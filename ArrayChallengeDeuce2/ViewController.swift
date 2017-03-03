//
//  ViewController.swift
//  ArrayChallengeDeuce2
//
//  Created by James Campagno on 7/7/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // This represents our deliLine.
    var deliLine: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    // Create your methods here
    
    func addNameToLine(name: String) -> String
    {
        switch name
        {
        case "Billy Crystal", "Meg Ryan":
            deliLine.insert(name, at: 0)
            return "Welcome \(name)! You can sit wherever you like!"
        default:
            deliLine.append(name)
            if deliLine.count == 1
            {
                return "Welcome \(name), you're first in line!"
            } else
            {
                return "Welcome \(name), you're number \(deliLine.count) in line."
            }
        }
    }
    
    func nowServing() -> String
    {
        if deliLine.isEmpty
        {
            return " There is no one to be served."
        } else
        {
            return "Now serving \(deliLine.removeFirst())!"
        }
    }
    
    func lineDescription() -> String
    {
        if deliLine.isEmpty
        {
            return "The line is currently empty."
        }
        
        var descriptionOfLine = "The line is:\n"
        
        for (index, name) in deliLine.enumerated()
        {
            if index == (deliLine.count - 1)
            {
                descriptionOfLine.append("\(index + 1). \(name)")
            }
            else
            {
                descriptionOfLine.append("\(index + 1). \(name)\n")
            }
        }
        return descriptionOfLine
    }
    
    
}

