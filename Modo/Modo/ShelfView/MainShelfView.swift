//
//  MainShelfView.swift
//  Modo
//
//  Created by 박성민 on 2022/11/14.
//

// adjusted size of image & added spacer and navigation
// hidden back button

import SwiftUI
enum SideOfTheView: String, CaseIterable {
    case checkOut = "대여가능 책"
    case checkIn = "대여중인 책"
}
struct MainShelfView: View {
    @State private var isMyPageActive: Bool = false
    @State private var selectedSide: SideOfTheView = .checkOut
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    
                    HStack{
                        Image("TedPicture")
                            .resizable()
                            .frame(width: 80, height: 80)
                            .cornerRadius(80)
                            .padding(30)
                            .offset(x: -40)
                        VStack {
                            HStack{
                                Text("TED")
                                    .bold()
                                    .font(.largeTitle)
                                    .foregroundColor(.black)
                                Text("님의 도서관에는")
                                    .bold()
                                    .font(.body)
                                    .foregroundColor(.brown)
                            }
                            HStack {
                                Text("40")
                                    .fontWeight(.bold)
                                    .font(.title)
                                    .foregroundColor(.modoBrown)
                                Text("권의 책이 있어요.")
                                    .bold()
                                    .font(.body)
                                .foregroundColor(.brown)
                            }
                            
                        }
                    }
                    HStack{
                        Text("대여 가능 : 20권")
                            .foregroundColor(.secondary)
                        Spacer()
                            .frame(width: 80)
                        Text("대여중 : 20권")
                            .foregroundColor(.secondary)
                    }
                }
                Divider()
                
                VStack {
                    Picker("Choose a Side", selection: $selectedSide) {
                        ForEach(SideOfTheView.allCases, id: \.self) {
                            Text($0.rawValue)
                            
                        }
                        
                    }
                    .pickerStyle(SegmentedPickerStyle())
                    .padding(.horizontal, 10)
                    VStack {
                        Image("Shelf")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                        
                        Image("Shelf")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .padding(.top, -8)
                        Image("Shelf")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .padding(.top, -8)
                    }
                }
            }
            .navigationBarItems(trailing: NavigationLink(destination: AddBookView(), isActive: $isMyPageActive) {
                Image(systemName: "plus.square")
            })
            .navigationBarItems(leading: Button("편집"){
                
            })
            .navigationTitle("My Library")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct MainShelfView_Previews: PreviewProvider {
    static var previews: some View {
        MainShelfView()
    }
}
