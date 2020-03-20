//
//  ContentView.swift
//  NewWithSwiftLint
//
//  Created by Vincent O'Sullivan on 20/03/2020.
//  Copyright © 2020 Vincent O'Sullivan. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("New Project with SwiftLint")
                .font(.headline)
            Group {
                Text("\nThis is a new project that contains only two amendments (plus the text on this screen).  The amendments enable SwiftLint for this project.")

                Text("\nThe amendments are:")
                Text("1.  A small swiftlint.yml file added to the base of the project hierarchy.")
                Text("2.  A 'Run Script' added to the project build phass.")
                Text("\n(This assumes that SwiftLint has been installed on the computer.)")

                Text("\nSwiftLint can be found at:")
                Button(action: {
                    UIApplication.shared.open(URL(string: "https://github.com/realm/SwiftLint")!)
                }, label: {
                    Text("https://github.com/realm/SwiftLint")
                })
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            Group {
                Text("\nSample swiftlint.yml files:")
                Text("   The one in this project.")
                Button(action: {
                    UIApplication.shared.open(URL(string: "https://github.com/realm/SwiftLint/blob/master/.swiftlint.yml")!)
                }, label: {
                    Text("   In the SwiftLint project.")
                })
                Button(action: {
                    let url = URL(string:"https://github.com/xmartlabs/Swift-Project-Template/blob/master/Project-iOS/XLProjectName/.swiftlint.yml")!
                    UIApplication.shared.open(url)
                }, label: {
                    Text("   Another good learning example.")
                })
            }
            .frame(maxWidth: .infinity, alignment: .leading)
        }.padding()
            .fixedSize(horizontal: false, vertical: true)
            .font(.system(size: 12.0))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
