//
//  ContentView.swift
//  ScreenshotApp
//
//  Created by Gülcan Doğan on 1.07.2025.
//

import SwiftUI

struct ContentView: View {
    @State private var lastScreenshot: String = ""
    

    var body: some View {
        VStack(spacing: 20) {
            Text("📸 Screenshot Automation")
                .font(.title)
                .bold()

            Button("Ekran Görüntüsü Al") {
                takeScreenshot()
            }
            .padding()
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(10)

            if !lastScreenshot.isEmpty {
                Text("Son görüntü: \(lastScreenshot)")
                    .font(.caption)
                    .foregroundColor(.gray)
            }
        }
        .padding()
        .frame(width: 300, height: 200)
    }

    func takeScreenshot() {
        let process = Process()
        process.executableURL = URL(fileURLWithPath: "/bin/bash")
        process.arguments = ["-c", "/Users/gulcandogan/Scripts/screenshot.sh"]
        process.currentDirectoryURL = URL(fileURLWithPath: "/Users/gulcandogan")

        let pipe = Pipe()
        process.standardOutput = pipe
        process.standardError = pipe
        
        do {
            try process.run()
            process.waitUntilExit()
            let data = pipe.fileHandleForReading.readDataToEndOfFile()
                   let output = String(data: data, encoding: .utf8) ?? ""
                   print("Script output: \(output)")
            lastScreenshot = DateFormatter.localizedString(from: Date(), dateStyle: .none, timeStyle: .medium)
        } catch {
            print("Hata: \(error.localizedDescription)")
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
