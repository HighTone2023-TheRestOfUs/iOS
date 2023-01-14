import SwiftUI

struct StatsView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 30) {
                StatsGroupView1()
                Group {
                    StatsComponents(
                        question: "MZ가 더 선호하는 카메라 앱은?",
                        imageName1: "SODA",
                        imageName2: "SNOW",
                        name: "SNOW",
                        percent: 0.39
                    )
                    StatsComponents(
                        question: "MZ가 더 선호하는 인터넷 방송 앱은?",
                        imageName1: "AfricaTV",
                        imageName2: "Twitch",
                        name: "",
                        percent: 0.41
                    )
                    StatsComponents(
                        question: "MZ가 더 선호하는 알바 앱은?",
                        imageName1: "ArbaMon",
                        imageName2: "ArbaHaeven",
                        name: "",
                        percent: 0.47
                    )
                    StatsComponents(
                        question: "MZ가 더 선호하는 숏폼 앱은?",
                        imageName1: "Ticktalk",
                        imageName2: "Youtube",
                        name: "Youtube",
                        percent: 0.27
                    )
                    StatsComponents(
                        question: "MZ가 더 선호하는 중고거래 앱은?",
                        imageName1: "Carrot",
                        imageName2: "Thunder",
                        name: "당근마켓",
                        percent: 0.65
                    )
                    StatsComponents(
                        question: "MZ가 더 선호하는 숙박 앱은?",
                        imageName1: "Ya",
                        imageName2: "This",
                        name: "",
                        percent: 0.49
                    )
                }
                NavigationLink {
                    SurveyView()
                } label: {
                    Text("검사 시작하기")
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity, minHeight: 52 ,maxHeight: 52)
                        .background(Color("Main"))
                }
                .cornerRadius(12)
                .padding(.horizontal, 20)
            }
        }
        .navigationTitle("통계 보기")
        .setNavigationBackButton()
    }
}

struct StatsView_Previews: PreviewProvider {
    static var previews: some View {
        StatsView()
    }
}
