//
//  ViewController.swift
//  Nand2TetrisGUI
//
//  Created by Chris Larsen on 6/29/18.
//  Copyright © 2018 Tiger Bomb. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {
    @IBOutlet weak var part1TF: NSTextField!
    @IBOutlet weak var part2TF: NSTextField!
    
    // Part 1 Btns
    @IBOutlet weak var hardwareSimulatroBtn: NSButton!
    @IBOutlet weak var CPUEmulatorBtn: NSButton!
    @IBOutlet weak var assemblerBtn: NSButton!
    
    // Part 2 Btns
    @IBOutlet weak var VMEmulatorBtn: NSButton!
    @IBOutlet weak var compilerBtn: NSButton!
    @IBOutlet weak var OSBtn: NSButton!
    
    private let assemblerPath: String = "/Users/christopherlarsen/Desktop/nand2tetris/tools/Assembler.sh"
    private let cpuPath: String = "/Users/christopherlarsen/Desktop/nand2tetris/tools/CPUEmulator.sh"
    private let hardwarePath: String = "/Users/christopherlarsen/Desktop/nand2tetris/tools/HardwareSimulator.sh"
    private let compilerPath: String = "/Users/christopherlarsen/Desktop/nand2tetris/tools/JackCompiler.sh"
    private let vmEmulatorPath: String = "/Users/christopherlarsen/Desktop/nand2tetris/tools/VMEmulator.sh"
    private let osPath: String = "/Users/christopherlarsen/Desktop/nand2tetris/tools/Assembler.sh"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // I don't know what these are supposed to do yet
        self.OSBtn.isEnabled = false
        self.compilerBtn.isEnabled = false
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }

    // MARK: Actions
    @IBAction func onHardwareSimulatorTapped(_ sender: NSButton) {
        print("tapped hardware")
        
        let path = "/bin/bash"
        let args: [String] = [self.hardwarePath]
        
        let task = Process.launchedProcess(launchPath: path, arguments: args)
        task.waitUntilExit()
    }
    
    @IBAction func onCPUEmulatorTapped(_ sender: NSButton) {
        let path = "/bin/bash"
        let args: [String] = [self.cpuPath]
        
        let task = Process.launchedProcess(launchPath: path, arguments: args)
        task.waitUntilExit()
    }
    
    @IBAction func onAssemblerTapped(_ sender: NSButton) {
        let path = "/bin/bash"
        let args: [String] = [self.assemblerPath]
        
        let task = Process.launchedProcess(launchPath: path, arguments: args)
        task.waitUntilExit()
    }
    
    @IBAction func onVMEmulatorTapped(_ sender: NSButton) {
        let path = "/bin/bash"
        let args: [String] = [self.vmEmulatorPath]
        
        let task = Process.launchedProcess(launchPath: path, arguments: args)
        task.waitUntilExit()
    }
    
    @IBAction func onCompilerTapped(_ sender: NSButton) {
        let path = "/bin/bash"
        let args: [String] = [self.compilerPath]
        
        let task = Process.launchedProcess(launchPath: path, arguments: args)
        task.waitUntilExit()
    }
    
    @IBAction func onOSTapped(_ sender: NSButton) {
        print("tapped compiler")
    }
}
