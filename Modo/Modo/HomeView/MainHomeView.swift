//
//  MainHomeView.swift
//  Modo
//
//  Created by 이승준 on 2022/11/14.
//

import SwiftUI

struct MainHomeView: View {
	@ObservedObject private var libraryManager = LibraryViewModel()
	@State private var isGuideViewPresented: Bool = true
	
	let mainHeaderTitleArray = [
		"모두의 도서관", "근대 낭만문학의 종말", "이상문학상"
	]
	
	let mainHeaderDescriptionArray = [
		"모두의 도서관에서 추천해주는 책을 이웃에게 빌려보세요.",
		"1920년, 전쟁과 파울 첼란의 삶",
		"이상문학상 수상 문학과 작가들을 조명하는 도서관"
	]
	
	let mainHeaderImage = [
		"bookImage",
		"mainListView_PaulCelan",
		"mainListView_mainBook"
	]
	
    var body: some View {
		let libraryCategoryArray = getLibraryCategoryArray()
		
		NavigationView {
			ScrollView {
				// Header Stepper TabView
				headerTab(imageArray: mainHeaderImage,
                          title: mainHeaderTitleArray,
						  description: mainHeaderDescriptionArray)
				.shadow(radius: 2, y: 2)
                
				
				// Category Selector
				ScrollView(.horizontal, showsIndicators: false) {
					HStack {
						ForEach(libraryCategoryArray, id: \.self) { eachCategory in
							Text("\(eachCategory.rawValue)")
								.modifier(SectionCategoryTextViewModifier())
						}
					}
					.padding(.horizontal, 10)
				}
                
				Divider()
				
				ScrollView {
					VStack {
						ForEach(0..<libraryCategoryArray.count / 2, id: \.self) { index in
							if index == 0 {
								Text("#전체 도서관")
									.modifier(EachSectionHeaderTextViewModifier())
								
								MainHomeListView()
								
								Divider()
							}
//                            else {
//								let eachCategory = libraryCategoryArray[index]
//								Text("\(eachCategory.rawValue) 섹션")
//									.modifier(EachSectionHeaderTextViewModifier())
//
//								MainHomeListView()
//
//								Divider()
//							}
						}
					}
				}
			}
			.navigationTitle("Modo.")
           
        }
		.fullScreenCover(isPresented: $libraryManager.isGuideViewPresented) {
			HomeViewModalGuide(isGuideViewPresented: $libraryManager.isGuideViewPresented)
		}
    }
	
	@ViewBuilder
	private func headerTab(imageArray: [String],
						   title: [String],
						   description: [String]) -> some View {
		TabView {
			ForEach(0..<title.count, id: \.self) { index in
				Image(imageArray[index])
					.resizable()
					.renderingMode(.original)
					.aspectRatio(1, contentMode: .fill)
					.frame(maxWidth: .infinity)
					.overlay {
						Color.white.opacity(0.7)
						
						VStack {
							Text("\(title[index])")
								.bold()
								.padding()
							
							Text("\(description[index])")
						}
						.frame(width: 200, height: 150)
					}
			}
		}
		.frame(minHeight: 200)
		.tabViewStyle(.page)
	}
}

struct MainHomeView_Previews: PreviewProvider {
    static var previews: some View {
        MainHomeView()
    }
}

struct SectionCategoryTextViewModifier: ViewModifier {
	func body(content: Content) -> some View {
		content
			.font(.headline)
			.frame(minWidth: 70, minHeight: 30)
			.background(.brown.opacity(0.5))
			.cornerRadius(20)
            .shadow(radius: 0.7)
	}
}

struct EachSectionHeaderTextViewModifier: ViewModifier {
	func body(content: Content) -> some View {
		content
			.font(.title2)
			.foregroundColor(.black)
			.frame(maxWidth: .infinity)
			.padding()
			.background {
				Color.brown.opacity(0.3)
			}
			.padding(10)
	}
}
