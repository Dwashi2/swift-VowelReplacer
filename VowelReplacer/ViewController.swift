//
//  ViewController.swift
//  VowelReplacer
//
//  Created by Daniel Washington Ignacio on 28/05/21.
//


/*
 Create a function that replaces all the vowels in a string with a specified character.

 Examples
 replaceVowels("the aardvark", "#") ➞ "th# ##rdv#rk"
 replaceVowels("minnie mouse", "?") ➞ "m?nn?? m??s?"
 replaceVowels("shakespeare", "*") ➞ "sh*k*sp**r*"
 */

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        print(replaceVowels("the aardvark", "#"))
        print(replaceVowels("minnie mouse", "?"))
        print(replaceVowels("shakespeare", "*"))
    }

    
    func replaceVowels(_ str: String, _ char: String) -> String {
        let vowels: [Character] = ["A","a","E","e","i","I","o","O","u","U"]
        var newArray: [String] = []
        
        for n in str {
            if vowels.contains(n){
                newArray.append(char)
            }else{
                newArray.append(String(n))
            }
        }
        return "\(newArray.joined())"
    }

}

