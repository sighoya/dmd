#!/usr/bin/env dub
/+dub.sdl:
dependency "dmd" path="../.."
+/
void main()
{
    import dmd.astbase;
    import dmd.globals;
    import dmd.lexer;
    import dmd.parse;

    scope diagnosticReporter = new StderrDiagnosticReporter(global.params.useDeprecated);
    scope parser = new Parser!ASTBase(null, null, false, diagnosticReporter);
    assert(parser !is null);
}
