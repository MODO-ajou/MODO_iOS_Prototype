//
//  LibraryUserData.swift
//  Modo
//
//  Created by 박훈종 on 2022/11/15.
//

import Foundation

struct LibraryUserData: Identifiable {
    var id = UUID()
    var imageName: String
    var userName: String
  
}

var userData: [LibraryUserData] = [

    LibraryUserData(imageName: "person.crop.circle.fill", userName: "user1"),
    LibraryUserData(imageName: "person.crop.circle.fill", userName: "user2"),
    LibraryUserData(imageName: "person.crop.circle.fill", userName: "user3"),
]
