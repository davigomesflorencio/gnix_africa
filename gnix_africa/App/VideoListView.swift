//
//  VideoListView.swift
//  gnix_africa
//
//  Created by Davi Gomes Florencio on 04/02/26.
//

import SwiftUI

struct VideoListView: View {
  
  @State var videos : [Video] = Bundle.main.decode("videos.json")
  
  let hapImpact = UIImpactFeedbackGenerator(style: .medium)
  
  var body: some View {
    NavigationView(){
      List{
        ForEach(videos){ video in
          NavigationLink(destination: VideoPlayerView(videoSelected: video.id, videoTitle: video.name)){
            VideoListItemView(video: video)
              .padding(.vertical,8)
          }
        }
      }
      .listStyle(InsetGroupedListStyle())
      .navigationBarTitle("Videos",displayMode: .inline)
      .toolbar{
        ToolbarItem(placement: .navigationBarTrailing){
          Button(action: {
            videos.shuffle()
            hapImpact.impactOccurred()
          }){
            Image(systemName: "arrow.2.squarepath")
          }
        }
      }
    }
  }
}

#Preview {
  VideoListView()
}
