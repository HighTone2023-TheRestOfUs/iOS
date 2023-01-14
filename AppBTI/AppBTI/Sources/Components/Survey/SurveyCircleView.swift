import SwiftUI

struct SurveyCircleView: View {
    @Binding var isSelected: Int
    let tag: Int
    let action: () -> Void
    let imageName: String
    let size: CGFloat
    let appName: String

    var body: some View {
        Button(action: action) {
            VStack {
                Image(isSelected == tag ? "Check" : imageName)
                    .resizable()
                    .background(Color("Gray100"))
                    .cornerRadius(size/2)
                    .frame(width: size, height: size)
                    Text(appName)
                        .font(.system(size: 12, weight: .bold))
                        .foregroundColor(Color(isSelected == tag ? "Main" : "Gray400"))
            }
        }
    }
}

struct SurveyCircleView_Previews: PreviewProvider {
    static var previews: some View {
        SurveyCircleView(
            isSelected: .constant(0),
            tag: 0,
            action: { },
            imageName: "",
            size: 50,
            appName: "토스"
        )
    }
}
