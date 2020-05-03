//
//  KoreanViewController.swift
//  myApp
//
//  Created by SWUCOMPUTER on 2020/05/03.
//  Copyright © 2020 SWUCOMPUTER. All rights reserved.
//

import UIKit

class KoreanViewController: UIViewController {

    
    @IBOutlet var displayLabel: UILabel!
    @IBOutlet var explainLabel: UILabel!
    @IBOutlet var leftButton: UIButton!
    @IBOutlet var rightButton: UIButton!
    @IBOutlet var resultView: UIView!
    @IBOutlet var resultLabel: UILabel!
    var index : Int!
    var name : String!
    
    typealias Question = (correct:String, wrong:String, info:String)
    let questionList : [Question] = [("띠앗","씨앗","형제나 자매 사이의 우애심"),("빼빼거리다","쨍긋거리다","어린아이가 듣기 싫게 자꾸 울다"),("소록소록","노근노근","아이가 곱게 자는 모양"),("구순하다","교순하다","사이가 좋아 화목하다")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        displayLabel.text = name + "님, 설명에 맞는 순우리말을 골라보세요!"
        resultView.isHidden = true
        let randomIndex : Int = Int(arc4random_uniform(UInt32(questionList.count-1)))
            index = randomIndex
        leftButton.setTitle(questionList[index].correct, for: .normal)
        rightButton.setTitle(questionList[index].wrong, for: .normal)
        explainLabel.text = questionList[index].info
    }
    
    @IBAction func checkAnswer(_ sender: UIButton) {
        resultView.isHidden = false
         if sender.titleLabel?.text == questionList[index].correct{
            resultLabel.text = "(๑>◡<๑) 정답입니다!"
         } else {
             resultLabel.text = "(c ತ,_ತ) 오답입니다!"
         }
    }
    
    @IBAction func nextButton() {
        resultView.isHidden = true
            index += 2
            index = (index + 1) % questionList.count
            leftButton.setTitle(questionList[index].wrong, for: .normal)
        rightButton.setTitle(questionList[index].correct, for: .normal)
        explainLabel.text = questionList[index].info
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
