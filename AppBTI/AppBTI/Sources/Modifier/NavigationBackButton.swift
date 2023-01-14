import SwiftUI

struct NavigationBackButtonModifier: ViewModifier {
    @Environment(\.dismiss) var dismiss
    func body(content: Content) -> some View {
        content
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button {
                        dismiss()
                    } label: {
                        Image(systemName: "arrow.left")
                            .resizable()
                            .foregroundColor(.black)
                            .frame(width: 18, height: 12)
                    }
                }
            }
            .navigationBarBackButtonHidden()
    }
}

extension View {
    func setNavigationBackButton() -> some View {
        modifier(NavigationBackButtonModifier())
    }
}
