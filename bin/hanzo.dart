import 'dart:io';

import 'package:build_cli_annotations/build_cli_annotations.dart';
import 'package:hanzo/hanzo.dart';
import 'package:io/ansi.dart';
import 'package:io/io.dart';

part 'hanzo.g.dart';

/// Annotation your option class with [CliOptions].
@CliOptions()
class Options {
  /// Customize options and flags by annotating fields with [CliOption].
  @CliOption(defaultsTo: false, abbr: 's', help: 'If set, creates dummy dart script for the git hook')
  final bool addSample;

  @CliOption(defaultsTo: Hooks.pre_commit, abbr: 'i', help: 'Creates git hooks scripts in .git/hook .')
  late Hooks install;

  late bool installWasParsed;

  @CliOption(defaultsTo: Hooks.all, abbr: 'r', help: 'Removes git hooks scripts in .git/hook .')
  late Hooks remove;

  late bool removeWasParsed;

  /// Populates final fields as long as there are matching constructor
  /// parameters.
  Options(this.addSample, this.installWasParsed, this.removeWasParsed);
}

void main(List<String> args) {
  Options options;
  try {
    options = parseOptions(args);

    if (options.installWasParsed) {
      install(options.install, addPrecommitSample: options.addSample);
    } else if (options.removeWasParsed) {
      remove(options.remove);
    } else {
      _printUsage();
    }
  } on FormatException catch (e) {
    print(red.wrap(e.message));
    print('');
    _printUsage();
    exitCode = ExitCode.usage.code;
    return;
  }
}

void _printUsage() {
  print('Usage: example/example.dart [arguments]');
  print(_$parserForOptions.usage);
}
