//
//  DogView.swift
//  Modo
//
// Modified by 박성민 on 2022/11/15.

// deleted comments and check out history
// added logs and button to add new log
// modified view


// book image and read date
// swipe

import SwiftUI

struct DogView : View {
    var book: Book
    @State private var selected: Bool = false
    @State private var currentText : String = ""
    @State private var appearedText: Bool = false
    @State var userText: String = ""
    
    var body: some View {
        ScrollView {
            VStack {
                ScrollView (.horizontal, showsIndicators: false) {
                    HStack {
                        Image("ScanPage")
                            .resizable()
                            .frame(width: 250, height: 400)
                            .onTapGesture {
                                selected.toggle()
                            }
                            .scaleEffect(self.selected ? 1.5 : 1)
                        Image("ScanPage")
                            .resizable()
                            .frame(width: 250, height: 400)
                            .onTapGesture {
                                selected.toggle()
                            }
                            .scaleEffect(self.selected ? 1.5 : 1)
                        Image("ScanPage")
                            .resizable()
                            .frame(width: 250, height: 400)
                            .onTapGesture {
                                selected.toggle()
                            }
                            .scaleEffect(self.selected ? 1.5 : 1)
                    }
                }
                Divider()
                
                HStack {
                    TextField("이 페이지엔 이 생각을", text: $currentText)
                        .textFieldStyle(.roundedBorder)
                        .padding()
                        .overlay {
                            Button(action: {saveText() }) {
                                Text("등록")
                                    .font(.body)
                                    .bold()
                            }
                            .padding(.leading,300)
                            .foregroundColor(.black)
                        }
                }
                VStack {
                    Text("생각")
                        .padding(.trailing, 280)
                        .padding(.bottom)
                    Divider()
                    HStack {
                        Text("Page 50\nLine 10")
                        //.padding(.leading, 50)
                        Spacer()
                        Text("친구한테 말해줘야지.")
                            .padding(.leading, 70)
                    }
                    .padding(.bottom, 5)
                    Divider()
                    HStack {
                        Text("Page 30\nLine 16")
                        //.padding(.leading, 50)
                        Spacer()
                        Text("이 글을 적용하려면 어떻게 해야하지?")
                            .padding(.leading, 70)
                    }
                    .padding(.bottom, 5)
                    Divider()
                    HStack {
                        Text("Page 80\nLine 11")
                        //.padding(.leading, 50)
                        Spacer()
                        Text("이 말 기억하자.")
                            .padding(.leading, 70)
                    }
                    .padding(.bottom, 5)
                }
                .bold()
                .padding()
                .frame(width: 350)
                .background(.white)
                .cornerRadius(20.0)
                .shadow(radius: 5)
                //Spacer()
                
            }
        }
        .navigationBarTitle(book.name, displayMode: NavigationBarItem.TitleDisplayMode.large)
    }
    
    func saveText() {
        appearedText = true
        userText = currentText
    }
    
}
