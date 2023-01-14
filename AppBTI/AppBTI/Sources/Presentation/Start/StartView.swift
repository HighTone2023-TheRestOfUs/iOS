import SwiftUI

struct StartView: View {
    var body: some View {
        NavigationView {
            VStack(spacing: 0) {
                Image("Kakakotalk")
                    .resizable()
                    .background(Color("Gray100"))
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                NavigationLink {
                    SurveyView()
                } label: {
                    Text("검사 시작하기")
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity, maxHeight: 52)
                        .background(Color("Main"))
                }
                .cornerRadius(12)
                .padding(.horizontal, 20)
                .padding(.top, 28)
            }
        }
    }
}

struct StartView_Previews: PreviewProvider {
    static var previews: some View {
        StartView()
    }
}
