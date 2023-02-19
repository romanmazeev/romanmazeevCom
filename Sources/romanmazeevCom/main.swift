//
//  main.swift
//
//
//  Created by Roman Mazeev on 19/02/2023.
//

import TokamakShim
import JavaScriptKit
import JavaScriptEventLoop

JSObject.global.document.object!.body.innerHTML = .string("")

struct RomanmazeevComApp: App {
    #if os(WASI)
    static let _configuration = _AppConfiguration(reconciler: .fiber(useDynamicLayout: true))
    #endif

    var body: some Scene {
        WindowGroup(PersonalInfo.fullName) {
            ContentView()
        }
    }
}

var title = JSObject.global.document.createElement("title")
title.innerHTML = .string(PersonalInfo.fullName)
_ = JSObject.global.document.head.appendChild(title)

var favicon = JSObject.global.document.createElement("link")
favicon.rel = .string("icon")
favicon.type = .string("image/x-icon")
favicon.href = .string("favicon.ico")
_ = JSObject.global.document.head.appendChild(favicon)

JavaScriptEventLoop.installGlobalExecutor()

RomanmazeevComApp.main()
