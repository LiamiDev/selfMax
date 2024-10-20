import SwiftUI

struct HomeView: View {
    @State private var showingAddHabit = false
    
    var body: some View {
        NavigationView {
            VStack(spacing: 0) {
                // Top section with logo and add habit button
                HStack {
                    Image(systemName: "book.closed.circle.fill")
                        .resizable()
                        .frame(width: 40, height: 40)
                    Spacer()
                    Button(action: { showingAddHabit = true }) {
                        Label("Habits", systemImage: "plus")
                            .padding(.horizontal, 12)
                            .padding(.vertical, 8)
                            .background(Color.black)
                            .foregroundColor(.white)
                            .cornerRadius(20)
                    }
                }
                .padding()
                
                // Date section
                HStack {
                    VStack(alignment: .leading) {
                        Text("Sat")
                            .font(.subheadline)
                            .foregroundColor(.gray)
                        Text("19")
                            .font(.title)
                    }
                    Spacer()
                    VStack(alignment: .trailing) {
                        Text("Today")
                            .font(.subheadline)
                            .foregroundColor(.gray)
                        Text("20")
                            .font(.title)
                    }
                }
                .padding()
                
                // Habit card
                VStack(alignment: .leading, spacing: 10) {
                    Text("Meditate for 5 mins")
                        .font(.title)
                        .fontWeight(.bold)
                    
                    Text("I want to become")
                        .foregroundColor(.gray)
                    
                    Text("A mindful and present person")
                        .font(.title2)
                        .fontWeight(.medium)
                }
                .padding()
                .background(RoundedRectangle(cornerRadius: 20).fill(Color.white))
                .shadow(radius: 5)
                .padding()
                
                Spacer()
                
                // Bottom navigation bar
                HStack {
                    NavigationLink(destination: HomeView()) {
                        VStack {
                            Image(systemName: "house.fill")
                            Text("Home")
                        }
                    }
                    Spacer()
                    NavigationLink(destination: ProgressView()) {
                        VStack {
                            Image(systemName: "chart.bar.fill")
                            Text("Progress")
                        }
                    }
                    Spacer()
                    NavigationLink(destination: MindsetView()) {
                        VStack {
                            Image(systemName: "brain")
                            Text("Mindset")
                        }
                    }
                    Spacer()
                    NavigationLink(destination: FocusView()) {
                        VStack {
                            Image(systemName: "target")
                            Text("Focus")
                        }
                    }
                }
                .padding()
                .background(Color(UIColor.systemBackground))
                .overlay(
                    Rectangle()
                        .frame(height: 1)
                        .foregroundColor(Color.gray.opacity(0.3)),
                    alignment: .top
                )
            }
            .navigationBarHidden(true)
        }
        .sheet(isPresented: $showingAddHabit) {
            AddHabitView()
        }
    }
}

struct AddHabitView: View {
    var body: some View {
        Text("Add Habit View")
    }
}

struct ProgressView: View {
    var body: some View {
        Text("Progress View")
    }
}

struct MindsetView: View {
    var body: some View {
        Text("Mindset View")
    }
}

struct FocusView: View {
    var body: some View {
        Text("Focus View")
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
