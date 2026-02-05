//
//  ExternalWeblinkView.swift
//  gnix_africa
//
//  Created by Davi Gomes Florencio on 04/02/26.
//

import SwiftUI

struct ExternalWeblinkView: View {
  
  let animal:Animal
  var body: some View {
    GroupBox{
      HStack{
        Image(systemName: "globe")
        Text("Wikipedia")
        Spacer()
        
        Group{
          Image(systemName: "arrow.up.right.square")
          Link(animal.name,
               destination: (URL(string: animal.link) ?? URL(string: "https://wikipedia.org"))!)
        }
      }
    }
  }
}

#Preview {
  let animals: [Animal] = Bundle.main.decode("animals.json")
  ExternalWeblinkView(animal: animals[0])
}
