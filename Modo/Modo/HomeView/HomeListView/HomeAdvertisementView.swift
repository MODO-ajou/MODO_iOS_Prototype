//
//  HomeAdvertisementView.swift
//  Modo
//
//  Created by 김보미 on 2022/11/15.
//

import SwiftUI

struct HomeAdvertisementView: View {
    //
    let bookPages: [String] = ["ecrits_title", "ecrits_2", "ecrits_3", "ecrits_4", "ecrits_5", "ecrits_6"]
    
    var body: some View {
        ScrollView {
            VStack {
//                Text("모두의 광고")
//                    .padding()
//                    .font(.title3)
//                    .fontWeight(.bold)
                // 책 이미지를 가로 캐러셀 형태로 보여주는 탭 뷰, 이미지의 이름을 배열에 넣어 하나씩 불러오게 함
                TabView {
                    ForEach(bookPages, id: \.self) { item in
                        Image("\(item)")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: UIScreen.main.bounds.width)
                            .overlay {
                                Color.black.opacity(0.1)
                            }
                    }
                }
                .frame(height: 570)
                .tabViewStyle(.page)
                VStack(spacing: 3) {
                    HStack {
                        Text("에크리")
                            .font(.title.bold())
                        Spacer()
                        Text("자크 라캉")
                            .fontWeight(.bold)
                        Text("지음")
                            .font(.callout)
                    }
                    HStack {
                        Text("광고")
                            .font(.caption)
                            .padding(.horizontal, 10)
                            .padding(.vertical, 2)
                            .foregroundColor(Color.white)
                            .background(Color.modoBrown)
                            .clipShape(Capsule())
                        Spacer()
                        Text("새물결")
                            .font(.callout)
                        Text("|")
                        Text("2019-01-25")
                            .font(.callout)
                    }
                }
                .foregroundColor(Color.modoBlack)
                .padding()
                Divider()
                VStack {
                    Image(systemName: "quote.opening")
                        .font(.title2)
                    Text("자크 라캉의 주저, 한국어판 최초 완역!\n프로이트의 **<꿈의 해석>** 이후\n가장 위대한 정신분석 저서.")
                        .multilineTextAlignment(.center)
                        .padding(.vertical, 10)
                    Image(systemName: "quote.closing")
                        .font(.title2)
                }
                .padding(.vertical, 30)
                VStack(alignment: .leading) {
                    Text("목차")
                        .fontWeight(.bold)
                        .font(.title3)
                    Text("1부")
                    Text("      이 모음집을 열며 · 13")
                    Text("      '도둑맞은 편지'에 관한 세미나 · 17")
                    Text("2부")
                    Text("      나의 이전 글들에 대해 · 81")
                    Text("      ‘현실원리’를 넘어서 · 91")
                    Text("      나 기능의 형성자로서의 거울 단계 · 113")
                    Text("      정신분석에서의 공격성 · 123")
                }
                Spacer()
            }
        }
    }
}

struct HomeAdvertisementView_Previews: PreviewProvider {
    static var previews: some View {
        HomeAdvertisementView()
    }
}
