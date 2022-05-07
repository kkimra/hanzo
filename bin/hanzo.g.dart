// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hanzo.dart';

// **************************************************************************
// CliGenerator
// **************************************************************************

T _$enumValueHelper<T>(Map<T, String> enumValues, String source) =>
    enumValues.entries
        .singleWhere(
          (e) => e.value == source,
          orElse: () => throw ArgumentError(
            '`$source` is not one of the supported values: '
            '${enumValues.values.join(', ')}',
          ),
        )
        .key;

Options _$parseOptionsResult(ArgResults result) => Options(
      result['add-sample'] as bool,
      result.wasParsed('install'),
      result.wasParsed('remove'),
    )
      ..install = _$enumValueHelper(
        _$HooksEnumMapBuildCli,
        result['install'] as String,
      )
      ..remove = _$enumValueHelper(
        _$HooksEnumMapBuildCli,
        result['remove'] as String,
      );

const _$HooksEnumMapBuildCli = <Hooks, String>{
  Hooks.all: 'all',
  Hooks.applypatch_msg: 'applypatch_msg',
  Hooks.commit_msg: 'commit_msg',
  Hooks.post_applypatch: 'post_applypatch',
  Hooks.post_checkout: 'post_checkout',
  Hooks.post_commit: 'post_commit',
  Hooks.post_merge: 'post_merge',
  Hooks.post_receive: 'post_receive',
  Hooks.post_rewrite: 'post_rewrite',
  Hooks.post_update: 'post_update',
  Hooks.pre_applypatch: 'pre_applypatch',
  Hooks.pre_auto_gc: 'pre_auto_gc',
  Hooks.pre_commit: 'pre_commit',
  Hooks.pre_push: 'pre_push',
  Hooks.pre_rebase: 'pre_rebase',
  Hooks.pre_receive: 'pre_receive',
  Hooks.prepare_commit_msg: 'prepare_commit_msg',
  Hooks.push_to_checkout: 'push_to_checkout',
  Hooks.update: 'update'
};

ArgParser _$populateOptionsParser(ArgParser parser) => parser
  ..addFlag(
    'add-sample',
    abbr: 's',
    help: 'If set, creates dummy dart script for the git hook',
  )
  ..addOption(
    'install',
    abbr: 'i',
    help: 'Creates git hooks scripts in .git/hook .',
    defaultsTo: 'pre_commit',
    allowed: [
      'all',
      'applypatch_msg',
      'commit_msg',
      'post_applypatch',
      'post_checkout',
      'post_commit',
      'post_merge',
      'post_receive',
      'post_rewrite',
      'post_update',
      'pre_applypatch',
      'pre_auto_gc',
      'pre_commit',
      'pre_push',
      'pre_rebase',
      'pre_receive',
      'prepare_commit_msg',
      'push_to_checkout',
      'update'
    ],
  )
  ..addOption(
    'remove',
    abbr: 'r',
    help: 'Removes git hooks scripts in .git/hook .',
    defaultsTo: 'all',
    allowed: [
      'all',
      'applypatch_msg',
      'commit_msg',
      'post_applypatch',
      'post_checkout',
      'post_commit',
      'post_merge',
      'post_receive',
      'post_rewrite',
      'post_update',
      'pre_applypatch',
      'pre_auto_gc',
      'pre_commit',
      'pre_push',
      'pre_rebase',
      'pre_receive',
      'prepare_commit_msg',
      'push_to_checkout',
      'update'
    ],
  );

final _$parserForOptions = _$populateOptionsParser(ArgParser());

Options parseOptions(List<String> args) {
  final result = _$parserForOptions.parse(args);
  return _$parseOptionsResult(result);
}
