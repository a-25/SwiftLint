import Commandant
import Dispatch
import SwiftLintFramework

DispatchQueue.global().async {
    let registry = CommandRegistry<CommandantError<()>>()
    registry.register(LintCommand())
    registry.register(AutoCorrectCommand())
    registry.register(AnalyzeCommand())
    registry.register(VersionCommand())
    registry.register(RulesCommand())
    registry.register(GenerateDocsCommand())
    registry.register(HelpCommand(registry: registry))

    registry.main(defaultVerb: LintCommand().verb) { error in
        queuedPrintError(String(describing: error))
    }
}

func foo(
    bar: String,
    baz: String,
    completion: @escaping (_ error: Error?) -> Void
    ) {}

//func foo(
//    bar: String,
//    baz: String,
//    completion :(_ error: Error?) -> Void
//    ) {}

dispatchMain()
