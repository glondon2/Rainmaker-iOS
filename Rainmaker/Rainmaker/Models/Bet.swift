//
//  Bet.swift
//  Rainmaker
//
//  Created by Jack Soslow on 25/11/2018.
//  Copyright © 2018 Jack Soslow. All rights reserved.
//

import Foundation
import FirebaseDatabase.FIRDataSnapshot

class Bet {
    
    var betKey: String?
    var typeOfGame: String
    var betQuestion: String
    var firstBetOption: String
    var secondBetOption: String
    var isActive : Int
    var rightAnswer : Int
    
    init(typeOfGame: String, betQuestion: String, firstBetOption: String, secondBetOption: String, isActive : Int, rightAnswer : Int) {
        self.typeOfGame = typeOfGame
        self.betQuestion = betQuestion
        self.firstBetOption = firstBetOption
        self.secondBetOption = secondBetOption
        self.isActive = isActive
        self.rightAnswer = rightAnswer
    }
    
    init?(snapshot: DataSnapshot) {
        guard let dict = snapshot.value as? [String : Any],
            let typeOfGame = dict["typeOfGame"] as? String,
            let betQuestion = dict["betQuestion"] as? String,
            let firstBetOption = dict["firstBetOption"] as? String,
            let secondBetOption = dict["secondBetOption"] as? String,
            let isActive = dict["isActive"] as? Int,
            let rightAnswer = dict["rightAnswer"] as? Int
            else { return nil }
        
        self.betKey = snapshot.key
        self.typeOfGame = typeOfGame
        self.betQuestion = betQuestion
        self.firstBetOption = firstBetOption
        self.secondBetOption = secondBetOption
        self.isActive = isActive
        self.rightAnswer = rightAnswer
    }
    
}

