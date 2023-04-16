//
//  CheckOutDetailView.swift
//  Modo
//
//  Created by 조형구 on 2022/11/16.
//

import SwiftUI
//대여 화면
struct CheckOutDetailView: View {
    var body: some View {
        VStack{
            List{
                
                Section(header: Text("대여중")){
                    HStack{
                        Image("bookCover")
                            .resizable()
                            .frame(width: 40, height: 60)
                        Spacer()
                            .frame(width: 20)
                        VStack(alignment: .leading){
                            Text("code")
                                .font(.body)
                            Text("찰스 펫졸드 지음")
                                .font(.caption2)
                                
                                .foregroundColor(.secondary)
                        }
                        Spacer()
                            .frame(width: 35)
                        VStack {
                            Text("김철학 님")
                            Text("반납까지 15일 남음")
                                .font(.caption2)
                        }
                        Spacer()
                            
                        Text("대여중")
                            .font(.caption)
                        
                        
                    }
                    HStack{
                        Image("bookCover")
                            .resizable()
                            .frame(width: 40, height: 60)
                        Spacer()
                            .frame(width: 20)
                        VStack(alignment: .leading){
                            Text("code")
                                .font(.body)
                            Text("찰스 펫졸드 지음")
                                .font(.caption2)
                                
                                .foregroundColor(.secondary)
                        }
                        Spacer()
                            .frame(width: 35)
                        VStack {
                            Text("김철학 님")
                            Text("반납까지 15일 남음")
                                .font(.caption2)
                        }
                        Spacer()
                            
                        Text("대여중")
                            .font(.caption)
                           
                            
                        
                    }
                    HStack{
                        Image("bookCover")
                            .resizable()
                            .frame(width: 40, height: 60)
                        Spacer()
                            .frame(width: 20)
                        VStack(alignment: .leading){
                            Text("code")
                                .font(.body)
                            Text("찰스 펫졸드 지음")
                                .font(.caption2)
                                
                                .foregroundColor(.secondary)
                        }
                        Spacer()
                            .frame(width: 35)
                        VStack {
                            Text("김철학 님")
                            Text("반납까지 15일 남음")
                                .font(.caption2)
                        }
                        Spacer()
                            
                        Text("대여중")
                            .font(.caption)
                            
                        
                    }
                }
                Section(header: Text("연체중")){
                    HStack{
                        Image("bookCover")
                            .resizable()
                            .frame(width: 40, height: 60)
                        Spacer()
                            .frame(width: 20)
                        VStack(alignment: .leading){
                            Text("code")
                                .font(.body)
                            Text("찰스 펫졸드 지음")
                                .font(.caption2)
                                
                                .foregroundColor(.secondary)
                        }
                        Spacer()
                            .frame(width: 35)
                        VStack {
                            Text("김철학 님")
                            Text("5일 연체중")
                                .font(.caption2)
                        }
                        Spacer()
                            
                        Text("연체중")
                            .font(.caption)
                            .foregroundColor(.red)
                }
                }
                Section(header: Text("반납완료")){
                    HStack{
                        Image("bookCover")
                            .resizable()
                            .frame(width: 40, height: 60)
                        Spacer()
                            .frame(width: 20)
                        VStack(alignment: .leading){
                            Text("code")
                                .font(.body)
                            Text("찰스 펫졸드 지음")
                                .font(.caption2)
                                
                                .foregroundColor(.secondary)
                        }
                        Spacer()
                            .frame(width: 35)
                        VStack {
                            Text("김철학 님")
                            Text("반납완료")
                                .font(.caption2)
                        }
                        Spacer()
                            
                        Text("반납완료")
                            .font(.caption)
                            .foregroundColor(.green)
                        
                    }
                    HStack{
                        Image("bookCover")
                            .resizable()
                            .frame(width: 40, height: 60)
                        Spacer()
                            .frame(width: 20)
                        VStack(alignment: .leading){
                            Text("code")
                                .font(.body)
                            Text("찰스 펫졸드 지음")
                                .font(.caption2)
                                
                                .foregroundColor(.secondary)
                        }
                        Spacer()
                            .frame(width: 35)
                        VStack {
                            Text("김철학 님")
                            Text("반납완료")
                                .font(.caption2)
                        }
                        Spacer()
                            
                        Text("반납완료")
                            .font(.caption)
                            .foregroundColor(.green)
                        
                    }
                }
              
            }
          
        }
    }
}

struct CheckOutDetailView_Previews: PreviewProvider {
    static var previews: some View {
        CheckOutDetailView()
    }
}
