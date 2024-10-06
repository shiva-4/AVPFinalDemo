import SwiftUI

struct ContentView: View {
    // State to control the traffic light color
    @State private var currentLight: TrafficLight = .green
    
    // Enum to define the state of traffic lights
    enum TrafficLight {
        case red, yellow, green
    }

    var body: some View {
        VStack {
            // Traffic pole
            VStack(spacing: 20) {
                // Red light
                Circle()
                    .fill(currentLight == .red ? Color.red : Color.gray) // Red light when currentLight is red
                    .frame(width: 100, height: 100)
                
                // Yellow light
                Circle()
                    .fill(currentLight == .yellow ? Color.yellow : Color.gray) // Yellow light when currentLight is yellow
                    .frame(width: 100, height: 100)
                
                // Green light
                Circle()
                    .fill(currentLight == .green ? Color.green : Color.gray) // Green light when currentLight is green
                    .frame(width: 100, height: 100)
            }
            .padding()

            // Text to indicate the current action (Stop or Go)
            Text(currentLight == .red ? "Stop" : "Go")
                .font(.largeTitle)
                .foregroundColor(currentLight == .red ? .red : .green)
            
            Spacer() // Spacer to separate the traffic lights from the button

            // Stop sign button
            Button(action: {
                // Action to change the traffic light color to red
                currentLight = .red
            }) {
                Text("STOP")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding()
                    .frame(width: 200, height: 200)
                    .background(Color.red)
                    .foregroundColor(.white)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.black, lineWidth: 4))
            }
            .padding()
            
            Spacer()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

