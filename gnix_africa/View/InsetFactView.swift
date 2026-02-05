//
//  InsetFactView.swift
//  gnix_africa
//
//  Created by Davi Gomes Florencio on 04/02/26.
//

import SwiftUI

struct InsetFactView: View {
  
  let animal: Animal
  
  var body: some View {
    GroupBox{
      ForEach(animal.fact,id: \.self){item in
        Text(item)
      }
    }
    .tabViewStyle(PageTabViewStyle())
    .frame(minHeight: 148,idealHeight: 168,maxHeight: 180)
  }
}

#Preview {
  
  let animals: [Animal] = Bundle.main.decode("animals.json")
  
  InsetFactView(animal: animals[0])
}
