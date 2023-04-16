//
//  BookListView.swift
//  Modo
//
//  Created by 허두영 on 2022/11/15.
//

import SwiftUI


struct BookListView : View {
    @ObservedObject var bookStore : BookStore
    var body: some View {
        List {
            ForEach(bookStore.books) { book in
                NavigationLink(destination: DogView(book: book)) {
                    HStack(alignment: .top){
                        AsyncImage(url: URL(string: book.bookImage), content: { image in
                            image
                                .resizable()
                                .frame(width: 80, height: 100)
                                .aspectRatio(contentMode: .fit)
                        }, placeholder: {
                            Rectangle()
                                .fill(.gray.opacity(0.2))
                                .frame(width:80, height: 100)
                                .cornerRadius(20.0)
                                .shadow(radius: 15)
                                .padding(EdgeInsets(top: 10.0, leading: 0.0, bottom: 10.0, trailing: 0.0))
                        })
                        VStack(alignment: .leading){
                            Text(book.name)
                                .font(.title3)
                                .bold()
                            //대출 도서관 이름
                            Text("승준이네 도서관")
                                .font(.caption)
                            //반납 기한
                            Text("반납기한: 22/11/21")
                            //빌렸던 목록은 투명하게?
                        }
                        Spacer()
                        Image(systemName: book.bookMark ? "bookmark.fill" : "bookmark")
                            .resizable()
                            .frame(width: 15,height: 20)
                            .foregroundColor(.yellow)
                            .aspectRatio(contentMode: .fit)
                            .shadow(radius: 10)
                            .onTapGesture {
                                book.bookMark.toggle()
                            }
                    }
                }
            }
        }
    }
}

