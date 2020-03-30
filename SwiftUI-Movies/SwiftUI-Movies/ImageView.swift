import SwiftUI
import FetchImage

struct ImageView: View {
    @ObservedObject
    var image: FetchImage

    var body: some View {
        ZStack {
            if image.isLoading {
                Rectangle().fill(Color.gray)
            } else {
                image.view?
                    .resizable()
                    .aspectRatio(contentMode: .fill)
            }
        }
        .animation(.default)
        .onAppear(perform: image.fetch)
        .onDisappear(perform: image.cancel)
    }
}
