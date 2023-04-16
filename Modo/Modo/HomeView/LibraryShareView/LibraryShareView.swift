//
//  LibraryShareView.swift
//  Modo
//
//  Created by 박훈종 on 2022/11/15.
//

import SwiftUI

struct LibraryShareView: View {
    var body: some View {
        VStack {
            Text("회원님이 팔로우 하시는 도서관(유저) 입니다")
            
            NavigationStack {
                List(userData) { item in
                    HStack {
                        Image(systemName: item.imageName)
                        Text("\(item.userName) 님의 도서관 입니다.")
                    }
                }
            }
        }
    }
}

struct LibraryShareView_Previews: PreviewProvider {
    static var previews: some View {
        LibraryShareView()
    }
}
