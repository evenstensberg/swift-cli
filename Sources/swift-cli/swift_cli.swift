import ArgumentParser

@main

struct CLI: ParsableCommand {

    @Argument(help: "The cli flag test.")
    var test: String

    @Flag(name: [.customLong("verbose"), .customShort("v")], help: "Show logs, information and non blocking messages.")
    var verbose = false

    func run() throws {
        // here you would compare the images, log stuff and return the right status code.
        throw ExitCode.success
    }
}

public struct swift_cli {
    public static func main() {
        CLI.main()
    }
}
