//
//  VideoListItemView.swift
//  gnix_africa
//
//  Created by Davi Gomes Florencio on 04/02/26.
//

import SwiftUI

struct VideoListItemView: View {
  let video :Video
  
  var body: some View {
    HStack(spacing: 10){
      ZStack{
        Image(video.thumbnail)
          .resizable()
          .scaledToFit()
          .frame(height: 80)
          .cornerRadius(8)
        
        Image(systemName: "play.circle")
          .resizable()
          .scaledToFit()
          .frame(height: 32)
          .shadow(radius: 4)
      }
      
      VStack(alignment: .leading, spacing: 5){
        Text(video.name)
          .font(.title2)
          .fontWeight(.heavy)
          .foregroundColor(.accentColor)
        
        Text(video.headline)
          .font(.footnote)
          .multilineTextAlignment(.leading)
          .lineLimit(2)
      }
    }
  }
}

#Preview {
  let videos:[Video] = Bundle.main.decode("videos.json")
  VideoListItemView(video: videos[0])
}
