//
//  MainSettingsView.swift
//  Modo
//
//  Created by 이승준 on 2022/11/14.
//

import SwiftUI

struct MainSettingsView: View {
    var body: some View {
        NavigationStack{
            Image("Setting")
                .navigationTitle("Settings")
                .navigationBarTitleDisplayMode(.inline)
                
        }
    }
}

struct MainSettingsView_Previews: PreviewProvider {
    static var previews: some View {
        MainSettingsView()
    }
}
