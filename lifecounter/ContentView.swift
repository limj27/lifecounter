//
//  ContentView.swift
//  lifecounter
//
//  Created by Justin Lim on 4/19/21.
//

import SwiftUI

struct ContentView: View {
    @State private var p1: Int = 20
    @State private var p2: Int = 20
    @State private var p3: Int = 20
    @State private var p4: Int = 20
    @State private var p5: Int = 20
    @State private var p6: Int = 20
    @State private var p7: Int = 20
    @State private var p8: Int = 20
    @State private var input1: String = ""
    @State private var input2: String = ""
    @State private var input3: String = ""
    @State private var input4: String = ""
    @State private var input5: String = ""
    @State private var input6: String = ""
    @State private var input7: String = ""
    @State private var input8: String = ""
    @State private var showingAlert1: Bool = false
    @State private var showingAlert2: Bool = false
    @State private var showingAlert3: Bool = false
    @State private var showingAlert4: Bool = false
    @State private var showingAlert5: Bool = false
    @State private var showingAlert6: Bool = false
    @State private var showingAlert7: Bool = false
    @State private var showingAlert8: Bool = false
    @State private var history: [String] = []
    @State private var currPlayers: Int = 4
    @State private var playerList: [String] = ["Player 1", "Player 2", "Player 3", "Player 4"]
    @State private var show: Bool = true
    
