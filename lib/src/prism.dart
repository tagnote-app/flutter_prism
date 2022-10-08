import 'package:dart_prism/dart_prism.dart' as p;
import 'package:flutter/painting.dart';
import 'package:flutter/services.dart';

import 'style.dart';

/// Creates a [Prism].
class Prism {
  Prism({
    MouseCursor? mouseCursor,
    p.PrismStyle style = const PrismStyle(),
  })  : _styles = style,
        _mouseCursor = mouseCursor;

  final p.PrismStyle _styles;
  final MouseCursor? _mouseCursor;

  /// Renders [code] to a [TextSpan] list with the grammar of the given
  /// [language].
  List<TextSpan> render(String code, String language) {
    final prism = p.Prism();

    return _parseNodes(
      prism.parse(code, language),
    );
  }

  /// Parses [nodes] into a series of [TextSpan].
  List<TextSpan> _parseNodes(List<p.Node> nodes) {
    final textSpans = <TextSpan>[];

    for (final node in nodes) {
      textSpans.add(_parseNode(node));
    }

    return textSpans;
  }

  /// Parses the given [node] into a [TextSpan].
  TextSpan _parseNode(p.Node node) {
    String? text;
    List<TextSpan>? children;
    TextStyle? style;

    if (node is p.Text) {
      text = node.text;
    } else {
      style = _styles.get('token') ?? const TextStyle();
      style = style!.merge(_styles.get(node.type));

      for (final alias in node.aliases) {
        style = style!.merge(_styles.get(alias));
      }

      if (node is p.Token) {
        text = node.text;
      } else if (node is p.Container) {
        children = _parseNodes(node.children);
      } else {
        throw ArgumentError('Unknown node type');
      }
    }

    return TextSpan(
      text: text,
      children: children,
      style: style,
      mouseCursor: _mouseCursor,
    );
  }
}
