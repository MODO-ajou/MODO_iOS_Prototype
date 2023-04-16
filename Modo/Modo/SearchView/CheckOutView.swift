//
//  CheckOutView.swift
//  Modo
//
//  Created by 조형구 on 2022/11/16.
//

import SwiftUI
enum SideOfTheForce: String, CaseIterable {
    case checkOut = "내가 빌린 책"
    case checkIn = "내가 빌려준 책"
}

struct CheckOutView: View {
    
    let data = {Array(1...25).map { "목록 \($0)"}}
    
    //화면을 그리드형식으로 꽉채워줌
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    @State var searchQueryString = ""
    
    var datas = (0...100).map(String.init).map(SomeData.init)
    var filteredDatas: [SomeData] {
        if searchQueryString.isEmpty {
            return datas
        } else {
            return datas.filter { $0.name.localizedStandardContains(searchQueryString) }
        }
    }
    @State private var firstNaviLinkActive = false
    @State private var selectedSide: SideOfTheForce = .checkOut
    @State private var isShowingOutView: Bool = false
    var body: some View {
        NavigationView {
            ZStack{
                ScrollView(.vertical, showsIndicators: false) {
                    VStack{
                        //피커
                        Picker("Choose a Side", selection: $selectedSide) {
                            ForEach(SideOfTheForce.allCases, id: \.self) {
                                Text($0.rawValue)
                                
                            }
                            
                        }
                        .pickerStyle(SegmentedPickerStyle())
                        .padding(.horizontal, 10)
                        
                        
                        
                    }
                    
                    
                }.navigationBarItems(trailing: NavigationLink(destination: MainChatView(), isActive: $firstNaviLinkActive) {
                    Image(systemName: "message")
                })
                .navigationTitle("대여하기")
                .navigationBarTitleDisplayMode(.inline)
                if !searchQueryString.isEmpty{
                    List(filteredDatas) { data in
                        NavigationLink {
                            SomeView(name: data.name)
                        } label: {
                            Text(data.name)
                        }
                    }
                    .listStyle(PlainListStyle())
                    .navigationTitle("검색")
                    
                }
                ZStack {
                    CheckInDetailView()
                        .offset(y: 50)
                    if selectedSide == .checkIn{
                        CheckOutDetailView()
                            .offset(y: 50)
                    }
                    
                }
            }
            
        }
        .searchable(
            text: $searchQueryString,
            placement: .navigationBarDrawer(displayMode: .always),
            prompt: "책, 작가, 장르, 도서관 등"
        )
        
    }
    
    
}


struct CheckOutView_Previews: PreviewProvider {
    static var previews: some View {
        CheckOutView()
    }
}
struct SomeView: View {
    var name: String
    
    var body: some View {
        Text(name)
    }
}

struct SomeData: Identifiable {
    var name: String
    var id: String { self.name }
}
