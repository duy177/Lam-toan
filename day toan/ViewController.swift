//
//  ViewController.swift
//  day toan
//
//  Created by ios on 10/4/16.
//  Copyright © 2016 ios. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var lbl_p1: UILabel!
    @IBOutlet weak var lbl_p2: UILabel!
    @IBOutlet weak var lbl_Pheptinh: UILabel!
    
    
    @IBOutlet weak var btn_b1: UIButton!
    @IBOutlet weak var btn_b2: UIButton!
    @IBOutlet weak var btn_b3: UIButton!
    
    var ketQua: Int!
    override func viewDidLoad() {
        super.viewDidLoad()
        setRamdom()
    }
    
    @IBAction func btn_acction(_ sender: UIButton) {
        setRamdom()
    }
    func setRamdom()
    {
        
        //lay 2 so ngau nhien
        
        let random1 = Int(arc4random_uniform(40)) + 1
        let random2 = Int(arc4random_uniform(40)) + 1
        
        print("\(random1) \(random2)")
        
        lbl_p1.text = String(random1) // Hien so ngau nhien vao p1
        
        lbl_p2.text = String(random2)
        
        setResult(random1, randomB: random2) //
        
        
    }
    //Hien thi ket qua
    
    func setResult(_ randomA:Int, randomB: Int)
    {
        
        xetDau(randomA, p2: randomB) //
        let randomvitri = Int(arc4random_uniform(3)) // random +,-,*
        
        if randomvitri == 0
        {
            
            btn_b1.setTitle(String(ketQua), for: UIControlState())
            btn_b2.setTitle(String(ketQua + 2), for: UIControlState())
            btn_b3.setTitle(String(ketQua + 1), for: UIControlState())
        
          
            
        }
        else if randomvitri == 1
        {
            btn_b2.setTitle(String(ketQua), for: UIControlState())
            btn_b1.setTitle(String(ketQua + 2), for: UIControlState())
            btn_b3.setTitle(String(ketQua + 1), for: UIControlState())
        }
        
        else
        {
            btn_b3.setTitle(String(ketQua), for: UIControlState())
            btn_b2.setTitle(String(ketQua + 2), for: UIControlState())
            btn_b1.setTitle(String(ketQua + 1), for: UIControlState())
        }
        
        
        
    }
    
    //thay doi dau
    
    func xetDau(_ p1: Int, p2: Int)
    {
        let randomPhepTinh = Int(arc4random_uniform(3))
        if randomPhepTinh == 0
            
        {
            ketQua = sum(p1, p2: p2)
            lbl_Pheptinh.text = "+" // Hien thi dau + vao bang
        }
            
        else if randomPhepTinh == 1
            
        {
            ketQua = nhan(p1, p2: p2)
            lbl_Pheptinh.text = "*"
        }
        else
            
        {
            ketQua = tru(p1, p2: p2)
            lbl_Pheptinh.text = "-"
        }
    }
    
    //Tinh tong
    
    func sum(_ p1: Int, p2: Int) -> Int
    {
        return p1+p2
    }
    func nhan(_ p1: Int,p2: Int) -> Int
    {
        return p1*p2
    }
    func tru(_ p1: Int,p2: Int) -> Int
    {
        return p1-p2
    }
    
}

//khong lap lai so


