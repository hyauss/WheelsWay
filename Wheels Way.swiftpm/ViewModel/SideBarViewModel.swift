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
                Card(id: UUID(), intId: 0, title: "Welcome!", imageName: "windowBackGround", description: "Where do I start?"),
            ]
            return cards
        case .XVIII:
            cards = [
                Card(id: UUID(), intId: 1,title: "Fardier à vapeur - 1769", imageName: "Card1", description: "First functional self-propelled land vehicle, the Fardier à vapeur, a three-wheeled steam tractor designed for the army"),
            ]
            return cards
        case .XIX:
            cards = [
                Card(id: UUID(), intId: 2,title: "Benz Patent-Motorwagen - 1886", imageName: "Card2", description: "The world's first practical, gasoline-powered automobile, marking the beginning of the automotive era"),
            ]
            return cards
        case .XX:
            cards = [
                Card(id: UUID(), intId: 3, title: "Coming Soon!", imageName: "windowBackGround", description: "Thanks for your patience!"),
            ]
            return cards
        case .XXI:
            cards = [
                Card(id: UUID(), intId: 4, title: "Coming Soon!", imageName: "windowBackGround", description: "Thanks for your patience!"),
            ]
            return cards
        }
    }
    
    func  principalCardViewBuilder (cardIntId: Int) -> DetailPageCardView {
        switch cardIntId{
        case 1:
            DetailPageCardView(id: UUID(), pageTitle: "Fardier à vapeur - 1769", contextImageName: "FranceFlag", contextDescription: "In 1769, the French military engineer Nicolas-Joseph Cugnot built the world's first functional self-propelled land vehicle, the Fardier à vapeur, a three-wheeled steam tractor designed for the army, considered the starting point of the automobile, despite its slowness, instability, and need for frequent refueling with wood.", inventorsImageName: "NicolasJosephCugnot", inventorsDescription: "Nicolas Joseph Cugnot was born in Void-Vacon, Lorraine (now Meuse department), France. A military engineer, in 1765 he began experimenting with functional models of steam-powered vehicles for the French army, intended for transporting cannons.", inventionImageName: "Card1", invetionSoundName: "FardierVapeurAudio", inventionDescription: "With the purpose of transporting heavy artillery cannons for the French army, it used a steam engine that moved a front wheel via pistons and a ratchet system, converting linear motion into rotary motion. It could reach speeds of about 4 km/h, but needed to stop every 15 minutes to refuel its copper boiler with firewood, making it very unstable. Despite its limitations, it represented a significant advance, showing the potential for self-propelled vehicles, although its practicality was limited by the technology of the time. It is recognized by the Guinness World Records as the first full-scale automobile.")
        case 2:
            DetailPageCardView(id: UUID(), pageTitle: "Benz Patent-Motorwagen - 1886", contextImageName: "ContextCard2", contextDescription: "Now, in the 19th century, a worldwide effort began to create a truly functional automobile. The first automobile had already been created in 1886.", inventorsImageName: "KarlBenz", inventorsDescription: "Karl Friedrich Michael Benz (born Karl Friedrich Michael Vaillant; November 25, 1844 – April 4, 1929) was a German engine designer and automotive engineer. His 1885 Benz Patent-Motorwagen is considered the first practical modern automobile and the first car to enter mass production.", inventionImageName: "Card2", invetionSoundName: "BenzMotorwagen", inventionDescription: "Karl Friedrich Michael Benz (born Karl Friedrich Michael Vaillant; November 25, 1844 – April 4, 1929) was a German engine designer and automotive engineer. His 1885 Benz Patent-Motorwagen is considered the first practical modern automobile and the first car to enter mass production.")
        default:
            DetailPageCardView(id: UUID(), pageTitle: "Coming soon!", contextImageName: "windowBackGround", contextDescription: "Sorry! Under construction.", inventorsImageName: "", inventorsDescription: "", inventionImageName: "", invetionSoundName: "", inventionDescription: "")
        }
    }
}

