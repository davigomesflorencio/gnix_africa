//
//  AnimalGridItemView.swift
//  gnix_africa
//
//  Created by Davi Gomes Florencio on 04/02/26.
//

import SwiftUI

struct AnimalGridItemView: View {
  let animal: Animal
  
  // MARK: - BODY
  
  var body: some View {
    Image(animal.image)
      .resizable()
      .scaledToFit()
      .cornerRadius(12)
  }
}

#Preview {
  var animals:[Animal] = Bundle.main.decode("animals.json")!
  AnimalGridItemView(animal: animals[0])
}
