//
//  HomeViewModalGuide.swift
//  Modo
//
//  Created by 김보미 on 2022/11/14.
//

import SwiftUI

// 가이드를 풀 스크린 모달로 구현하기 위한 뷰
struct HomeViewModalGuide: View {
    @Binding var isGuideViewPresented: Bool
    // 런치스크린을 위한 상태 프로퍼티 선언
    @State var isLoading: Bool = true
    // 런치스크린의 아이콘을 위한 상태 프로퍼티 선언
    @State var isShowing: Bool = false
    
    var body: some View {
        ZStack {
            ZStack {
                Color.modoBrown.edgesIgnoringSafeArea(.all)
                    .opacity(15)
                VStack {
                    ZStack() {
                        Spacer()
                        // 팝업의 동그란 모양
                        RoundedRectangle(cornerRadius: 65)
                            .fill(Color.white)
                            .frame(width: UIScreen.main.bounds.width / 8 * 7, height: UIScreen.main.bounds.height / 8 * 6)
                            .padding(10)
                        VStack {
                            VStack(alignment: .leading) {
                                // 가이드 안내문구
                                HStack{
                                    Text("도움말")
                                        .font(.caption)
                                        .foregroundColor(Color.gray)
                                        .padding(.vertical, 8)
                                        .padding(.horizontal, 15)
                                        .background(Color.lightGray)
                                        .clipShape(Capsule())
                                    Spacer()
                                }
                                Text("모두의 도서관,")
                                    .font(.largeTitle)
                                    .fontWeight(.heavy)
                                Text("가이드가")
                                    .font(.largeTitle)
                                Text("필요하신가요?")
                                    .font(.largeTitle)
                                    .padding(.bottom, 20)
                                // 상세 가이드 리스트
                                VStack(alignment: .leading, spacing: 5) {
                                    HStack {
                                        Image(systemName: "1.circle")
                                        Text("도서관 살펴보기")
                                    }
                                    HStack {
                                        Image(systemName: "2.circle")
                                        Text("대여 시작하기")
                                    }
                                    HStack {
                                        Image(systemName: "3.circle")
                                        Text("북마크 살펴보기")
                                    }
                                    HStack {
                                        Image(systemName: "4.circle")
                                        Text("내 서재 살펴보기")
                                    }
                                }
                                .fontWeight(.medium)
                            }
                            .foregroundColor(Color.modoBlack)
                            Spacer()
                            VStack {
                                Button(action: {
                                    
                                }, label: {
                                    Text("가이드 보기")
                                        .foregroundColor(Color.white)
                                        .fontWeight(.bold)
                                        .padding(.vertical, 20)
                                        .padding(.horizontal, 90)
                                        .background(Color.modoBrown)
                                        .clipShape(Capsule())
                                })
                                Text("가이드는 언제든 설정에서 볼 수 있어요")
                                    .font(.caption)
                                    .foregroundColor(Color.gray)
                            }
                        }
                        .frame(width: UIScreen.main.bounds.width / 8 * 5.5, height: UIScreen.main.bounds.height / 8 * 5.5)
                        .padding()
                    }
                    // 나중에 보기 버튼
                    Button(action: {
                        isGuideViewPresented = false
                    }, label: {
                        Text("다음에 볼게요")
                            .foregroundColor(Color.white)
                    })
                }
            }.background(Color.white).zIndex(0)
            if isLoading {
                launchScreenView.transition(.opacity).zIndex(1)
            }
        }
        .onAppear {
            // 특정 코드를 일정 시간 뒤에 실행시키고자 하는 경우!
            DispatchQueue.main.asyncAfter(deadline: .now() + 3, execute: {
                withAnimation {
                    isLoading.toggle()
                    
                }
            })
        }
        
    }
}

// 런치스크린을 위한 extension: 갈색 배경 위에 modo의 로고가 보이도록
extension HomeViewModalGuide {
    var launchScreenView: some View {
        ZStack(alignment: .center) {
            Color.modoBrown.edgesIgnoringSafeArea(.all).zIndex(0)
            if isShowing {
                Image("Title").transition(.opacity).zIndex(1)
            }
        }
        .onAppear {
            // 특정 코드를 일정 시간 뒤에 실행시키고자 하는 경우!
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.7, execute: {
                withAnimation {
                    isShowing.toggle()
                }
            })
        }
    }
}

struct HomeViewModalGuide_Previews: PreviewProvider {
    static var previews: some View {
        HomeViewModalGuide(isGuideViewPresented: .constant(false))
    }
}
