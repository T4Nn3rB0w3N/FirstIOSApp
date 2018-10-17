//
//  ViewController.swift
//  FirstIOSApp
//
//  Created by Bowen, Tanner on 10/9/18.
//  Copyright © 2018 CSP. All rights reserved.
//

import UIKit

public class ColorChangeViewController: UIViewController
{
    private lazy var myColor : ColorTool = ColorTool()

    @IBOutlet weak var firstButton: UIButton!

    @IBOutlet weak var firstStack: UIStackView!
    @IBOutlet weak var firstUISegmentedControl: UISegmentedControl!
    
    public override func viewDidLoad() -> Void
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    public override func didReceiveMemoryWarning() -> Void
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func chromoClick(_ sender: UIButton) -> Void
    {
        self.view.backgroundColor = myColor.createRandomColor()
        firstButton.backgroundColor = myColor.createRandomColor()
    }
    
    @IBAction func swapBackgrounds(_ sender: UISegmentedControl) -> Void
    {
        self.view.backgroundColor = firstButton.backgroundColor
        firstButton.backgroundColor = self.view.backgroundColor
    }
}

