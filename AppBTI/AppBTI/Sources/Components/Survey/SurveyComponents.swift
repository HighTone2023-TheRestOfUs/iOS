import SwiftUI

struct SurveyComponents: View {
    @Binding var selectedTag: Int
    let action1: () -> Void
    let action2: () -> Void
    let action3: () -> Void
    let action4: () -> Void
    let action5: () -> Void
    let question: String
    let appImageName1: String
    let appImageName2: String
    let appName1: String
    let appName2: String

    var body: some View {
        VStack(alignment: .center) {
            Text(question)
                .font(.system(size: 16, weight: .medium))
                .padding(.bottom, 20)

            HStack(
                alignment: .center,
                spacing: 20
            ) {
                SurveyCircleView(
                    isSelected: $selectedTag,
                    tag: 0,
                    action: action1,
                    imageName: appImageName1,
                    size: 48,
                    appName: appName1
                )
                SurveyCircleView(
                    isSelected: $selectedTag,
                    tag: 1,
                    action: action2,
                    imageName: "",
                    size: 32,
                    appName: ""
                )
                SurveyCircleView(
                    isSelected: $selectedTag,
                    tag: 2,
                    action: action3,
                    imageName: "",
                    size: 24,
                    appName: ""
                )
                SurveyCircleView(
                    isSelected: $selectedTag,
                    tag: 3,
                    action: action4,
                    imageName: "",
                    size: 32,
                    appName: ""
                )
                SurveyCircleView(
                    isSelected: $selectedTag,
                    tag: 4,
                    action: action5,
                    imageName: appImageName2,
                    size: 48,
                    appName: appName2
                )
            }
        }
        .opacity(selectedTag < 5 ? 0.4 : 1.0)
    }
}

struct SurveyComponents_Previews: PreviewProvider {
    static var previews: some View {
        SurveyComponents(
            selectedTag: .constant(5),
            action1: { },
            action2: { },
            action3: { },
            action4: { },
            action5: { },
            question: "더 선호하는 앱은 무엇입니까?",
            appImageName1: "KakaoPay",
            appImageName2: "app2",
            appName1: "카카오페이",
            appName2: "토스"
        )
    }
}
