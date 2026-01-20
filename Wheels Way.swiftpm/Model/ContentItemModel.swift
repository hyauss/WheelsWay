//
//  ContentStructModel.swift
//  Wheels Way
//
//  Created by Vinicius Alves Marques on 19/01/26.
//

import Foundation

struct Card: Identifiable, Hashable {
    let id = UUID()
    let title: String
    let imageName: String
    let description: String
}
