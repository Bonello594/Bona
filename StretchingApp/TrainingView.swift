import SwiftUI

struct StretchingExercise: Identifiable {
    let id = UUID()
    let name: String
    let description: String
    let category: String
    let videoName: String
}

let sampleExercises: [StretchingExercise] = [
    StretchingExercise(name: "Neck Stretch", description: "Tilt the head to one side and hold.", category: "Upper Body", videoName: "neck"),
    StretchingExercise(name: "Shoulder Roll", description: "Roll the shoulders backward and forward.", category: "Upper Body", videoName: "shoulder"),
    StretchingExercise(name: "Hamstring Stretch", description: "Reach for your toes while keeping legs straight.", category: "Lower Body", videoName: "hamstring"),
    StretchingExercise(name: "Quad Stretch", description: "Hold one foot behind you and gently pull.", category: "Lower Body", videoName: "quad")
]

struct TrainingView: View {
    @State private var selectedCategory: String? = nil
    private var categories: [String] {
        Set(sampleExercises.map { $0.category }).sorted()
    }

    var body: some View {
        NavigationView {
            List {
                Picker("Categoria", selection: $selectedCategory) {
                    Text("Tutte").tag(String?.none)
                    ForEach(categories, id: \.self) { cat in
                        Text(cat).tag(String?(cat))
                    }
                }
                .pickerStyle(.segmented)

                ForEach(filteredExercises()) { exercise in
                    NavigationLink(destination: ExerciseDetailView(exercise: exercise)) {
                        Text(exercise.name)
                    }
                }
            }
            .navigationTitle("Esercizi")
        }
    }

    private func filteredExercises() -> [StretchingExercise] {
        if let cat = selectedCategory {
            return sampleExercises.filter { $0.category == cat }
        }
        return sampleExercises
    }
}

struct ExerciseDetailView: View {
    let exercise: StretchingExercise

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 16) {
                Rectangle()
                    .fill(Color.gray.opacity(0.3))
                    .frame(height: 200)
                    .overlay(Text("Video: \(exercise.videoName)"))
                Text(exercise.description)
            }
            .padding()
        }
        .navigationTitle(exercise.name)
    }
}
