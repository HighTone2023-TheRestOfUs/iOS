import SwiftUI

struct StatsComponents: View {
    let question: String
    let imageName1: String
    let imageName2: String
    let name: String
    let percent: Float

    var body: some View {
        VStack(alignment: .center, spacing: 0) {
            Text(question)
                .font(.system(size: 16, weight: .medium))
                .foregroundColor(Color("Gray400"))
                .padding(.bottom, 15)
            ZStack(alignment: .center) {
                Color(0.5 < percent ? "Gray100" : "Main")
                    .frame(width: 252, height: 36)
                HStack {
                    Color(0.5 < percent ? "Main" : "Gray100")
                        .frame(width: CGFloat(percent * 252), height: 36)
                        .padding(.leading, 40)
                    Spacer()
                }
                HStack {
                    if (0.5 > percent) {
                        Spacer()
                            .frame(width: 70)
                    }
                    Text("\(name) \(percent > 0.5 ? Int(percent * 100) : 100 - Int(percent * 100))%")
                        .font(.system(size: 14, weight: .bold))
                        .foregroundColor(.white)
                    if (0.5 < percent) {
                        Spacer()
                            .frame(width: 70)
                    }
                }
                HStack(alignment: .center) {
                    Image(imageName1)
                        .resizable()
                        .frame(width: 48, height: 48)
                    Spacer()
                    Image(imageName2)
                        .resizable()
                        .frame(width: 48, height: 48)
                }
            }
            .padding(.horizontal, 37.5)
        }
    }
}

struct StatsComponents_Previews: PreviewProvider {
    static var previews: some View {
        StatsComponents(
            question: "MZ가 더 선호하는 금융 앱은?",
            imageName1: "KakaoPay",
            imageName2: "Toss",
            name: "토스",
            percent: 0.4
        )
    }
}
