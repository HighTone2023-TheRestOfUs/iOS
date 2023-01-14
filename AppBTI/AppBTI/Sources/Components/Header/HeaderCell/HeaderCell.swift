import SwiftUI

struct HeaderCell: View {
    let text: String
    var body: some View {
        HStack(alignment: .center) {
            Image("")
                .resizable()
                .background(Color("Gray100"))
                .frame(width: 32, height: 32)
                .cornerRadius(8)
            Text(text)
                .font(.system(size: 14, weight: .medium))
        }
        .padding(.vertical, 8)
        .frame(maxWidth: .infinity)
        .background(.white)
        .cornerRadius(12)
        .padding(.horizontal, 20)
    }
}

struct HeaderCell_Previews: PreviewProvider {
    static var previews: some View {
        HeaderCell(text: "반갑다 친구야")
    }
}
