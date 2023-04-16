//
//  BookDetailView.swift
//  Modo
//
//  Created by 박훈종 on 2022/11/15.
//

import SwiftUI

struct BookDetailView: View {
    var body: some View {
        ScrollView {
            AsyncImage(url: URL(string: "https://media.discordapp.net/attachments/1013996098815279154/1041927002690682890/IMG_2392.png"), content: { image in
                image
                    .resizable()
                    .frame(width: 400, height: 800)
                    .aspectRatio(contentMode: .fit)
                    .padding(.top, 5)
            
            }, placeholder: {
                Rectangle()
                    .fill(.gray.opacity(0.2))
                    .frame(width:150, height: 200)
                    .cornerRadius(20.0)
                    .shadow(radius: 15)
                    .padding(EdgeInsets(top: 10.0, leading: 0.0, bottom: 10.0, trailing: 0.0))
            })
            
        }
        .ignoresSafeArea()
    }
}

struct BookDetailView_Previews: PreviewProvider {
    static var previews: some View {
        BookDetailView()
    }
}
