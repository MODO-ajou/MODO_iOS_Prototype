//
//  ProfileView.swift
//  Modo
//
//  Created by 허두영 on 2022/11/14.
//

import SwiftUI

struct MyLibraryDetailView: View {
	//@State private var sliderchanged : Double = 36.0
	@State var selectedType = 0
	@StateObject var bookStore = BookStore()
	
	var arrTypes : [String] = ["나의 책","대출 목록"]
	var body: some View {
		VStack{
			Group{
				VStack(alignment: .leading) {
					HStack{
						Image(systemName: "person.circle.fill")
							.resizable()
							.frame(width: 70,height: 70)
							.foregroundColor(.white)
							.aspectRatio(contentMode: .fit)
							.shadow(radius: 10)
						Text("\tHeodoo")
							.bold()
						Text("#12218")
							.foregroundColor(.gray)
							.font(.caption)
					}
					Text("도서   \t : \(bookStore.books.count)권")
					Text("대출 가능 : \(bookStore.numberOfCheckOut())권")
					
					//                            Button(action:{
					//                                //
					//                            }){
					//                                Image(systemName: "star.fill")
					//                                Text("관심 도서관")
					//                            }
					//                            .foregroundColor(.black)
					//                            .padding()
					//                            Text("나의 도서관을 자랑해보세요.")
					//                                .foregroundColor(.gray)
					//                                .padding(.leading,18)
					//                                .padding(.top,-15)
				}
				
				.padding(.leading, -100)
			}
			.toolbar {
				ToolbarItemGroup(placement: .navigationBarTrailing) {
					Button(action: {}) {
						Image(systemName: "plus")
							.foregroundColor(.black)
					}
				}
			}
			Group {
				VStack{
					Divider()
					
					Picker("Convert", selection: $selectedType) {
						ForEach(0 ..< 2, id: \.self)
						{ i in
							Text(self.arrTypes[i])
						}
					}
					.pickerStyle(SegmentedPickerStyle())
					
					BookView(selectedType: $selectedType,bookStore: bookStore)
				}
			}
		}
	}
	
	
}

struct BookView: View {
	@Binding var selectedType : Int
	@ObservedObject var bookStore : BookStore
	var body: some View {
		if selectedType == 0 { BookGridView(bookStore: bookStore) }
		else { BookListView(bookStore: bookStore) }
	}
}

struct MyLibraryDetailView_Previews: PreviewProvider {
	static var previews: some View {
		MyLibraryDetailView()
	}
}
