//
//  AnimalModel.swift
//  gnix_africa
//
//  Created by Davi Gomes Florencio on 04/02/26.
//

import Foundation

struct Animal: Identifiable, Codable {
  let id: String
  let name: String
  let headline: String
  let description: String
  let link:String
  let image:String
  let gallery: [String]
  let fact : [String]
}
