//
//  CoverImageView.swift
//  gnix_africa
//
//  Created by Davi Gomes Florencio on 04/02/26.
//

import SwiftUI

struct CoverImageView: View {
  
  let coverImages :[CoverImage] = Bundle.main.decode("covers.json")
  
  var body: some View {
    TabView{
      ForEach(coverImages){ item in
        Image(item.name)
          .resizable()
          .scaledToFill()
      }
    }
    .tabViewStyle(PageTabViewStyle())
  }
}

#Preview {
  CoverImageView()
}
