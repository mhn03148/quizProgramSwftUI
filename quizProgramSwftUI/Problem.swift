//
//  problem.swift
//  quizProgramSwftUI
//
//  Created by 주진형 on 2023/06/21.
//

import Foundation

class Problem: Identifiable {
    var id: UUID = UUID()
    
    var question: String
    var options: [String]
    var answer: String
    
    init(question: String, options: [String], answer: String) {
        self.question = question
        self.options = options
        self.answer = answer
    }
}

let problems: [Problem] = [
    Problem(question: "네팔의 수도는?",
                options: ["뉴델리", "카트만두", "코펜하겐", "모나코"],
                answer: "카트만두"),
        Problem(question: "인구가 가장 많은 대륙은?",
                options: ["아메리카", "아프리카", "유럽", "아시아"],
                answer: "아시아"),
        Problem(question: "가장 잘생긴 강사님은 누구실까요",
                options: ["박정선 강사님", "유민영 강사님", "추현호 강사님", "박정선 강사님"],
                answer: ""),
        Problem(question: "제자가 스승보다 더 나음’을 비유하는 고사성어는?",
                options: ["청출어람", "군계일학", "견원지간", "일장춘몽"],
                answer: "청출어람"),
        Problem(question: "삼권분립’에 해당되지 않는 것은?",
                options: ["입법부", "사법부", "교육부", "행정부"],
                answer: "교육부"),
        Problem(question:"""
                매년 초에는 '금연'을 다짐하는 애연가들 때문에 담배 소비량이 감소된다고 합니다.
                흡연해독을 위해서는 이 과일이 좋다고 하는데, 하루에 한 개씩 먹으면 폐기능이 좋아진다는 결과가 최근에 나왔습니다.
                동화 '백설공주'에도 나오는 이 과일은 무엇일까요?
                """,
                options:["복숭아", "참외", "사과", "오렌지"],
                answer:"사과"),
        Problem(question: "인구가 가장 많은 대륙은?", options: ["아메리카", "아프리카", "유럽", "아시아"], answer: "아시아"),
        Problem(question: "다음 중 바다가 아닌 곳은?", options: ["사해", "지중해", "오오츠크해", "카리브해"], answer: "사해"),
        Problem(question: "5대양 중 가장 큰 바다는 무엇일까요?", options: ["대서양", "태평양", "인도양", "남극해"], answer: "태평양"),
        Problem(question: "다음 중 아프리카 대륙에 있지 않은 나라는?", options: ["이집트", "탄자니아", "자메이카", "소말리아"], answer: "자메이카"),
        Problem(question: "터키, 미국, 중국의 국기에 공통적으로 그려져 있는 모양은?", options: ["초승달", "별", "동그라미", "삼각형"], answer: "별"),
        Problem(question: "다음 중 각 나라의 수도가 바르게 연결된 것은?", options: ["호주-시드니", "캐나다-퀘백", "페루-리마", "브라질-상파울로"], answer: "페루-리마"),
        Problem(question: "다음 중 뉴욕에 없는 것은?", options: ["자유의 여신상", "브로드웨이", "엠파이어 스테이트 빌딩", "백악관"], answer: "백악관"),
        Problem(question:"""
            욕조나 세면대에서 물이 빠질 때 보면 소용돌이를 치며 내려갑니다.
            그런데 자세히 살펴보면 특별히 외부영향이 없는 한
            소용돌이 방향은 항상 일정합니다.
            이것은 북반구에서 생기는 태풍이 반시계방향으로
            소용돌이치는 것과 같은 이치인데요.
            어떤 이유에서 이런 현상이 일어날까요?
            """,
                options:["지구의 자전","물의 수소결합","수압","달의 인력"],
                answer:"지구의 자전"),
        Problem(question:"""
            다음 단어들에서 연상되는 숫자를 합하면 모두 얼마일까요?
            ◆ 데카메론
            ◆ 펜타곤(미 국방성)
            ◆ octopus(낙지)
            """,
                options:["21", "22", "23", "25"],
                answer:"23"),
        Problem(question:"""
            다음 곡의 공통점은 무엇일까요?
            - 모차르트의 '레퀴엠'
            - 말러의 '10번 교향곡'
            - 푸치니의 오페라 '투란도트'
            """,
                options:["미완성", "같은 주제", "초연 장소", "첫 작품"],
                answer:"미완성"),
        Problem(question: "다음 주가지수 중 미국 증시를 대표하는 지표를 고르면?", options: ["코스피200", " S&P500", "FTSE100", "유로스톡스50"], answer: "S&P500"),
        Problem(question: "한국 최초 독자 개발 차량으로 1975년 12월 출시됐다. 현대자동차의 뿌리가 된 모델로 꼽히는 이 자동차는?", options: ["티코", "쏘나타", "포니", "그랜저"], answer: "포니"),
        Problem(question: "현실과 가상세계 간 상호작용에 초점을 맞춘 ‘혼합현실’ 기술을 가리키는 약어는?", options: ["AR", "VR", "MR", "XR"], answer: "MR"),
        Problem(question: "보유 재산, 근로 여부 등에 관계없이 모든 국민에게 무조건 일괄적인 금액을 지급하는 방식의 복지제도는?", options: ["국민총소득", "명목소득", "기본소득", "가처분소득"], answer: "기본소득"),
        Problem(question: "다음 중 주요 7개국(G7) 정상회의에 참여하는 정식 멤버가 아닌 나라는?", options: ["미국", "일본", "한국", "영국"], answer: "한국"),
        Problem(question: "기업 실적에 상관없이 온라인 커뮤니티나 SNS를 통해 입소문을 타면서 개인투자자가 몰리는 주식을 뜻하는 말은?", options: ["밈 주식", "황제주", "토큰증권", "자사주"], answer: "밈 주식"),
        Problem(question: "독창적인 아이디어로 새로운 사업 기회를 찾을 수 있는 틈새시장을 뜻하는 용어는?", options: ["불마켓", "니치마켓", "베어마켓", "레몬마켓"], answer: "니치마켓"),
        Problem(question: "다음 중 우리나라 증시에서 시가총액이 가장 큰 상장사는 어디일까?", options: ["삼성전자", "SK하이닉스", "LG에너지솔루션", "현대자동차"], answer: "삼성전자"),
        Problem(question: "경제신문에 자주 등장하는 ‘R의 공포’라는 용어에서 R은 어떤 단어를 의미할까?", options: ["retirement", "reshoring", "recognition", "recession"], answer: "recession"),
        Problem(question: "기업이 발표한 경영 실적이 시장의 예상치를 훨씬 밑도는 상황은?", options: ["어닝 시즌", "어닝 쇼크", "디스인플레이션", "하이퍼인플레이션"], answer: "어닝 쇼크"),
        Problem(question:"""
            여러 번을 강조해서 이르는 말로 '골백번'이라는 말이 있죠.
            여기서 '골'은 숫자 몇을 가리킬까요?
            """,
                options:["백", "천", "만", "십 만"],
                answer:"만"),
        Problem(question:"""
            요즘 얼음이 두껍게 언 호수에서 낚시가 한창인데,
            이 물고기는 오이맛이 난다고 해
            조선시대에는 오이'과'자를 써서 과어라고 불렀습니다.
            속이 투명하고, 고추장을 찍어 날로 먹기도 하는
            이것은 무슨 물고기일까요?
            """,
                options:["붕어", "빙어", "뱀장어", "광어"],
                answer:"빙어"),
        Problem(question:"""
            현대인들의 기호식품 가운데에는 중독성 물질이
            포함되어 있는 것이 많습니다. 그럼 신경조직이나
            심장 근육을 자극해, 피로를 일으키는 것으로 커피, 홍차,
            각종 드링크제에 들어있는 중독성 물질은 무엇일까요?
            """,
                options:["암페타민", "알코올", "카페인", "니코틴"],
                answer: "카페인"),
        Problem(question:"""
            이 단체는 최근 일본 포경선의 불법 고래잡이에 반대한
            국제적인 환경단체입니다. 1970년 조직돼 핵실험 반대와
            자연보호로 유명한 이 단체는 무엇일까요?
            """,
                options:["그린피스","엠네스티","로마클럽","그린벨트"],
                answer:"그린피스"),
        Problem(question:"""
            겨울철에 모자를 쓰면 차고 건조한 겨울바람을 막아주어서
            체감온도가 올라갈 뿐 아니라 피부미용에도 좋다고 합니다.
            우리 나라는 여름에는 남동풍이, 겨울에는 북서풍이 주로 부는데,
            그럼 1년을 주기로 반복되는 이런 바람을
            무엇이라고 부를까요?
            """,
                options:["해륙풍", "산곡풍", "무역풍", "계절풍"],
                answer:"계절풍"),
        Problem(question:"""
            이 어류는 암컷이 알을 낳으면 수컷의 몸에 있는 육아낭에서
            알을 부화시켜 기른다고 합니다. 짝짓는 시기가 되면
            수컷이 암컷 앞에서 자신의 육아낭을 자랑한다고 하며,
            잉꼬처럼 부부간에 사이가 좋다고 하는데요, 다른 어류에 비해
            머리가 거의 직각으로 구부러져 있는 이것은 무엇일까요?
            """,
                options:["해마", "뱀장어", "상어", "망둥어"],
                answer:"해마")

    ].shuffled()
