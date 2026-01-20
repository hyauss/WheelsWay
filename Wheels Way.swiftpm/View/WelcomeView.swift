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
            GeometryReader { i in
                VStack(alignment:.center){
                    
                    Image("WelcomeImage")
                        .resizable()
                        .scaledToFit()
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                        
                    Text("Welcome aboard, traveler! From this point on, we embark on a journey that transcends centuries. The history of the automobile! I invite you to explore the  context, inventors, inventions, and their most distinctive sounds. If you wish to travel chronologically through the timeline, simply follow the path; otherwise, guide yourself using the SideBar menu on your left.")
                        
                        .padding(.top)
                    //                    .navigationTitle(Text("Context"))
                        .toolbar{
                            ToolbarItem(placement: .principal) {
                                Text("Welcome!")
                                    .bold()
                                    .font(.largeTitle)
                            }
                        }
                }
                .padding(.horizontal,i.size.width * 0.05)
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

