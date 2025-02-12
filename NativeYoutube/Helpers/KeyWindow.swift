//
//  KeyWindow.swift
//  NativeYoutube
//
//  Created by Erik Bautista on 2/4/22.
//

import AppKit


class KeyWindow: NSWindow {
    // This fixes issue when cannot set key window
    // when dynamically creating via SwiftUI

    override var canBecomeKey: Bool {
        return true
    }
}

// Handle key events

extension KeyWindow {
    override func keyDown(with event: NSEvent) {
        if event.modifierFlags.intersection(.deviceIndependentFlagsMask) == .command && event.charactersIgnoringModifiers == "w" {
            close()
            return
        } else {
            super.keyDown(with: event)
        }
    }
}
