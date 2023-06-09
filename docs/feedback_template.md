## 모두의 도서관, Modo(모도)
테스트, 피드백 넙죽 감사하게 받습니다 🙏🏻
앱 아이디어의 검증과 사용성 확인을 위한 테스트임을 기억해 주세요!
<br>

## ⚙️ 테스트 환경 안내
- 시뮬레이터(iPhone14 Pro), iOS 버전(16.0), 라이트 모드
- 테스트 하실 때에는 `main` 브랜치의 코드를 사용하여 테스트 부탁드립니다.
- 사용 시나리오
	- [참고사항]
	1. 가이드뷰 : `가이드보기` 미구현 -> `다음에 볼게요` 버튼을 탭해서 메인 화면 뷰 진입 가능
	2. 홈 뷰 : 상단의 이미지 캐러셀 뷰 클릭 후 동작 미구현, 가로 스크롤 내의 카테고리를 탭한 정렬 기능 미구현, 하트 버튼 미구현, 
	3. Shelf Tab : 프로필 위치를 탭하여 서재 꾸미기 뷰로 이동 가능
	4. 서재 꾸미기 뷰 : 책 이미지를 탭하여 책 하이라이트 뷰로 이동 가능, 댓글달기 미구현

	- [A 시나리오]
		1. 어떤 책을 읽고 싶은지 고민중인 사람이 앱을 다운로드받고 실행
		2. 홈 뷰에서 카테고리에 따라 정리된 이웃동네 주민들의 도서관 탭을 스크롤
		3. 마음에 드는 카테고리의 도서관 셀을 탭하여 도서관 둘러보기 뷰로 이동
		4. 도서관 둘러보기 뷰 내의 선반의 책(`선반 이미지`)을 탭하여 책을 대출할 수 있는 뷰(`이미지`)로 이동
		5.2 채팅(`미구현`) 기능으로 도서관장과 책 대출 시작
		6. 책 대출 후, 동일 카테고리의 다른 책을 검색하기 위해 검색 뷰(`이미지`)로 이동
		7. 검색 뷰에서 원하는 다른 책을 가진 도서관에 방문하여 4번 과정 반복
		8. 대출 후 앱 종료
	- [B 시나리오]
		1. 책장의 책을 유용하고 효율적으로 나누고 싶은 사람이 앱을 다운로드받고 실행
		2. 자신의 도서관을 꾸미며(`미구현`) 여러 사람이 자신의 책을 빌릴 수 있도록 카테고리화하여 관리
		3. 다른 사용자에게 책을 대출해주며 공헌도(`미구현`)를 쌓고 '모두의 도서관' 이벤트에 참여
		4. 읽고 싶었던 다른 책을 구매하거나, 가고 싶었던 책 시사회로 이동

##  🔎  앱 정의 문장(ADS)
- 이 앱은 📚**종이책과 독서를 선호하는 사람들이 느끼는 가치**📚를 서로 나누는 역할을 수행할 거에요.
- 왜냐하면 **좋은 책에서 얻을 수 있는 가치와 읽지 않는 책을 서로 나누며 독서를 중심으로 책을 나누는 커넥션을 구성**할 수 있기 때문이죠!

## 📝  공통 질문
- 이 앱은 📚**종이책과 독서를 선호하는 사람들이 느끼는 가치**📚를 서로 나누는 앱입니다. 앱을 사용하면 그 목적이 잘 확인되나요?
	- **답변:**
- 화면에 나타나는 요소들은 어떤 의미인지 보이나요?
	- **답변:** 
	- 헷갈리거나 불편한 UI가 있나요? 있으면 이유를 함께 적어주세요
		- **답변:** 
	- 앱을 사용하면서 마음에 들었던 부분이 있나요? 있으면 이유를 함께 적어주세요.
		- **답변:** 
- 사용하면서 개선이 필요한 부분이 있나요?
	- **답변:** 
- 사용하면서 불필요하게 보인 부분이 있었나요?
	- **답변:** 
- 적용된 디자인의 좋은 점이나 개선이 필요한 디자인이 있나요?
	- **답변:** 
	- 색상은 어떤가요?
		- **답변:** 
	- 폰트 크기는 적절한가요?
		- **답변:** 
	- 각 버튼은 명시적인가요?
		- **답변:** 
- 이 앱을 누구에게 권장하고 싶나요? (새로운 페르소나를 구체적으로 제시해주세요)
	- **답변:** 
- 이 앱이 어떻게 쓰일 수 있다고 생각하나요? (사용자 시나리오와 함께 제시)
	- **답변:** 
- 이 앱애서 어떤 수익모델이 가능하다고 보이나요? 어떻게 지속 가능한 수익창출이 가능할까요? (현재 : 홈 뷰의 배너 광고로 수익 창출 예정)
	- **답변:** 

## ✏️ 그 밖에 확인이 필요한 질문
- 공헌도 포인트의 역할이 직관적으로 확인 가능하신가요? 어떤 역할을 하면 더 좋을까요? (기획 의도 : 공헌도 포인트로 책 시사회나 이벤트 참여를 위해 지불)
	- **답변:** 
- 책장의 기능과 사용 용도는 직관적인가요?
	- **답변:** 
- 이 앱에서 알림이 온다면 얼마나 자주, 어떤 알림들을 받아보고 싶은가요?
	- **답변:** 
- 도서관에 하나씩 들어가면서 책을 확인하는게 좋을까요? 도서관에 상관없이 책을 리스트화해서 책을 확인하는게 좋을까요?
	- **답변:**
- 공헌도를 보상으로 두고, 특정 기간 동안의 책 읽기 챌린지를 개최한다면 사용해보실 의향이 있으신가요?
	- **답변:**
- 나의 도서관 프로필에서 확인하고 싶은 정보가 더 있으시다면 알려주세요.
	- **답변:**
- DogView에 그 책에 대한 글귀 및 생각을 남기는 커뮤니티에 대해 어떻게 생각하시나요?
	- **답변:**
- 공헌도를 통해 서재를 꾸미거나 프로필을 꾸미는 것(프로필에 뱃지, 배경이미지, 폰트, 색상 )중에 무엇이 더 매력적이신가요? (서재란 MainShelfView에 책장같은것으로 꾸미는 것을 의미합니다 이런 책장이 덜 직관적인거 같아서 책장을 없애고, MyLibraryDetatilView로 통합하는게 더 직관적이라 느끼고, 프로필을 꾸미는게 더 낫지 않나 생각되어 질문 드립니다.)
 	- **답변:**	
