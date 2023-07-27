//
//  Photos.swift
//  Flickr Client App
//
//  Created by Salim Özel on 26.07.2023.
//

import Foundation
struct Photos: Codable {
    let page: Int?
    let pages: Int?
    let perpage: Int?
    let total: Int?
    let photo: [Photo]?
}

