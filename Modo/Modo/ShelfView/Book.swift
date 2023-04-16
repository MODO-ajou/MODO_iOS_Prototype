//
//  Book.swift
//  Modo
//
//  Created by 허두영 on 2022/11/15.
//

import Foundation

class Book : Identifiable {
    var id = UUID()
    var name : String
    var bookImage : String
    var dogEarsImage : String
    var isCheckOut = false
    var bookMark  = false
    init(name: String, bookImage: String, dogEarsImage: String) {
        self.name = name
        self.bookImage = bookImage
        self.dogEarsImage = dogEarsImage
    }
}

class BookStore: ObservableObject {
    @Published var books: [Book]
    
    
    init(books: [Book] = []){
        self.books = books
        self.books.append(Book(name: "난 책이 좋아요", bookImage: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQR2z9CnHoNJK4JUWDS_QwhM7r5OMRCMqnSbA&usqp=CAU", dogEarsImage: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQR2z9CnHoNJK4JUWDS_QwhM7r5OMRCMqnSbA&usqp=CAU"))
        self.books[0].isCheckOut = true
        
        self.append(name: "신과 함께", bookImage: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS7bxLqu_o5auT184jfgmYBN0AREnQ7-6kysg&usqp=CAU", dogEarsImage: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRgATfsV9kn7QhltoPhEYPK4AlXpuXozsmZvg&usqp=CAU")
        
        self.append(name: "룬의 아이들", bookImage: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRrCvF1GduUQ4d1lHUwratoL8H8ZcUmMLRNGA&usqp=CAU", dogEarsImage: "https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMTA1MDFfMjkz%2FMDAxNjE5ODY3MzkwNzI3.dtDw72XmjhCZqYWmidwhcnu9O4funDxVluuRuRX78dEg.2mmq5LFk5S5mvYXJ8C1UjGvW_HXleFb6sNqe-pDW71Ag.JPEG.verygoodhq%2F1619867270826.jpg&type=a340")

        self.append(name: "신과 함께", bookImage: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS7bxLqu_o5auT184jfgmYBN0AREnQ7-6kysg&usqp=CAU", dogEarsImage: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRj5F3ccefpyDvGGVoQGSIhkhsTU0sUxY8mL3myidFDKt47Sm0O6mePL7Ju_1jFK3i2vEI&usqp=CAU")
    }
    
    func append(name: String, bookImage: String, dogEarsImage: String) {
        books.append(Book(name: name, bookImage: bookImage, dogEarsImage: dogEarsImage))
    }
    
    func numberOfCheckOut()->Int {
        var result = 0
        for book in books {
            if !book.isCheckOut { result += 1 }
        }
        return result
    }
    
}
