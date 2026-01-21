import SwiftUI

struct MapsStyleView: View {
    
    
    
    // Sidebar
    @State private var sidebarSelection: SidebarSelection? = .Welcome
    @State var sideBarViewModel = SideBarViewModel()
    // Lista (sheet lateral)
    @State private var cards: [Card] = []
    @State private var cardSelection: Card?
    @State private var visibility: NavigationSplitViewVisibility = .doubleColumn
    
    
    var body: some View {
        NavigationSplitView(columnVisibility: $visibility) {
            List(selection: $sidebarSelection) {
                Label("Welcome traveller!", systemImage: "house")
                    .tag(SidebarSelection.Welcome)
                Label("XVIII", systemImage: "clock")
                    .tag(SidebarSelection.XVIII)
                
                Label("XIX", systemImage: "clock")
                    .tag(SidebarSelection.XIX)
                
                Label("XX", systemImage: "clock")
                    .tag(SidebarSelection.XX)
                
                Label("XXI", systemImage: "clock")
                    .tag(SidebarSelection.XXI)
            }
            .listStyle(.sidebar)
            .navigationTitle("Centuries")
            
        } content: {
            List(cards, selection: $cardSelection) { card in
                Button {
                    cardSelection = card
                } label: {
                        Text(card.title)
                            .font(.largeTitle)
                        Image("\(card.imageName)")
                            .resizable()
                            .scaledToFit()
                            .clipShape(RoundedRectangle(cornerRadius: 20))
                            .shadow(radius: 10)
                            .padding()
                        Text(card.description)
                    }
            }
            .navigationTitle("Key inventions")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        visibility = sideBarViewModel.closeContent()
                    } label: {
                        Image(systemName: "xmark")
                    }
                }
            }
        }
        detail: {
            if let card = cardSelection {
                VStack {
                    switch card.intId {
                    case 0:
                        WelcomeView()
                    case 1:
                        sideBarViewModel.principalCardViewBuilder(cardIntId: 1)
                    default:
                        WelcomeView()
                    }
                }
            } else {
                WelcomeView()
            }
        }
        .onChange(of: sidebarSelection!) { newCards in
            cards = sideBarViewModel.loadInventions(selection: sidebarSelection!)
        }
        .onAppear(){
            cards = sideBarViewModel.loadInventions(selection: .Welcome)
        }
    }
}

struct MapsStyleView_Previews: PreviewProvider {
    static var previews: some View {
        MapsStyleView()
            .previewInterfaceOrientation(.landscapeLeft)
        
        
    }
}

