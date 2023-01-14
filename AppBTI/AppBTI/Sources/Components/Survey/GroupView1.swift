import SwiftUI

struct GroupView1: View {
    @Binding var fancy: Double
    @Binding var many: Double
    @Binding var simple: Double
    @State var bank: Int = 5
    @State var sns: Int = 5
    @State var webtoon: Int = 5
    @State var fashine: Int = 5
    @State var ott: Int = 5
    @State var messenger: Int = 5
    @State var map: Int = 5
    @State var shop: Int = 5
    @State var baedal: Int = 5
    @State var camera: Int = 5

    var body: some View {
        Group {
            SurveyComponents(
                selectedTag: $bank,
                action1: {
                    bank = 0
                    fancy -= 2
                },
                action2: {
                    bank = 1
                    many += 1
                    fancy += 1
                },
                action3: {
                    bank = 2
                },
                action4: {
                    bank = 3
                    simple += 0.5
                },
                action5: {
                    bank = 4
                    simple += 1
                },
                question: "내가 더 선호하는 금융 앱은?",
                appImageName1: "KakaoPay",
                appImageName2: "Toss",
                appName1: "카카오페이",
                appName2: "토스"
            )
            SurveyComponents(
                selectedTag: $sns,
                action1: {
                    sns = 0
                    many += 2
                    fancy += 1
                },
                action2: {
                    sns = 1
                    many += 1
                    fancy += 0.5
                },
                action3: {
                    sns = 2
                },
                action4: {
                    sns = 3
                    many -= 1
                },
                action5: {
                    sns = 4
                    many -= 2
                },
                question: "내가 더 선호하는 SNS 앱은?",
                appImageName1: "Instagram",
                appImageName2: "Facebook",
                appName1: "인스타그램",
                appName2: "페이스북"
            )
            SurveyComponents(
                selectedTag: $webtoon,
                action1: {
                    webtoon = 0
                    fancy += 1
                },
                action2: {
                    webtoon = 1
                    fancy += 0.5
                },
                action3: {
                    webtoon = 2
                },
                action4: {
                    webtoon = 3
                    simple += 0.5
                },
                action5: {
                  webtoon = 4
                    simple += 1
                },
                question: "내가 더 선호하는 웹툰 앱은?",
                appImageName1: "NaverWebtoon",
                appImageName2: "KakaoWebtoon",
                appName1: "네이버 웹툰",
                appName2: "카카오 웹툰"
            )
            SurveyComponents(
                selectedTag: $fashine,
                action1: {
                    fashine = 0
                    many += 2
                    fancy += 1
                },
                action2: {
                    fashine = 1
                    many += 1
                    fancy += 0.5
                },
                action3: {
                    fashine = 2
                },
                action4: {
                    fashine = 3
                    many -= 1.5
                    fancy -= 0.5
                    simple += 0.5
                },
                action5: {
                    fashine = 4
                    many -= 3
                    fancy -= 1
                    simple += 1
                },
                question: "내가 더 선호하는 패션 앱은?",
                appImageName1: "Musinsa",
                appImageName2: "Zigzag",
                appName1: "무신사",
                appName2: "지그재그"
            )
            SurveyComponents(
                selectedTag: $ott,
                action1: {
                    ott = 0
                    many += 1
                },
                action2: {
                    ott = 1
                    many += 0.5
                },
                action3: {
                    ott = 2
                },
                action4: {
                    ott = 3
                    simple += 0.5
                },
                action5: {
                    ott = 4
                    simple += 1
                },
                question: "내가 더 선호하는 OTT 앱은?",
                appImageName1: "Netflix",
                appImageName2: "Watcha",
                appName1: "넷플릭스",
                appName2: "왓챠"
            )
            SurveyComponents(
                selectedTag: $messenger,
                action1: {
                    messenger = 0
                    simple -= 3
                },
                action2: {
                    messenger = 1
                    simple -= 1.5
                },
                action3: {
                    messenger = 2
                },
                action4: {
                    messenger = 3
                    simple += 0.5
                },
                action5: {
                    messenger = 4
                    simple += 1
                },
                question: "내가 더 선호하는 메신저 앱은?",
                appImageName1: "Kakaotalk",
                appImageName2: "Messanger",
                appName1: "카카오톡",
                appName2: "메신저"
            )
            SurveyComponents(
                selectedTag: $map,
                action1: {
                    map = 0
                    fancy += 1
                    simple -= 1
                },
                action2: {
                    map = 1
                    fancy += 0.5
                    simple -= 0.5
                },
                action3: {
                    map = 2
                },
                action4: {
                    map = 3
                    fancy -= 0.5
                    simple += 0.5
                },
                action5: {
                    map = 4
                    fancy -= 1
                    simple += 1
                },
                question: "내가 더 선호하는 지도 앱은?",
                appImageName1: "NaverMap",
                appImageName2: "GoogleMap",
                appName1: "네이버 지도",
                appName2: "구글 지도"
            )
            SurveyComponents(
                selectedTag: $shop,
                action1: {
                    shop = 0
                    many += 2
                    simple -= 1
                },
                action2: {
                    shop = 1
                    many += 1
                    simple -= 0.5
                },
                action3: {
                    shop = 2
                },
                action4: {
                    shop = 3
                    many -= 1
                    fancy -= 0.5
                },
                action5: {
                    many -= 2
                    fancy -= 1
                    shop = 4
                },
                question: "내가 더 선호하는 쇼핑 앱은?",
                appImageName1: "Coupang",
                appImageName2: "11Bunga",
                appName1: "쿠팡",
                appName2: "11번가"
            )
            SurveyComponents(
                selectedTag: $baedal,
                action1: {
                    baedal = 0
                    many += 2
                    fancy += 1
                },
                action2: {
                    baedal = 1
                    many += 1
                    fancy += 0.5
                },
                action3: {
                    baedal = 2
                },
                action4: {
                    baedal = 3
                    many -= 1
                },
                action5: {
                    baedal = 4
                    many -= 2
                },
                question: "내가 더 선호하는 배달 앱은?",
                appImageName1: "Baemin",
                appImageName2: "Yogiyo",
                appName1: "배달의 민족",
                appName2: "요기요"
            )
            SurveyComponents(
                selectedTag: $camera,
                action1: {
                    camera = 0
                    many -= 1
                },
                action2: {
                    camera = 1
                    many -= 0.5
                },
                action3: {
                    camera = 2
                },
                action4: {
                    camera = 3
                    many += 0.5
                },
                action5: {
                    camera = 4
                    many += 1
                },
                question: "내가 더 선호하는 카메라 앱은?",
                appImageName1: "SODA",
                appImageName2: "SNOW",
                appName1: "SODA",
                appName2: "SNOW"
            )
        }
    }
}

struct GroupView1_Previews: PreviewProvider {
    static var previews: some View {
        GroupView1(fancy: .constant(0), many: .constant(0), simple: .constant(0))
    }
}
