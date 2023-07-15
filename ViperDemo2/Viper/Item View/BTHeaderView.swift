import SwiftUI

struct BTHeaderView: View {
    var rowHeight: CGFloat = 40
    var text: LocalizedStringKey

    var body: some View {
        ZStack() {
            Rectangle()
                .foregroundColor(.blue)
            Text(text)
                .lineLimit(1)
                .padding(10)
                .foregroundColor(.white)
        }//ZStack
        .frame(height: rowHeight)
        .font(Font.system(size: 14, weight: .bold, design: .default))
    }
}

struct BTHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        BTHeaderView(text: "Default")
    }
}
