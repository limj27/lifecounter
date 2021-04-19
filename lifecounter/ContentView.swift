//
//  ContentView.swift
//  lifecounter
//
//  Created by Justin Lim on 4/19/21.
//

import SwiftUI

struct ContentView: View {
    @State private var p1 = 1
    @State private var p2 = 1
    @State private var p3 = 1
    @State private var p4 = 1
    @State private var showingAlert1 = false
    @State private var showingAlert2 = false
    @State private var showingAlert3 = false
    @State private var showingAlert4 = false
    @State private var alertMsg = Text("None")
    var body: some View {
        GeometryReader {
            metrics in
            VStack {
                HStack {
                    //Player 1
                    VStack(spacing: 10) {
                        Text("Player 1 Life: " + String(p1)).font(.system(size: metrics.size.width/15))
                        HStack {
                            Button(action: {p1 += 1},
                                   label: {Text("+")}
                            ).frame(width: (metrics.size.width / 2) / 6)
                            .font(.system(size: metrics.size.width/15))
                            Button(action: {
                                if p1 - 1 <= 0 {
                                    showingAlert1 = true
                                    p1 = 0
                                } else {
                                    p1 -= 1
                                }},
                                   label: {Text("-")}
                            ).frame(width: (metrics.size.width / 2) / 6)
                            .font(.system(size: metrics.size.width/15))
                            .alert(isPresented: $showingAlert1, content: {
                                Alert(title: Text("Player 1 LOSES!"))
                            })
                            Button(action: {p1 += 5},
                                   label: {Text("+5")}
                            ).frame(width: (metrics.size.width / 2) / 6)
                            .font(.system(size: metrics.size.width/15))
                            Button(action: {
                                if p1 - 5 <= 0 {
                                    showingAlert1 = true
                                    p1 = 0
                                } else {
                                    p1 -= 5
                                }},
                                   label: {Text("-5")}
                            ).frame(width: (metrics.size.width / 2) / 6)
                            .font(.system(size: metrics.size.width/15))
                            .alert(isPresented: $showingAlert1, content: {
                                Alert(title: Text("Player 1 LOSES!"))
                            })
                        }
                    }.frame(width: metrics.size.width / 2)
                    //Player 2
                    VStack(spacing: 10) {
                        Text("Player 2 Life: " + String(p2))
                            .font(.system(size: metrics.size.width/15))
                        HStack {
                            Button(action: {p2 += 1},
                                   label: {Text("+")}
                            ).frame(width: (metrics.size.width / 2) / 6)
                            .font(.system(size: metrics.size.width/15))
                            Button(action: {
                                if p2 - 1 <= 0 {
                                    showingAlert2 = true
                                    p2 = 0
                                } else {
                                    p2 -= 1
                                }},
                                   label: {Text("-")}
                            ).frame(width: (metrics.size.width / 2) / 6)
                            .font(.system(size: metrics.size.width/15))
                            .alert(isPresented: $showingAlert2, content: {
                                Alert(title: Text("Player 2 LOSES!"))
                            })
                            Button(action: {p2 += 5},
                                   label: {Text("+5")}
                            ).frame(width: (metrics.size.width / 2) / 6)
                            .font(.system(size: metrics.size.width/15))
                            Button(action: {
                                if p2 - 5 <= 0 {
                                    showingAlert2 = true
                                    p2 = 0
                                } else {
                                    p2 -= 5
                                }},
                                   label: {Text("-5")}
                            ).frame(width: (metrics.size.width / 2) / 6)
                            .font(.system(size: metrics.size.width/15))
                            .alert(isPresented: $showingAlert2, content: {
                                Alert(title: Text("Player 2 LOSES!"))
                            })
                        }
                    }.frame(width: metrics.size.width / 2)
                }.frame(height: metrics.size.height / 2)
                HStack {
                    //Player 3
                    VStack(spacing: 10) {
                        Text("Player 3 Life: " + String(p3))
                            .font(.system(size: metrics.size.width/15))
                        HStack {
                            Button(action: {p3 += 1},
                                   label: {Text("+")}
                            ).frame(width: (metrics.size.width / 2) / 6)
                            .font(.system(size: metrics.size.width/15))
                            Button(action: {
                                if p3 - 1 <= 0 {
                                    showingAlert3 = true
                                    p3 = 0
                                } else {
                                    p3 -= 1
                                }},
                                   label: {Text("-")}
                            ).frame(width: (metrics.size.width / 2) / 6)
                            .font(.system(size: metrics.size.width/15))
                            .alert(isPresented: $showingAlert3, content: {
                                Alert(title: Text("Player 3 LOSES!"))
                            })
                            Button(action: {p3 += 5},
                                   label: {Text("+5")}
                            ).frame(width: (metrics.size.width / 2) / 6)
                            .font(.system(size: metrics.size.width/15))
                            Button(action: {
                                if p3 - 5 <= 0 {
                                    showingAlert3 = true
                                    p3 = 0
                                } else {
                                    p3 -= 5
                                }},
                                   label: {Text("-5")}
                            ).frame(width: (metrics.size.width / 2) / 6)
                            .font(.system(size: metrics.size.width/15))
                            .alert(isPresented: $showingAlert3, content: {
                                Alert(title: Text("Player 3 LOSES!"))
                            })
                        }
                    }.frame(width: metrics.size.width / 2)
                    //Player 4
                    VStack(spacing: 10) {
                        Text("Player 4 Life: " + String(p4))
                            .font(.system(size: metrics.size.width/15))
                        HStack {
                            Button(action: {p4 += 1},
                                   label: {Text("+")}
                            ).frame(width: (metrics.size.width / 2) / 6)
                            .font(.system(size: metrics.size.width/15))
                            Button(action: {
                                if p4 - 1 <= 0 {
                                    showingAlert4 = true
                                    p4 = 0
                                } else {
                                    p4 -= 1
                                }},
                                   label: {Text("-")}
                            ).frame(width: (metrics.size.width / 2) / 6)
                            .font(.system(size: metrics.size.width/15))
                            .alert(isPresented: $showingAlert4, content: {
                                Alert(title: Text("Player 4 LOSES!"))
                            })
                            Button(action: {p4 += 5},
                                   label: {Text("+5")}
                            ).frame(width: (metrics.size.width / 2) / 6)
                            .font(.system(size: metrics.size.width/15))
                            Button(action: {
                                if p4 - 5 <= 0 {
                                    showingAlert4 = true
                                    p4 = 0
                                } else {
                                    p4 -= 5
                                }},
                                   label: {Text("-5")}
                            ).frame(width: (metrics.size.width / 2) / 6)
                            .font(.system(size: metrics.size.width/15))
                            .alert(isPresented: $showingAlert4, content: {
                                Alert(title: Text("Player 4 LOSES!"))
                            })
                        }
                    }.frame(width: metrics.size.width / 2)
                }.frame(height: metrics.size.height / 2)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
