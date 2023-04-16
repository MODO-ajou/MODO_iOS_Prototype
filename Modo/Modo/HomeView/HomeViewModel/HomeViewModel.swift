//
//  HomeViewModel.swift
//  Modo
//
//  Created by 이승준 on 2022/11/14.
//

import Foundation

final class LibraryViewModel: ObservableObject {
	@Published var isGuideViewPresented = true
	
	@Published var libraryDictionary: [String: LibraryInfos] = [
		"test1":LibraryInfos(libraryName: "철이네",
							 libraryOwnerName: "철이",
							 libraryVisitorCount: 1552,
							 dogEarsCount: 452,
							 libraryCategory: [.children]),
		"test2":LibraryInfos(libraryName: "순이네",
							 libraryOwnerName: "순이",
							 libraryVisitorCount: 142,
							 dogEarsCount: 42,
							 libraryCategory: [.russian, .literature]),
		"test3":LibraryInfos(libraryName: "알프레도의 도서관",
							 libraryOwnerName: "알프레도",
							 libraryVisitorCount: 28751,
							 dogEarsCount: 2251,
							 libraryCategory: [.german, .literature, .russian]),
		"test4":LibraryInfos(libraryName: "김철학",
							 libraryOwnerName: "김승준",
							 libraryVisitorCount: 215649,
							 dogEarsCount: 1234,
							 libraryCategory: [.philosophy, .german, .art, .education, .traditional])
	]
	
	public func updateLibraryDictionary(updateLibrary: LibraryInfos) {
		libraryDictionary.updateValue(updateLibrary, forKey: updateLibrary.id)
	}
	
	public func getLibraryKeys() -> [String] {
		let array = Array(libraryDictionary.keys.enumerated())
		var result = [String]()
		for elements in array {
			result.append(elements.element)
		}
		
		return result
	}
}

struct LibraryListExamples {
	public var thisMonthLibrary: [LibraryInfos] = []
	public var theMostVisitorLibrary: [LibraryInfos] = []
	public var germanLiteratureLibrary: [LibraryInfos] = []
	public var studentsSAT_Library: [LibraryInfos] = []
}


struct LibraryInfos: Identifiable {
	var id = UUID().uuidString
	
	var libraryName: String
	var libraryOwnerName: String
	var libraryVisitorCount: Int
	var dogEarsCount: Int
	var libraryCategory: [LibraryCategory]
}

enum LibraryCategory: String, CaseIterable {
	case all = "#전체"
    case trend = "#인기"
	case literature = "#문학",
		 magazine = "#잡지",
		 children = "#아동",
		 traditional = "#전통문학",
		 german = "#독일",
		 russian = "#러시아",
		 korean = "#한국"
	case religion = "#종교",
		 science = "#과학",
		 education = "#교육",
		 art = "#예체능",
		 philosophy = "#철학"
}

func getLibraryCategoryArray() -> [LibraryCategory] {
	var result = [LibraryCategory]()
	for value in LibraryCategory.allCases {
		result.append(value)
	}
	return result
}
