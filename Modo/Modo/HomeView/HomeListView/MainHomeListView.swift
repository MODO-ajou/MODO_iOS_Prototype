//
//  MainHomeListView.swift
//  Modo
//
//  Created by 이승준 on 2022/11/14.
//

import SwiftUI

struct MainHomeListView: View {
    @ObservedObject var libraryManager = LibraryViewModel()
    
    var body: some View {
        let dictKeyArray = libraryManager.getLibraryKeys()
        let libraryDict = libraryManager.libraryDictionary
        
        VStack {
            ForEach(0..<dictKeyArray.count, id: \.self) { index in
                // 바인딩해서 뷰 구성
                let eachKeys = dictKeyArray.sorted(by: >)[index]
                if let eachLibrary = libraryDict[eachKeys],
                   index % 4 != 3 {
                    NavigationLink {
                        UserShelfView()
                    } label: {
                        eachLibraryInfoView(eachLibrary: eachLibrary)
                            .foregroundColor(.black)
                    }
                    Divider()
                } else if let eachLibrary = libraryDict[eachKeys],
                          index % 4 == 3 {
                    NavigationLink {
                        HomeAdvertisementView()
                    } label: {
                        eachAdvertiseCell()
                            .foregroundColor(.black.opacity(0.6))
                    }
                    Divider()
                    eachLibraryInfoView(eachLibrary: eachLibrary)
                        .foregroundColor(.black)
                }
            }
        }
    }
    
    @ViewBuilder
    private func eachLibraryInfoView(eachLibrary: LibraryInfos) -> some View {
        HStack(alignment: .center) {
            Image(systemName: "person.circle")
                .resizable()
                .frame(width: 40, height: 40)
                .padding(.horizontal, 10)
            
            VStack(alignment: .leading) {
                Text(eachLibrary.libraryName)
                    .font(.headline)
                
                
                Text("도서관장 : ")
                    .font(.caption)
                + Text("\(eachLibrary.libraryOwnerName)")
                    .font(.caption)
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        ForEach(eachLibrary.libraryCategory, id: \.self) { category in
                            Text("\(category.rawValue)")
                                .font(.caption)
                                .frame(minWidth: 50, minHeight: 20)
                                .background {
                                    Color.brown.opacity(0.3)
                                        .cornerRadius(30)
                                }
                        }
                    }
                }
            }
            
            Spacer()
            
            VStack(alignment: .trailing) {
                Image(systemName: "heart")
                    .padding(.vertical, 5)
                
                Text("\(eachLibrary.libraryVisitorCount)")
            }
            .padding(.horizontal, 10)
        }
    }
    
    @ViewBuilder
    private func eachAdvertiseCell() -> some View {
        HStack(alignment: .center) {
            Image(systemName: "book")
                .resizable()
                .frame(width: 30, height: 30)
                .padding(.horizontal, 10)
              
            Spacer()
                .frame(width: 20)
            HStack {
                VStack(alignment: .leading) {
                    Text("인간에 대한 가장 깊고 넓은 이해,")
                        .font(.footnote)
                        .padding(.trailing, 30)
                    Text("자크 라깡 에끄리 번역판을 만나보세요.")
                        .font(.footnote)
                        .padding(.trailing, 30)
                    
                    
                }
                
                Text("광고")
                    .font(.caption)
                    .foregroundColor(.gray)
                    .padding(.horizontal, 10)
                    .offset(x: 38)
            }
        }
        .offset(x: -20)
    }
}

struct MainHomeListView_Previews: PreviewProvider {
    static var previews: some View {
        MainHomeListView()
    }
}
