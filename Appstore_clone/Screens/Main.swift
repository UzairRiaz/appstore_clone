//
//  Main.swift
//  Appstore_clone
//
//  Created by Uzair Riaz on 23/02/2022.
//

import SwiftUI

struct Main: View {
    var body: some View {
        TabView{
            Today()
                .tabItem {
                        Image(systemName: "doc.text.image")
                        Text("Today")
                }
            Text("Games")
                .tabItem {
                    Image(systemName: "gamecontroller")
                    Text("Game")
                }
            Text("App")
                .tabItem {
                    Image(systemName: "square.stack.3d.up.fill")
                    Text("Apps")
                }
            Text("Arcade")
                .tabItem {
                    Image(systemName: "flame.fill")
                    Text("Arcade")
                }
            Text("Search")
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("Search")
                }
        }
    }
}


struct Main_Previews: PreviewProvider {
    static var previews: some View {
        Main()
    }
}
