import ArgumentParser

@main

struct CLI: ParsableCommand {

    @Argument(help: "The cli flag test.")
    var test: String

    @Flag(name: [.customLong("verbose"), .customShort("v")], help: "Show logs, information and non blocking messages.")
    var verbose = false

    func run() throws {
        // logic etc
        throw ExitCode.success
    }
}

public struct swift_cli {
    public static func main() {
        CLI.main()
    }
}
