/*
 * @file ALStackEncoder.swift
 * @description Define ALStackEncoder class
 * @par Copyright
 *   Copyright (C) 2025 Steel Wheels Project
 */

import MultiDataKit
import Foundation

public extension ALStack
{
        func encode() -> String {
                return encode(indent: 0)
        }

        private func encode(indent: Int) -> String {
                var result = "{\n"

                result += indentString(indent: indent+1) + "acripts: [\n"

                let paths = self.frameURLs.map { $0.path }
                let path  = paths.joined(separator: ", ")
                result += indentString(indent: indent+2) +  path + "\n"

                result += indentString(indent: indent+1) + "]\n"

                result += indentString(indent: indent) + "}\n"
                return result
        }

        private func indentString(indent idt: Int) -> String {
                var result = ""
                for _ in 0..<idt {
                        result += "    "
                }
                return result
        }
}

