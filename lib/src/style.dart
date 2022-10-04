import 'package:dart_prism/dart_prism.dart' as p;
import 'package:flutter/painting.dart';

// TODO(Zhiguang): Create a better default style.
class PrismStyle extends p.PrismStyle<TextStyle> {
  PrismStyle({
    super.root = const TextStyle(color: Color(0xDD000000), height: 1.3),
    super.token = const TextStyle(color: Color(0xFFF44336)),
    super.atrule,
    super.attrName,
    super.attrValue,
    super.bold = const TextStyle(fontWeight: FontWeight.bold),
    super.boolean,
    super.builtin,
    super.cdata,
    super.char,
    super.className,
    super.comment = const TextStyle(color: Color(0xFF999999)),
    super.constant,
    super.deleted,
    super.doctype,
    super.entity,
    super.function,
    super.important,
    super.inserted,
    super.italic = const TextStyle(fontStyle: FontStyle.italic),
    super.keyword = const TextStyle(color: Color(0xFF2196F3)),
    super.namespace,
    super.number,
    super.operator = const TextStyle(color: Color(0xFF4CAF50)),
    super.prolog,
    super.property,
    super.punctuation = const TextStyle(color: Color(0xFFE91E63)),
    super.regex,
    super.selector,
    super.string = const TextStyle(color: Color(0xFF607D8B)),
    super.symbol,
    super.tag,
    super.url,
  });
}
