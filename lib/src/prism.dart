import 'package:dart_prism/dart_prism.dart' as p;
import 'package:flutter/painting.dart';

import 'style.dart';

class Prism {
  Prism({
    required PrismStyle style,
  }) : _styles = style;

  final PrismStyle _styles;

  /// Renders [code] to a [TextSpan] with the grammar of the given [language].
  TextSpan render(String code, String language) {
    final prism = p.Prism();

    return TextSpan(
      style: _styles.get('root'),
      children: _parseNodes(
        prism.parse(code, language),
      ),
    );
  }

  List<TextSpan> _parseNodes(List<p.Node> nodes) {
    final textSpans = <TextSpan>[];

    for (final node in nodes) {
      textSpans.add(_parseNode(node));
    }

    return textSpans;
  }

  TextSpan _parseNode(p.Node node) {
    if (node is p.Text) {
      return TextSpan(text: node.text);
    }

    var style = _styles.get('token') ?? const TextStyle();
    style = style.merge(_styles.get(node.type));

    for (final alias in node.aliases) {
      style = style.merge(_styles.get(alias));
    }

    if (node is p.Token) {
      return TextSpan(
        style: style,
        text: node.text,
      );
    }

    if (node is p.Container) {
      return TextSpan(
        style: style,
        children: _parseNodes(node.children),
      );
    }

    throw ArgumentError('Unknown node type');
  }
}
