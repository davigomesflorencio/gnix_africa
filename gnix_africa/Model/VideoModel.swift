//
//  VideoModel.swift
//  gnix_africa
//
//  Created by Davi Gomes Florencio on 04/02/26.
//

import Foundation

struct Video: Identifiable,Codable {
  let id :String
  let name:String
  let headline:String
  
  var thumbnail:String{
    "video-\(id)"
  }
}
