//
//  DetailModel.swift
//  Wheels Way
//
//  Created by Vinicius Alves Marques on 19/01/26.
//

import Foundation
import SwiftUI

struct DetailPageCardView: View {
    let id: UUID
    let pageTitle: String
    let contextImageName: String
    let contextDescription: String
    let inventorsImageName: String
    let inventorsDescription: String
    let inventionImageName: String
    let invetionSoundName: String
    let inventionDescription: String
    @State var soundManager = SoundManager()
    
    var body: some View {
        
        NavigationStack{
            ZStack{
                GeometryReader { i in
                    Image("windowBackGround")
                        .resizable()
                        .ignoresSafeArea()
                        .opacity(0.8)
                    ScrollView{
                        VStack{
                            Text(pageTitle)
                                .font(.largeTitle)
                            Image("\(contextImageName)")
                                .resizable()
                                .scaledToFill()
                                .clipShape(RoundedRectangle(cornerRadius: 20))
                                .shadow(radius: 10)
                                .padding(.top)
                            Text(contextDescription)
                                .padding(.top)
                            Image("\(inventorsImageName)")
                                .resizable()
                                .scaledToFill()
                                .clipShape(RoundedRectangle(cornerRadius: 20))
                                .shadow(radius: 10)
                                .padding(.top)
                            Text(inventorsDescription)
                                .padding(.top)
                            Image("\(inventionImageName)")
                                .resizable()
                                .scaledToFill()
                                .clipShape(RoundedRectangle(cornerRadius: 20))
                                .shadow(radius: 10)
                                .padding(.top)
                            HStack (alignment: .center){
                                Button {
                                    soundManager.playAudio(soundName: invetionSoundName)
                                } label: {
                                    Image(systemName:  "play.fill")
                                }
                                .buttonStyle(.bordered)
                                Text("Play/Pause")
                            }
                            .padding(.top)
        
                            Text(inventionDescription)
                                .padding(.top)
                            
                            HStack{
                                Spacer()
                                NavigationLink {
                                    MapsStyleView()
                                }
                                label: {
                                    Text("Next")
                                }
                                .foregroundStyle(.black)
                                .buttonStyle(.bordered)
                                .padding(.top)
                            }
                        }
                    }
                    .padding()
                    .background()
                    .shadow(radius: 10)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                    .padding(.horizontal,i.size.width * 0.09)
                }
            }
        }
    }
}

