//
//  ContentView.swift
//  Modo
//
//  Created by 이승준 on 2022/11/14.
//

import SwiftUI

// 커스텀 컬러를 불러오기 위한 extension
extension Color{
    static let bgColor = Color("bgColor")
    static let lightGray = Color("lightGray")
    static let modoBlack = Color("modoBlack")
    static let modoBrown = Color("modoBrown")
    static let modoPurple = Color("modoPurple")
    static let modoLightPurple = Color("modoLightPurple")
}

struct ModoMainTabView: View {

    var body: some View {
        ZStack {
            TabView {
                
                MainHomeView()
                    .tabItem {
                        Image(systemName: "house")
                        
                        Text("Home")
                    }
                
                CheckOutView()
                    .tabItem {
                        Image(systemName: "checkmark.circle")
                        
                        Text("Check Out")
                    }
                
                MainShelfView()
                    .tabItem {
                        Image(systemName: "books.vertical")
                        
                        Text("My library")
                    }
                
                MainSettingsView()
                    .tabItem {
                        Image(systemName: "gearshape")
                        
                        Text("Settings")
                    }
            }
            .onAppear {
                let appearance = UITabBarAppearance()
                appearance.backgroundEffect = UIBlurEffect(style: .systemUltraThinMaterial)
                appearance.backgroundColor = UIColor(Color.white.opacity(0.7))
                
                // Use this appearance when scrolling behind the TabView:
                UITabBar.appearance().standardAppearance = appearance
                // Use this appearance when scrolled all the way up:
                UITabBar.appearance().scrollEdgeAppearance = appearance
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ModoMainTabView()
    }
}
