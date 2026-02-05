//
//  GalleryView.swift
//  gnix_africa
//
//  Created by Davi Gomes Florencio on 04/02/26.
//

import SwiftUI

struct GalleryView: View {
  
  
  @State private var selectedAnimal: String = "lion"
  
  
  let animals : [Animal] = Bundle.main.decode("animals.json")
  let haptics = UIImpactFeedbackGenerator(style: .medium)
  
  // MARK: - Simple Grid Layout
//  let gridLayout : [GridItem] = [
//    GridItem(.flexible()),
//    GridItem(.flexible()),
//    GridItem(.flexible()),
//    GridItem(.flexible())
//  ]
  
  
  @State private var gridLayout: [GridItem] = [GridItem(.flexible())]
  @State private var gridColumn: Double = 3.0
  
  func gridSwitch() {
      withAnimation(.easeIn) {
          gridLayout = Array(repeating: .init(.flexible()), count: Int(gridColumn))
      }
  }
  
  
  var body: some View {
    ScrollView(.vertical,showsIndicators: false){
      VStack(alignment: .center,spacing:30){
        // MARK: - Grid
        
        Image(selectedAnimal)
          .resizable()
          .scaledToFit()
          .clipShape(Circle())
          .overlay(Circle().stroke(Color.white,lineWidth: 8))
        
        Slider(value: $gridColumn,in:2...4,step:1)
          .padding(.horizontal)
          .onChange(of : gridColumn,perform: {value in
            gridSwitch()
          })
        
        LazyVGrid(columns: gridLayout,alignment: .center, spacing: 10){
          ForEach(animals){animal in
            Image(animal.image)
              .resizable()
              .scaledToFit()
              .clipShape(Circle())
              .overlay(Circle().stroke(Color.white,lineWidth: 2))
              .onTapGesture {
                selectedAnimal = animal.image
                haptics.impactOccurred()
              }
          }
        }
        .onAppear(perform: {
          gridSwitch()
        })
        
      }
      .padding(.horizontal,10)
      .padding(.vertical,50)
    }
    .frame(maxWidth: .infinity,maxHeight: .infinity)
    .background(MotionAnimationView())
  }
}

#Preview {
  GalleryView()
}
