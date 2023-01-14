import SwiftUI

struct SurveyView: View {
    @State var fancy: Double = 0
    @State var many: Double = 0
    @State var simple: Double = 0
    var body: some View {
        ScrollView {
            LazyVStack(spacing: 45) {
                HeaderView()
                GroupView1(
                    fancy: $fancy,
                    many: $many,
                    simple: $simple
                )
                GroupView2(
                    fancy: $fancy,
                    many: $many,
                    simple: $simple
                )
                NavigationLink {
                    EndView(
                        fancy: .constant(fancy >= 0),
                        many: .constant(many >= 0),
                        simple: .constant(simple >= 0)
                    )
                } label: {
                    Text("검사 결과 보기")
                        .font(.system(size: 16, weight: .bold))
                        .foregroundColor(.white)
                }
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 52)
                .background(Color("Main"))
                .cornerRadius(12)
                .padding(.horizontal, 20)

            }
        }
        .navigationTitle("검사하기")
        .setNavigationBackButton()
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct SurveyView_Previews: PreviewProvider {
    static var previews: some View {
        SurveyView()
    }
}
