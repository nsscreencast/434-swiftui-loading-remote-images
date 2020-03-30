import SwiftUI
import FetchImage

struct MovieRow: View {

    let movie: Movie

    var body: some View {
        HStack {
            ImageView(image: FetchImage(url: movie.smallPosterURL))
                .frame(width: 120, height: 160)
                .clipped()
            VStack {
                Text(movie.title)
                Spacer()
            }
            Spacer()
        }
    .padding()
    }
}

struct MovieRow_Preview: PreviewProvider {
    static var previews: some View {
        let movie = Movie(id: 123,
                          title: "Rise of Skywalker",
                          posterPath: "/db32LaOibwEliAmSL2jjDF6oDdj.jpg")
        return MovieRow(movie: movie)
            .previewLayout(.fixed(width: 375, height: 180))
        .previewDisplayName("Movie Row")
    }
}
