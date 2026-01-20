//
//  SideBarViewModel.swift
//  Wheels Way
//
//  Created by Vinicius Alves Marques on 19/01/26.
//
import SwiftUI

@MainActor
class SideBarViewModel{
    public static let shared = SideBarViewModel()
    var cards: [Card] = []
    
    func closeContent() -> NavigationSplitViewVisibility {
        return .detailOnly
    }
    
    func loadInventions(selection: SidebarSelection) -> [Card] {
        switch selection {
        case .Welcome:
            cards = [
                Card(id: UUID(), intId: 1, title: "Welcome!", imageName: "windowBackGround", description: "Where do I start?"),
            ]
            return cards
        case .XVIII:
            cards = [
                Card(id: UUID(), intId: 2,title: "Fardier à vapeur - 1769", imageName: "windowBackGround", description: "First functional self-propelled land vehicle, the Fardier à vapeur, a three-wheeled steam tractor designed for the army"),
            ]
            return cards
        case .XIX:
            cards = [
                Card(id: UUID(), intId: 3,title: "Benz Patent-Motorwagen - 1886", imageName: "", description: "The world's first practical, gasoline-powered automobile, marking the beginning of the automotive era"),
            ]
            return cards
        case .XX:
            cards = [
                Card(id: UUID(), intId: 4,title: "Benz Patent-Motorwagen - 1886", imageName: "", description: "The world's first practical, gasoline-powered automobile, marking the beginning of the automotive era"),
            ]
            return cards
        case .XXI:
            cards = [
                Card(id: UUID(), intId: 5,title: "Benz Patent-Motorwagen - 1886", imageName: "", description: "The world's first practical, gasoline-powered automobile, marking the beginning of the automotive era"),
            ]
            return cards
        }
    }
}

