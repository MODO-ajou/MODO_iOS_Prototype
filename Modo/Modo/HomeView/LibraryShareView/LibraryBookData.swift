//
//  LibraryBookData.swift
//  Modo
//
//  Created by 박훈종 on 2022/11/15.
//

import Foundation

struct LibraryBookData: Identifiable {
    var id = UUID()
    var imageName: String
    var bookName: String
    var introduction: String
    var checkBorrowEnable: String
  
}

var bookData: [LibraryBookData] = [
    
    LibraryBookData(imageName: "test", bookName: "책 제목", introduction: "책 소개", checkBorrowEnable: "대출 가능")

]