    var body: some View {
        NavigationView {
            GeometryReader { metrics in
                    ScrollView {
                            VStack {
                                Group {
                                    Button(action: {
                                        currPlayers += 1
                                        playerList.append("Player " + String(currPlayers))
                                        if currPlayers >= 8 {
                                            show = false
                                        }
                                    }, label: {Text("Add Player")}).disabled(show == false)
                                    Spacer()
                                }
                                Group {
                                    ForEach(playerList, id: \.self) { player in
                                        if player == "Player 1" {
                                            VStack(spacing: 2) {
                                                Text("Player 1 Life: " + String(p1)).font(.system(size: metrics.size.width / (CGFloat(currPlayers) * 5)))
                                                TextField("Input", text: $input1)
                                                    .keyboardType(.decimalPad)
                                                    .frame(width: metrics.size.width / 8, alignment: .center)
                                                    .font(.system(size: metrics.size.width / (CGFloat(currPlayers) * 5)))
                                                HStack {
                                                    Button(action: {
                                                        p1 += 1
                                                        history.append("Player 1 gained one life")
                                                        show = false
                                                    },
                                                        label: {Text("+1")}
                                                    ).frame(width: metrics.size.width / 6)
                                                    .font(.system(size: metrics.size.width / (CGFloat(currPlayers) * 5)))

                                                    Button(action: {
                                                        if p1 - 1 <= 0 {
                                                            showingAlert1 = true
                                                            p1 = 0
                                                            history.append("Player 1 lost one life")
                                                            history.append("Player 1 lost the game")
                                                            show = true
                                                        } else {
                                                            history.append("Player 1 lost one life")
                                                            p1 -= 1
                                                            show = false
                                                        }},
                                                            label: {Text("-1")}
                                                    ).frame(width: metrics.size.width / 6)
                                                    .font(.system(size: metrics.size.width / (CGFloat(currPlayers) * 5)))
                                                    .alert(isPresented: $showingAlert1, content: {
                                                        Alert(title: Text("Player 1 LOSES!"))
                                                    })

                                                    Button(action: {
                                                        if input1 == "" {
                                                            input1 = "0"
                                                        }
                                                        p1 += Int(input1)!
                                                        history.append("Player 1 gained \(input1) life")
                                                        show = false
                                                    },
                                                           label: {Text("+")}
                                                    ).frame(width: metrics.size.width / 6)
                                                    .font(.system(size: metrics.size.width / (CGFloat(currPlayers) * 5)))
                                                    Button(action: {
                                                        if input1 == "" {
                                                            input1 = "0"
                                                        }
                                                        if p1 - Int(input1)! <= 0 {
                                                            showingAlert1 = true
                                                            p1 = 0
                                                            history.append("Player 1 lost \(input1) life")
                                                            history.append("Player 1 lost the game")
                                                            show = true
                                                        } else {
                                                            p1 -= Int(input1)!
                                                            history.append("Player 1 lost \(input1) life")
                                                            show = false
                                                        }},
                                                            label: {Text("-")}
                                                    ).frame(width: metrics.size.width / 6)
                                                    .font(.system(size: metrics.size.width / (CGFloat(currPlayers) * 5)))
                                                    .alert(isPresented: $showingAlert1, content: {
                                                        Alert(title: Text("Player 1 LOSES!"))
                                                    })
                                                }
                                            }.frame(width: metrics.size.width)
                                        }
                                    }
                                    ForEach(playerList, id: \.self) { player in
                                        if player == "Player 2" {
                                            VStack(spacing: 2) {
                                                Text("Player 2 Life: " + String(p2)).font(.system(size: metrics.size.width / (CGFloat(currPlayers) * 5)))
                                                TextField("Input", text: $input2)
                                                    .keyboardType(.decimalPad)
                                                    .frame(width: metrics.size.width / 8, alignment: .center)
                                                    .font(.system(size: metrics.size.width / (CGFloat(currPlayers) * 5)))
                                                HStack {
                                                    Button(action: {
                                                        p2 += 1
                                                        history.append("Player 2 gained one life")
                                                        show = false
                                                    },
                                                        label: {Text("+1")}
                                                    ).frame(width: metrics.size.width / 6)
                                                    .font(.system(size: metrics.size.width / (CGFloat(currPlayers) * 5)))

                                                    Button(action: {
                                                        if p2 - 1 <= 0 {
                                                            showingAlert2 = true
                                                            p2 = 0
                                                            history.append("Player 2 lost one life")
                                                            history.append("Player 2 lost the game")
                                                            show = true
                                                        } else {
                                                            history.append("Player 2 lost one life")
                                                            p2 -= 1
                                                            show = false
                                                        }},
                                                            label: {Text("-1")}
                                                    ).frame(width: metrics.size.width / 6)
                                                    .font(.system(size: metrics.size.width / (CGFloat(currPlayers) * 5)))
                                                    .alert(isPresented: $showingAlert2, content: {
                                                        Alert(title: Text("Player 2 LOSES!"))
                                                    })

                                                    Button(action: {
                                                        if input2 == "" {
                                                            input2 = "0"
                                                        }
                                                        p2 += Int(input2)!
                                                        history.append("Player 2 gained \(input2) life")
                                                        show = false
                                                    },
                                                           label: {Text("+")}
                                                    ).frame(width: metrics.size.width / 6)
                                                    .font(.system(size: metrics.size.width / (CGFloat(currPlayers) * 5)))
                                                    Button(action: {
                                                        if input2 == "" {
                                                            input2 = "0"
                                                        }
                                                        if p2 - Int(input2)! <= 0 {
                                                            showingAlert2 = true
                                                            p2 = 0
                                                            history.append("Player 2 lost \(input2) life")
                                                            history.append("Player 2 lost the game")
                                                            show = true
                                                        } else {
                                                            show = false
                                                            p2 -= Int(input2)!
                                                            history.append("Player 2 lost \(input2) life")
                                                        }},
                                                            label: {Text("-")}
                                                    ).frame(width: metrics.size.width / 6)
                                                    .font(.system(size: metrics.size.width / (CGFloat(currPlayers) * 5)))
                                                    .alert(isPresented: $showingAlert2, content: {
                                                        Alert(title: Text("Player 2 LOSES!"))
                                                    })
                                                }
                                            }.frame(width: metrics.size.width)
                                        }
                                    }
                                    ForEach(playerList, id: \.self) { player in
                                        if player == "Player 3" {
                                            VStack(spacing: 2) {
                                                Text("Player 3 Life: " + String(p3)).font(.system(size: metrics.size.width / (CGFloat(currPlayers) * 5)))
                                                TextField("Input", text: $input3)
                                                    .keyboardType(.decimalPad)
                                                    .frame(width: metrics.size.width / 8, alignment: .center)
                                                    .font(.system(size: metrics.size.width / (CGFloat(currPlayers) * 5)))
                                                HStack {
                                                    Button(action: {
                                                        p3 += 1
                                                        history.append("Player 3 gained one life")
                                                        show = false
                                                    },
                                                        label: {Text("+1")}
                                                    ).frame(width: metrics.size.width / 6)
                                                    .font(.system(size: metrics.size.width / (CGFloat(currPlayers) * 5)))

                                                    Button(action: {
                                                        if p3 - 1 <= 0 {
                                                            showingAlert3 = true
                                                            p3 = 0
                                                            history.append("Player 3 lost one life")
                                                            history.append("Player 3 lost the game")
                                                            show = true
                                                        } else {
                                                            history.append("Player 3 lost one life")
                                                            p3 -= 1
                                                            show = false
                                                        }},
                                                            label: {Text("-1")}
                                                    ).frame(width: metrics.size.width / 6)
                                                    .font(.system(size: metrics.size.width / (CGFloat(currPlayers) * 5)))
                                                    .alert(isPresented: $showingAlert3, content: {
                                                        Alert(title: Text("Player 3 LOSES!"))
                                                    })

                                                    Button(action: {
                                                        if input3 == "" {
                                                            input3 = "0"
                                                        }
                                                        p3 += Int(input3)!
                                                        history.append("Player 3 gained \(input3) life")
                                                        show = false
                                                    },
                                                           label: {Text("+")}
                                                    ).frame(width: metrics.size.width / 6)
                                                    .font(.system(size: metrics.size.width / (CGFloat(currPlayers) * 5)))
                                                    Button(action: {
                                                        if input3 == "" {
                                                            input3 = "0"
                                                        }
                                                        if p3 - Int(input3)! <= 0 {
                                                            showingAlert3 = true
                                                            p3 = 0
                                                            history.append("Player 3 lost \(input3) life")
                                                            history.append("Player 3 lost the game")
                                                            show = true
                                                        } else {
                                                            p3 -= Int(input3)!
                                                            history.append("Player 3 lost \(input3) life")
                                                            show = false
                                                        }},
                                                            label: {Text("-")}
                                                    ).frame(width: metrics.size.width / 6)
                                                    .font(.system(size: metrics.size.width / (CGFloat(currPlayers) * 5)))
                                                    .alert(isPresented: $showingAlert3, content: {
                                                        Alert(title: Text("Player 3 LOSES!"))
                                                    })
                                                }
                                            }.frame(width: metrics.size.width)
                                        }
                                    }
                                    ForEach(playerList, id: \.self) { player in
                                        if player == "Player 4" {
                                            VStack(spacing: 2) {
                                                Text("Player 4 Life: " + String(p4)).font(.system(size: metrics.size.width / (CGFloat(currPlayers) * 5)))
                                                TextField("Input", text: $input4)
                                                    .keyboardType(.decimalPad)
                                                    .frame(width: metrics.size.width / 8, alignment: .center)
                                                    .font(.system(size: metrics.size.width / (CGFloat(currPlayers) * 5)))
                                                HStack {
                                                    Button(action: {
                                                        p4 += 1
                                                        history.append("Player 4 gained one life")
                                                        show = false
                                                    },
                                                        label: {Text("+1")}
                                                    ).frame(width: metrics.size.width / 6)
                                                    .font(.system(size: metrics.size.width / (CGFloat(currPlayers) * 5)))

                                                    Button(action: {
                                                        if p4 - 1 <= 0 {
                                                            showingAlert4 = true
                                                            p4 = 0
                                                            history.append("Player 4 lost one life")
                                                            history.append("Player 4 lost the game")
                                                            show = true
                                                        } else {
                                                            history.append("Player 4 lost one life")
                                                            p4 -= 1
                                                            show = false
                                                        }},
                                                            label: {Text("-1")}
                                                    ).frame(width: metrics.size.width / 6)
                                                    .font(.system(size: metrics.size.width / (CGFloat(currPlayers) * 5)))
                                                    .alert(isPresented: $showingAlert4, content: {
                                                        Alert(title: Text("Player 4 LOSES!"))
                                                    })

                                                    Button(action: {
                                                        if input4 == "" {
                                                            input4 = "0"
                                                        }
                                                        p4 += Int(input4)!
                                                        history.append("Player 4 gained \(input4) life")
                                                        show = false
                                                    },
                                                           label: {Text("+")}
                                                    ).frame(width: metrics.size.width / 6)
                                                    .font(.system(size: metrics.size.width / (CGFloat(currPlayers) * 5)))
                                                    Button(action: {
                                                        if input4 == "" {
                                                            input4 = "0"
                                                        }
                                                        if p4 - Int(input4)! <= 0 {
                                                            showingAlert4 = true
                                                            p4 = 0
                                                            history.append("Player 4 lost \(input4) life")
                                                            history.append("Player 4 lost the game")
                                                            show = true
                                                        } else {
                                                            p4 -= Int(input4)!
                                                            history.append("Player 4 lost \(input4) life")
                                                            show = false
                                                        }},
                                                            label: {Text("-")}
                                                    ).frame(width: metrics.size.width / 6)
                                                    .font(.system(size: metrics.size.width / (CGFloat(currPlayers) * 5)))
                                                    .alert(isPresented: $showingAlert4, content: {
                                                        Alert(title: Text("Player 4 LOSES!"))
                                                    })
                                                }
                                            }.frame(width: metrics.size.width)
                                        }
                                    }
                                    ForEach(playerList, id: \.self) { player in
                                        if player == "Player 5" {
                                            VStack(spacing: 2) {
                                                Text("Player 5 Life: " + String(p5)).font(.system(size: metrics.size.width / (CGFloat(currPlayers) * 5)))
                                                TextField("Input", text: $input5)
                                                    .keyboardType(.decimalPad)
                                                    .frame(width: metrics.size.width / 8, alignment: .center)
                                                    .font(.system(size: metrics.size.width / (CGFloat(currPlayers) * 5)))
                                                HStack {
                                                    Button(action: {
                                                        p5 += 1
                                                        history.append("Player 5 gained one life")
                                                        show = false
                                                    },
                                                        label: {Text("+1")}
                                                    ).frame(width: metrics.size.width / 6)
                                                    .font(.system(size: metrics.size.width / (CGFloat(currPlayers) * 5)))

                                                    Button(action: {
                                                        if p5 - 1 <= 0 {
                                                            showingAlert5 = true
                                                            p5 = 0
                                                            history.append("Player 5 lost one life")
                                                            history.append("Player 5 lost the game")
                                                            show = true
                                                        } else {
                                                            history.append("Player 5 lost one life")
                                                            p5 -= 1
                                                            show = false
                                                        }},
                                                            label: {Text("-1")}
                                                    ).frame(width: metrics.size.width / 6)
                                                    .font(.system(size: metrics.size.width / (CGFloat(currPlayers) * 5)))
                                                    .alert(isPresented: $showingAlert5, content: {
                                                        Alert(title: Text("Player 5 LOSES!"))
                                                    })

                                                    Button(action: {
                                                        if input5 == "" {
                                                            input5 = "0"
                                                        }
                                                        p5 += Int(input5)!
                                                        history.append("Player 5 gained \(input5) life")
                                                        show = false
                                                    },
                                                           label: {Text("+")}
                                                    ).frame(width: metrics.size.width / 6)
                                                    .font(.system(size: metrics.size.width / (CGFloat(currPlayers) * 5)))
                                                    Button(action: {
                                                        if input5 == "" {
                                                            input5 = "0"
                                                        }
                                                        if p5 - Int(input5)! <= 0 {
                                                            showingAlert5 = true
                                                            p5 = 0
                                                            history.append("Player 5 lost \(input5) life")
                                                            history.append("Player 5 lost the game")
                                                            show = true
                                                        } else {
                                                            p5 -= Int(input5)!
                                                            history.append("Player 5lost \(input5) life")
                                                            show = false
                                                        }},
                                                            label: {Text("-")}
                                                    ).frame(width: metrics.size.width / 6)
                                                    .font(.system(size: metrics.size.width / (CGFloat(currPlayers) * 5)))
                                                    .alert(isPresented: $showingAlert5, content: {
                                                        Alert(title: Text("Player 5 LOSES!"))
                                                    })
                                                }
                                            }.frame(width: metrics.size.width)
                                        }
                                    }
                                    ForEach(playerList, id: \.self) { player in
                                        if player == "Player 6" {
                                            VStack(spacing: 2) {
                                                Text("Player 6 Life: " + String(p6)).font(.system(size: metrics.size.width / (CGFloat(currPlayers) * 5)))
                                                TextField("Input", text: $input6)
                                                    .keyboardType(.decimalPad)
                                                    .frame(width: metrics.size.width / 8, alignment: .center)
                                                    .font(.system(size: metrics.size.width / (CGFloat(currPlayers) * 5)))
                                                HStack {
                                                    Button(action: {
                                                        p6 += 1
                                                        history.append("Player 6 gained one life")
                                                        show = false
                                                    },
                                                        label: {Text("+1")}
                                                    ).frame(width: metrics.size.width / 6)
                                                    .font(.system(size: metrics.size.width / (CGFloat(currPlayers) * 5)))

                                                    Button(action: {
                                                        if p6 - 1 <= 0 {
                                                            showingAlert6 = true
                                                            p6 = 0
                                                            history.append("Player 6 lost one life")
                                                            history.append("Player 6 lost the game")
                                                            show = true
                                                        } else {
                                                            history.append("Player 6 lost one life")
                                                            p6 -= 1
                                                            show = false
                                                        }},
                                                            label: {Text("-1")}
                                                    ).frame(width: metrics.size.width / 6)
                                                    .font(.system(size: metrics.size.width / (CGFloat(currPlayers) * 5)))
                                                    .alert(isPresented: $showingAlert6, content: {
                                                        Alert(title: Text("Player 6 LOSES!"))
                                                    })

                                                    Button(action: {
                                                        if input6 == "" {
                                                            input6 = "0"
                                                        }
                                                        p6 += Int(input6)!
                                                        history.append("Player 6 gained \(input6) life")
                                                        show = false
                                                    },
                                                           label: {Text("+")}
                                                    ).frame(width: metrics.size.width / 6)
                                                    .font(.system(size: metrics.size.width / (CGFloat(currPlayers) * 5)))
                                                    Button(action: {
                                                        if input6 == "" {
                                                            input6 = "0"
                                                        }
                                                        if p6 - Int(input6)! <= 0 {
                                                            showingAlert6 = true
                                                            p6 = 0
                                                            history.append("Player 6 lost \(input6) life")
                                                            history.append("Player 6 lost the game")
                                                            show = true
                                                        } else {
                                                            p6 -= Int(input6)!
                                                            history.append("Player 6 lost \(input6) life")
                                                            show = false
                                                        }},
                                                            label: {Text("-")}
                                                    ).frame(width: metrics.size.width / 6)
                                                    .font(.system(size: metrics.size.width / (CGFloat(currPlayers) * 5)))
                                                    .alert(isPresented: $showingAlert6, content: {
                                                        Alert(title: Text("Player 6 LOSES!"))
                                                    })
                                                }
                                            }.frame(width: metrics.size.width)
                                        }
                                    }
                                    ForEach(playerList, id: \.self) { player in
                                        if player == "Player 7" {
                                            VStack(spacing: 2) {
                                                Text("Player 7 Life: " + String(p7)).font(.system(size: metrics.size.width / (CGFloat(currPlayers) * 5)))
                                                TextField("Input", text: $input7)
                                                    .keyboardType(.decimalPad)
                                                    .frame(width: metrics.size.width / 8, alignment: .center)
                                                    .font(.system(size: metrics.size.width / (CGFloat(currPlayers) * 5)))
                                                HStack {
                                                    Button(action: {
                                                        p7 += 1
                                                        history.append("Player 7 gained one life")
                                                        show = false
                                                    },
                                                        label: {Text("+1")}
                                                    ).frame(width: metrics.size.width / 6)
                                                    .font(.system(size: metrics.size.width / (CGFloat(currPlayers) * 5)))

                                                    Button(action: {
                                                        if p7 - 1 <= 0 {
                                                            showingAlert7 = true
                                                            p7 = 0
                                                            history.append("Player 7 lost one life")
                                                            history.append("Player 7 lost the game")
                                                            show = true
                                                        } else {
                                                            history.append("Player 7 lost one life")
                                                            p7 -= 1
                                                            show = false
                                                        }},
                                                            label: {Text("-1")}
                                                    ).frame(width: metrics.size.width / 6)
                                                    .font(.system(size: metrics.size.width / (CGFloat(currPlayers) * 5)))
                                                    .alert(isPresented: $showingAlert7, content: {
                                                        Alert(title: Text("Player 7 LOSES!"))
                                                    })

                                                    Button(action: {
                                                        if input7 == "" {
                                                            input7 = "0"
                                                        }
                                                        p7 += Int(input7)!
                                                        history.append("Player 7 gained \(input6) life")
                                                        show = false
                                                    },
                                                           label: {Text("+")}
                                                    ).frame(width: metrics.size.width / 6)
                                                    .font(.system(size: metrics.size.width / (CGFloat(currPlayers) * 5)))
                                                    Button(action: {
                                                        if input7 == "" {
                                                            input7 = "0"
                                                        }
                                                        if p7 - Int(input7)! <= 0 {
                                                            showingAlert7 = true
                                                            p7 = 0
                                                            history.append("Player 7 lost \(input7) life")
                                                            history.append("Player 7 lost the game")
                                                            show = true
                                                        } else {
                                                            p7 -= Int(input7)!
                                                            history.append("Player 7 lost \(input7) life")
                                                            show = false
                                                        }},
                                                            label: {Text("-")}
                                                    ).frame(width: metrics.size.width / 6)
                                                    .font(.system(size: metrics.size.width / (CGFloat(currPlayers) * 5)))
                                                    .alert(isPresented: $showingAlert7, content: {
                                                        Alert(title: Text("Player 7 LOSES!"))
                                                    })
                                                }
                                            }.frame(width: metrics.size.width)
                                        }
                                    }
                                    ForEach(playerList, id: \.self) { player in
                                        if player == "Player 8" {
                                            VStack(spacing: 2) {
                                                Text("Player 8 Life: " + String(p8)).font(.system(size: metrics.size.width / (CGFloat(currPlayers) * 5)))
                                                TextField("Input", text: $input8)
                                                    .keyboardType(.decimalPad)
                                                    .frame(width: metrics.size.width / 8, alignment: .center)
                                                    .font(.system(size: metrics.size.width / (CGFloat(currPlayers) * 5)))
                                                HStack {
                                                    Button(action: {
                                                        p8 += 1
                                                        history.append("Player 8 gained one life")
                                                        show = false
                                                    },
                                                        label: {Text("+1")}
                                                    ).frame(width: metrics.size.width / 6)
                                                    .font(.system(size: metrics.size.width / (CGFloat(currPlayers) * 5)))

                                                    Button(action: {
                                                        if p8 - 1 <= 0 {
                                                            showingAlert8 = true
                                                            p8 = 0
                                                            history.append("Player 8 lost one life")
                                                            history.append("Player 8 lost the game")
                                                            show = true
                                                        } else {
                                                            history.append("Player 8 lost one life")
                                                            p8 -= 1
                                                            show = false
                                                        }},
                                                            label: {Text("-1")}
                                                    ).frame(width: metrics.size.width / 6)
                                                    .font(.system(size: metrics.size.width / (CGFloat(currPlayers) * 5)))
                                                    .alert(isPresented: $showingAlert8, content: {
                                                        Alert(title: Text("Player 8 LOSES!"))
                                                    })

                                                    Button(action: {
                                                        if input8 == "" {
                                                            input8 = "0"
                                                        }
                                                        p8 += Int(input8)!
                                                        history.append("Player 8 gained \(input8) life")
                                                        show = false
                                                    },
                                                           label: {Text("+")}
                                                    ).frame(width: metrics.size.width / 6)
                                                    .font(.system(size: metrics.size.width / (CGFloat(currPlayers) * 5)))
                                                    Button(action: {
                                                        if input8 == "" {
                                                            input8 = "0"
                                                        }
                                                        if p8 - Int(input8)! <= 0 {
                                                            showingAlert8 = true
                                                            p8 = 0
                                                            history.append("Player 8 lost \(input8) life")
                                                            history.append("Player 8 lost the game")
                                                            show = true
                                                        } else {
                                                            p8 -= Int(input8)!
                                                            history.append("Player 8 lost \(input8) life")
                                                            show = false
                                                        }},
                                                            label: {Text("-")}
                                                    ).frame(width: metrics.size.width / 6)
                                                    .font(.system(size: metrics.size.width / (CGFloat(currPlayers) * 5)))
                                                    .alert(isPresented: $showingAlert8, content: {
                                                        Alert(title: Text("Player 8 LOSES!"))
                                                    })
                                                }
                                            }.frame(width: metrics.size.width)
                                        }
                                    }
                                }
                                Group {
                                    Spacer()
                                    //History Button
                                    NavigationLink(destination: History(choice: history)) {
                                        Text("History")
                                    }
                                }
                                
                                
                                
                                
                            }
                    }
            }
        }.phoneOnlyStackNavigationView()
    }
}

extension View {
    func phoneOnlyStackNavigationView() -> some View {
        if UIDevice.current.userInterfaceIdiom == .phone {
            return AnyView(self.navigationViewStyle(StackNavigationViewStyle()))
        } else {
            return AnyView(self)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
