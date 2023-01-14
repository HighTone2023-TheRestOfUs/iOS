import SwiftUI

struct EndView: View {
    @State var data: ImageModel?
    @Binding var fancy: Bool
    @Binding var many: Bool
    @Binding var simple: Bool

    @State var isPresented: Bool = false
    @State var showShare: Bool = false
    var body: some View {
        VStack(alignment: .center, spacing: 0) {
            Text("당신의 앱 사용 유형은?")
                .font(.system(size: 14, weight: .medium))
                .padding(.bottom, 16)
            Text(data?.name ?? "")
                .font(.system(size: 22, weight: .bold))
                .foregroundColor(Color("Main"))
                .padding(.bottom, 28)
            Image(data?.imageName ?? "")
                .resizable()
                .frame(maxWidth: .infinity, maxHeight: 400)
                .background(Color("Gray100"))
                .cornerRadius(16)
                .padding(.bottom, 28)
                .padding(.horizontal, 20)
            Text(data?.contnet ?? "")
                .foregroundColor(Color("Gray300"))
                .multilineTextAlignment(.center)
                .font(.system(size: 14, weight: .medium))
                .padding(.horizontal, 28)
                .padding(.bottom, 28)
            Button {
                showShare = true
            } label: {
                Text("공유하기")
                    .font(.system(size: 16, weight: .bold))
                    .foregroundColor(.white)
            }
            .frame(maxWidth: .infinity, maxHeight: 52)
            .background(Color("Main"))
            .cornerRadius(12)
            .padding(.horizontal, 20)
            .padding(.bottom, 12)
            Button {
                isPresented = true
            } label: {
                Text("다시하기")
                    .font(.system(size: 16, weight: .bold))
                    .foregroundColor(Color("Main"))
            }
            .frame(maxWidth: .infinity, maxHeight: 52)
            .background(.white)
            .overlay {
                RoundedRectangle(cornerRadius: 12)
                    .stroke(Color("Main"), lineWidth: 1)
            }
            .padding(.horizontal, 20)

        }
        .onAppear {
            self.data = toData()
        }
        .fullScreenCover(isPresented: $isPresented, content: {
            StartView()
        })
        .sheet(isPresented: $showShare, content: {
            ActivityView(text: "공유하기")
        })
        .setNavigationBackButton()
        .navigationTitle("검사 결과")
    }

    private func toData() -> ImageModel {
        var imageModel: ImageModel = .init(imageName: "", name: "", contnet: "")
        if !fancy && many && simple {
            imageModel = .init(imageName: "", name: "유명 카페 바리스타", contnet: "설명 : 깔끔한 디자인을 좋아하며 다수의 사람들이 사용하는 앱을 선호하고 간단한 기능들이 들어 있는 앱을 좋아합니다.")
        } else if !fancy && many && !simple {
            imageModel = .init(imageName: "", name: "강남 미인 제조기 성형외과 의사", contnet: "설명 : 깔끔한 디자인을 좋아하며 다수의 사람들이 사용하는 앱을 선호하고 간단한 기능들보다는 여러가지 기능들이 합쳐 들어 있는 앱을 좋아합니다.")
        } else if !fancy && !many && simple {
            imageModel = .init(imageName: "", name: "유별난 결벽증 환자", contnet: "설명 : 깔끔한 디자인을 좋아하며 쳐 매니아층 앱을 선호하고 간단한 기능들이 들어 있는 앱을 좋아합니다.")
        } else if !fancy && !many && !simple {
            imageModel = .init(imageName: "", name: "워터 소믈리에", contnet: "설명 : 깔끔한 디자인을 좋아하며 쳐 매니아층 앱을 선호하고 여러가지 기능들이 합쳐 들어 있는 앱을 좋아합니다.")
        } else if fancy && many && simple {
            imageModel = .init(imageName: "", name: "응애 나 아기 마술사", contnet: "설명 : 화려한 디자인을 좋아하며 다수의 사람들이 사용하는 앱을 선호하고 간단한 기능들이 들어 있는 앱을 좋아합니다.")
        } else if fancy && many && !simple {
            imageModel = .init(imageName: "", name: "언니들의 싸움을 펼치는 댄서", contnet: "설명 : 화려한 디자인을 좋아하며 다수의 사람들이 사용하는 앱을 선호하고 간단한 기능들보다는 여러가지 기능들이 합쳐 들어 있는 앱을 좋아합니다.")
        } else if fancy && !many && simple {
            imageModel = .init(imageName: "", name: "최저시급 민속촌 사물놀이 알바", contnet: "설명 : 화려한 디자인을 좋아하며 쳐 매니아층 앱을 선호하고 간단한 기능들이 들어 있는 앱을 좋아합니다.")
        } else {
            imageModel = .init(imageName: "", name: "귀멸의 칼날 코스플레이어", contnet: "설명 : 화려한 디자인을 좋아하며 쳐 매니아층 앱을 선호하고 여러가지 기능들이 합쳐 들어 있는 앱을 좋아합니다.")
        }
        return imageModel
    }
}

struct EndView_Previews: PreviewProvider {
    static var previews: some View {
        EndView(
            fancy: .constant(true),
            many: .constant(true),
            simple: .constant(true)
        )
    }
}
