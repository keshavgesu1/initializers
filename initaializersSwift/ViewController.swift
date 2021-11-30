//
//  ViewController.swift
//  initaializersSwift
//
//  Created by Keshav Raj Kashyap on 30/11/21.
//

import UIKit

class ViewController: UIViewController {
    
    let userModel = UserDataStruct(name: "keshav", age: 22, heightInCm: 190)
    let classUserModel = UserDataClasss(name: "keshav", age: 22, heightInCm: 190)
    let objPersonUidai = UIDAI(PersonUidaiNo: "hello")
    var object = A()
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(userModel.name)
        print(classUserModel.heightInCm)
        print(objPersonUidai?.IdNo as Any)
        object.a = 10
        object.c = 2
    }


}

class UserDataClasss{
    var name : String
    var age: Int
    var heightInCm:Int
    
    init(name:String,age: Int,heightInCm:Int){
    self.name = name
    self.age = age
    self.heightInCm = heightInCm
}
}


struct UserDataStruct{
    var name : String
    var age: Int
    var heightInCm:Int
    
    init(name:String,age: Int,heightInCm:Int){
        self.name = "name"
        self.age = 34
        self.heightInCm = 345
    }
}


///failable initializers
struct UIDAI{
    var IdNo: String
    init?(PersonUidaiNo: String){
        if (PersonUidaiNo.count < 12){
            return nil
        }
        self.IdNo = PersonUidaiNo
    }
}


class A{
    
    var a : Int = 5
    var b : String = "Hello. How you're doing"
    var c : Int?
    let website = "JournalDev"
}
