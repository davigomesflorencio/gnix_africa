//
//  MainView.swift
//  gnix_africa
//
//  Created by Davi Gomes Florencio on 04/02/26.
//

import SwiftUI

struct MainView: View {
  var body: some View {
    TabView{
      ContentView()
        .tabItem{
          Image(systemName: "square.grid.2x2")
          Text("Browse")
        }
      
      VideoListView()
        .tabItem{
          Image(systemName: "play.rectangle")
          Text("Match")
        }
      
      MapView()
        .tabItem{
          Image(systemName: "map")
          Text("Locations")
        }
      
      GalleryView()
        .tabItem{
          Image(systemName: "photo")
          Text("Gallery")
        }
      
      
    }
  }
}

#Preview {
  MainView()
}
