import SwiftUI

struct ActivityData {
    let date: Date
    let calories: Double
    let exercises: Int
}

let sampleActivity: [ActivityData] = [
    ActivityData(date: Date().addingTimeInterval(-86400 * 3), calories: 100, exercises: 2),
    ActivityData(date: Date().addingTimeInterval(-86400 * 2), calories: 150, exercises: 3),
    ActivityData(date: Date().addingTimeInterval(-86400), calories: 200, exercises: 4)
]

struct ActivityView: View {
    var body: some View {
        NavigationView {
            VStack {
                ActivityChart(data: sampleActivity)
                Spacer()
                Button("Condividi") {
                    // Generate image and share
                }
                .buttonStyle(.borderedProminent)
            }
            .padding()
            .navigationTitle("Attività")
        }
    }
}

struct ActivityChart: View {
    let data: [ActivityData]

    var body: some View {
        GeometryReader { geo in
            Path { path in
                guard data.count > 1 else { return }
                let sorted = data.sorted { $0.date < $1.date }
                let maxCalories = (sorted.map { $0.calories }.max() ?? 1)
                for (index, item) in sorted.enumerated() {
                    let x = geo.size.width * CGFloat(index) / CGFloat(sorted.count - 1)
                    let y = geo.size.height * (1 - CGFloat(item.calories / maxCalories))
                    if index == 0 {
                        path.move(to: CGPoint(x: x, y: y))
                    } else {
                        path.addLine(to: CGPoint(x: x, y: y))
                    }
                }
            }
            .stroke(Color.blue, lineWidth: 2)
        }
        .frame(height: 150)
    }
}
