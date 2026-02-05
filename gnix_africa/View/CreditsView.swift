//
//  CreditsView.swift
//  gnix_africa
//
//  Created by Davi Gomes Florencio on 04/02/26.
//

import SwiftUI

struct CreditsView: View {
  var body: some View {
    VStack {
      Image("compass")
        .resizable()
        .scaledToFit()
        .frame(width: 128, height: 128)
      
      Text("""
        Copyright © Robert Petras
        All right reserved
        Better Apps ♡ Less Code
        """)
      .font(.footnote)
      .multilineTextAlignment(.center)
    } //: VSTACK
    .padding()
    .opacity(0.4)
  }
}

#Preview {
  CreditsView()
}
