//
//  DetailModel.swift
//  Wheels Way
//
//  Created by Vinicius Alves Marques on 19/01/26.
//

import Foundation

struct MainPageCard: Identifiable, Hashable {
    let id = UUID()
    let pageTitle: String
    let contextImageName: String
    let contextDescription: String
    let inventorsImageName: String
    let inventorsDescription: String
    let inventionImageName: String
    let invetionSoundName: String
    let inventionDescription: String
}
