//
//  BookGirdView.swift
//  Modo
//
//  Created by 허두영 on 2022/11/15.
//

import SwiftUI


struct BookGridView : View {
    let columns: [GridItem] = [
        GridItem(.flexible(), spacing: nil, alignment: nil),
        GridItem(.flexible(), spacing: nil, alignment: nil)
    ]
    @ObservedObject var bookStore : BookStore
    var body: some View {
        ScrollView{
            LazyVGrid(columns: columns) {
                ForEach(bookStore.books) { book in
                    NavigationLink(destination: DogView(book: book)) {
                        AsyncImage(url: URL(string: book.bookImage), content: { image in
                            ZStack{
                                image
                                    .resizable()
                                    .frame(width: 150, height: 200)
                                    .aspectRatio(contentMode: .fit)
                                    .opacity(book.isCheckOut ? 0.2 : 1)
                                if book.isCheckOut{
                                    Text("X")
                                        .foregroundColor(.red.opacity(0.8))
                                        .bold()
                                        .font(SwiftUI.Font.largeTitle)

                                    Text("반납예정일 22/11/21")
                                        .foregroundColor(.black)
                                        .position(x:95,y:180)
                                }
                            }
                        }, placeholder: {
                            Rectangle()
                                .fill(.gray.opacity(0.2))
                                .frame(width:150, height: 200)
                                .cornerRadius(20.0)
                                .shadow(radius: 15)
                                .padding(EdgeInsets(top: 10.0, leading: 0.0, bottom: 10.0, trailing: 0.0))
                        })
                    }
                    //버튼이나 탭제스처나 같은결과, 둘다 클릭후 피커를 바꿔야 북마크가 적용됨, 이유가 뭐지
                    .overlay {
                        //                        Button(action: {
                        //                            book.bookMark.toggle()
                        //                        }) {
                        //                            Image(systemName: book.bookMark ? "bookmark.fill" : "bookmark")
                        //                                .resizable()
                        //                                .frame(width: 15,height: 20)
                        //                                .foregroundColor(.yellow)
                        //                                .aspectRatio(contentMode: .fit)
                        //                                .shadow(radius: 10)
                        //                        }
                        //                        .frame(width: 20,height: 20)
                        //                        .position(x:135,y:15)
                        Image(systemName: book.bookMark ? "bookmark.fill" : "bookmark")
                            .resizable()
                            .frame(width: 15,height: 20)
                            .foregroundColor(.yellow)
                            .aspectRatio(contentMode: .fit)
                            .shadow(radius: 10)
                            .position(x:135,y:15)
                            .onTapGesture {
                                book.bookMark.toggle()
                            }
                    }
                }
            }
        }
    }
}

