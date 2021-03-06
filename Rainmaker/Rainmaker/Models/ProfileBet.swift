//
//  ProfileBet.swift
//  Rainmaker
//
//  Created by Jack Soslow on 28/11/2018.
//  Copyright © 2018 Jack Soslow. All rights reserved.
//

import Foundation
import FirebaseDatabase.FIRDataSnapshot

class ProfileBet {
    
    var betKey: String
    var typeOfGame: String?
    var betQuestion: String?
    var chosenBet: Int
    var betAmount: Int
    var uidOfBettor: String
    var isActive : Int?
    var rightAnswer : Int?
    
    init(betKey: String, typeOfGame: String, betQuestion: String, chosenBet: Int, betAmount: Int, uidOfBettor: String) {
        self.betKey = betKey
        self.typeOfGame = typeOfGame
        self.betQuestion = betQuestion
        self.chosenBet = chosenBet
        self.betAmount = betAmount
        self.uidOfBettor = uidOfBettor
        
    }
    
    init?(snapshot: DataSnapshot) {
        guard let dict = snapshot.value as? [String : Any],
            let betAmount = dict["betAmount"] as? Int,
            let chosenBet = dict["chosenBet"] as? Int,
            let friendKey = dict["uidOfBettor"] as? String
            else { return nil }
        self.betKey = snapshot.key
        self.chosenBet = chosenBet
        self.betAmount = betAmount
        self.uidOfBettor = friendKey
        
    }
}


