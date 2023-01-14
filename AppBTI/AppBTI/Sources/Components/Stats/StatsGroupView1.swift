import SwiftUI

struct StatsGroupView1: View {
    var body: some View {
        Group {
            StatsComponents(
                question: "MZ가 더 선호하는 금융 앱은?",
                imageName1: "KakaoPay",
                imageName2: "Toss",
                name: "토스",
                percent: 0.4
            )
            StatsComponents(
                question: "MZ가 더 선호하는 SNS 앱은?",
                imageName1: "Instagram",
                imageName2: "Facebook",
                name: "인스타그램",
                percent: 0.89
            )
            StatsComponents(
                question: "MZ가 더 선호하는 웹툰 앱은?",
                imageName1: "NaverWebtoon",
                imageName2: "KakaoWebtoon",
                name: "",
                percent: 0.55
            )
            StatsComponents(
                question: "MZ가 더 선호하는 패션 앱은?",
                imageName1: "Musinsa",
                imageName2: "Zigzag",
                name: "",
                percent: 0.49
            )
            StatsComponents(
                question: "MZ가 더 선호하는 OTT 앱은?",
                imageName1: "Netflix",
                imageName2: "Watcha",
                name: "넷플릭스",
                percent: 0.81
            )
            StatsComponents(
                question: "MZ가 더 선호하는 채팅 앱은?",
                imageName1: "Kakaotalk",
                imageName2: "Messanger",
                name: "메신저",
                percent: 0.38
            )
            StatsComponents(
                question: "MZ가 더 선호하는 지도 앱은?",
                imageName1: "NaverMap",
                imageName2: "GoogleMap",
                name: "",
                percent: 0.55
            )
            StatsComponents(
                question: "MZ가 더 선호하는 쇼핑 앱은?",
                imageName1: "Coupang",
                imageName2: "11Bunga",
                name: "쿠팡",
                percent: 0.78
            )
            StatsComponents(
                question: "MZ가 더 선호하는 배달 앱은?",
                imageName1: "Baemin",
                imageName2: "Yogiyo",
                name: "배달의 민족",
                percent: 0.79
            )
        }
    }
}

struct StatsGroupView1_Previews: PreviewProvider {
    static var previews: some View {
        StatsGroupView1()
    }
}
