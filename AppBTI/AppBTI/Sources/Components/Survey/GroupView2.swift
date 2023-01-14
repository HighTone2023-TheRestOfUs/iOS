import SwiftUI

struct GroupView2: View {
    @Binding var fancy: Double
    @Binding var many: Double
    @Binding var simple: Double
    @State var internetTV: Int = 5
    @State var arba: Int = 5
    @State var shorts: Int = 5
    @State var middle: Int = 5
    @State var sukpack: Int = 5

    var body: some View {
        Group {
            SurveyComponents(
                selectedTag: $internetTV,
                action1: { internetTV = 0 },
                action2: { internetTV = 1 },
                action3: { internetTV = 2 },
                action4: { internetTV = 3 },
                action5: { internetTV = 4 },
                question: "내가 더 선호하는 인터넷 방송 앱은?",
                appImageName1: "AfricaTV",
                appImageName2: "Twitch",
                appName1: "아프리카TV",
                appName2: "Twitch"
            )
            SurveyComponents(
                selectedTag: $arba,
                action1: { arba = 0 },
                action2: { arba = 1 },
                action3: { arba = 2 },
                action4: { arba = 3 },
                action5: { arba = 4 },
                question: "내가 더 선호하는 알바 앱은?",
                appImageName1: "ArbaMon",
                appImageName2: "ArbaHaeven",
                appName1: "알바몬",
                appName2: "알바천국"
            )
            SurveyComponents(
                selectedTag: $shorts,
                action1: {
                    shorts = 0
                    simple += 2
                },
                action2: {
                    shorts = 1
                    simple += 1
                },
                action3: {
                    shorts = 2
                },
                action4: {
                    shorts = 3
                    simple -= 1.5
                },
                action5: {
                    shorts = 4
                    simple -= 3
                },
                question: "내가 더 선호하는 숏폼 앱은?",
                appImageName1: "Ticktalk",
                appImageName2: "Youtube",
                appName1: "TickTok",
                appName2: "Youtube"
            )
            SurveyComponents(
                selectedTag: $middle,
                action1: {
                    middle = 0
                    many += 1
                    fancy += 1
                    },
                action2: {
                    middle = 1
                    many += 0.5
                    fancy += 0.5
                },
                action3: {
                    middle = 2
                },
                action4: {
                    middle = 3
                    simple += 0.5
                },
                action5: {
                    middle = 4
                    simple += 1
                },
                question: "내가 더 선호하는 중고거래 앱은?",
                appImageName1: "Carrot",
                appImageName2: "Thunder",
                appName1: "당근마켓",
                appName2: "번개장터"
            )
            SurveyComponents(
                selectedTag: $sukpack,
                action1: {
                    sukpack = 0
                    simple -= 1
                    },
                action2: {
                    sukpack = 1
                    simple -= 0.5
                },
                action3: {
                    sukpack = 2
                },
                action4: {
                    sukpack = 3
                    fancy -= 0.5
                },
                action5: {
                    sukpack = 4
                    fancy -= 1
                },
                question: "내가 더 선호하는 숙박 앱은?",
                appImageName1: "Ya",
                appImageName2: "Thunder",
                appName1: "야놀자",
                appName2: "여기어때"
            )
        }
    }
}

struct GroupView2_Previews: PreviewProvider {
    static var previews: some View {
        GroupView2(fancy: .constant(0), many: .constant(0), simple: .constant(0))
    }
}
