//
import SwiftUI

struct HeaderView: View {
    var body: some View {
        VStack(alignment: .center, spacing: 0) {
            Text("MZ 앱 사용유형 검사")
                .font(.system(size: 22, weight: .bold))
                .foregroundColor(.white)
                .padding(.top, 32)
                .padding(.bottom, 16)
            Text("지금 뭐하고 계세요? \"뉴진스의 하이톤이요~\"")
                .font(.system(size: 14, weight: .medium))
                .foregroundColor(.white)
                .padding(.bottom, 28)
            HeaderCell(text: "총 15문항으로 검사는 5분 내외로 완료 가능해요.")
                .padding(.bottom, 16)
            HeaderCell(text: "혹시 사용하는 앱이 없다면 ‘중립'을 선택해주세요.")
                .padding(.bottom, 16)
            HeaderCell(text: "너무 대충 만드신거 아닌가요? “어쨋든 빨랐잖아”")
                .padding(.bottom, 32)
        }
        .frame(maxWidth: .infinity)
        .background(Color("Main"))
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}
