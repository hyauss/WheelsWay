//
//  WelcomeView.swift
//  Wheels Way
//
//  Created by Vinicius Alves Marques on 19/01/26.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        
        NavigationStack{
            ZStack{
                Image("windowBackGround")
                    .resizable()
                    .ignoresSafeArea()
                    .opacity(0.8)
                GeometryReader { i in
                    VStack(alignment:.center){
                        Text("Welcome!")
                            .font(.largeTitle)
                            .bold()
                        Image("WelcomeImage")
                            .resizable()
                            .scaledToFit()
                            .clipShape(RoundedRectangle(cornerRadius: 20))
                            .shadow(radius: 10)
                        Text("Welcome aboard, traveler! From this point on, we embark on a journey that transcends centuries. The history of the automobile! I invite you to explore the  context, inventors, inventions, and their most distinctive sounds. If you wish to travel chronologically through the timeline, simply follow the path; otherwise, guide yourself using the SideBar menu on your left.")
                            .padding(.top)
                        
                        HStack{
                            Spacer()
                            NavigationLink {
                                WelcomeView()
                            }
                            label: {
                                Text("Next")
                            }
                            .foregroundStyle(.black)
                            .buttonStyle(.bordered)
                            .padding(.top)
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
    
    
    struct Welcome_Previews: PreviewProvider {
        static var previews: some View {
            WelcomeView()
                .previewInterfaceOrientation(.landscapeLeft)
            
            
        }
    }
}

