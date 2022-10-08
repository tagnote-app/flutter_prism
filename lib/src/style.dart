import 'package:dart_prism/dart_prism.dart' as p;
import 'package:flutter/painting.dart';

/// Creates a style.
class PrismStyle extends p.PrismStyle<TextStyle> {
  const PrismStyle({
    super.token = const TextStyle(color: Color(0xff90a4ae)),
    super.atrule = const TextStyle(color: Color(0xff0000fa)),
    super.attrName = const TextStyle(color: Color(0xff39adb5)),
    super.attrValue = const TextStyle(color: Color(0xfff6a434)),
    super.bold = const TextStyle(fontWeight: FontWeight.bold),
    super.boolean = const TextStyle(color: Color(0xff0000fa)),
    super.builtin = const TextStyle(color: Color(0xff39adb5)),
    super.cdata = const TextStyle(color: Color(0xff39adb5)),
    super.char = const TextStyle(color: Color(0xff39adb5)),
    super.className = const TextStyle(color: Color(0xff6182b8)),
    super.comment = const TextStyle(color: Color(0xff989898)),
    super.constant = const TextStyle(color: Color(0xff0000fa)),
    super.deleted = const TextStyle(color: Color(0xffe53935)),
    super.doctype = const TextStyle(color: Color(0xff989898)),
    super.entity = const TextStyle(color: Color(0xffe53935)),
    super.function = const TextStyle(color: Color(0xff766334)),
    super.important = const TextStyle(
      color: Color(0xff0000fa),
      fontWeight: FontWeight.bold,
    ),
    super.inserted = const TextStyle(color: Color(0xff39adb5)),
    super.italic = const TextStyle(fontStyle: FontStyle.italic),
    super.keyword = const TextStyle(color: Color(0xff0000fa)),
    super.namespace = const TextStyle(color: Color(0xb3000000)),
    super.number = const TextStyle(color: Color(0xff4C855B)),
    super.operator = const TextStyle(color: Color(0xff39adb5)),
    super.prolog = const TextStyle(color: Color(0xff989898)),
    super.property = const TextStyle(color: Color(0xff39adb5)),
    super.punctuation = const TextStyle(
      color: Color(0xff39adb5),
    ),
    super.regex = const TextStyle(color: Color(0xff6182b8)),
    super.selector = const TextStyle(color: Color(0xffe53935)),
    super.string = const TextStyle(color: Color(0xff8b1c1c)),
    super.symbol = const TextStyle(color: Color(0xff0000fa)),
    super.tag = const TextStyle(color: Color(0xffe53935)),
    super.url = const TextStyle(color: Color(0xffe53935)),
  });

  /// Returns a new style that is a combination of this style and the given
  /// styles.
  PrismStyle mergeWith({
    TextStyle? token,
    TextStyle? atrule,
    TextStyle? attrName,
    TextStyle? attrValue,
    TextStyle? bold,
    TextStyle? boolean,
    TextStyle? builtin,
    TextStyle? cdata,
    TextStyle? char,
    TextStyle? className,
    TextStyle? comment,
    TextStyle? constant,
    TextStyle? deleted,
    TextStyle? doctype,
    TextStyle? entity,
    TextStyle? function,
    TextStyle? important,
    TextStyle? inserted,
    TextStyle? italic,
    TextStyle? keyword,
    TextStyle? namespace,
    TextStyle? number,
    TextStyle? operator,
    TextStyle? prolog,
    TextStyle? property,
    TextStyle? punctuation,
    TextStyle? regex,
    TextStyle? selector,
    TextStyle? string,
    TextStyle? symbol,
    TextStyle? tag,
    TextStyle? url,
  }) =>
      PrismStyle(
        token: token == null
            ? this.token
            : (this.token != null ? this.token!.merge(token) : token),
        atrule: atrule == null
            ? this.atrule
            : (this.atrule != null ? this.atrule!.merge(atrule) : atrule),
        attrName: attrName == null
            ? this.attrName
            : (this.attrName != null
                ? this.attrName!.merge(attrName)
                : attrName),
        attrValue: attrValue == null
            ? this.attrValue
            : (this.attrValue != null
                ? this.attrValue!.merge(attrValue)
                : attrValue),
        bold: bold == null
            ? this.bold
            : (this.bold != null ? this.bold!.merge(bold) : bold),
        boolean: boolean == null
            ? this.boolean
            : (this.boolean != null ? this.boolean!.merge(boolean) : boolean),
        builtin: builtin == null
            ? this.builtin
            : (this.builtin != null ? this.builtin!.merge(builtin) : builtin),
        cdata: cdata == null
            ? this.cdata
            : (this.cdata != null ? this.cdata!.merge(cdata) : cdata),
        char: char == null
            ? this.char
            : (this.char != null ? this.char!.merge(char) : char),
        className: className == null
            ? this.className
            : (this.className != null
                ? this.className!.merge(className)
                : className),
        comment: comment == null
            ? this.comment
            : (this.comment != null ? this.comment!.merge(comment) : comment),
        constant: constant == null
            ? this.constant
            : (this.constant != null
                ? this.constant!.merge(constant)
                : constant),
        deleted: deleted == null
            ? this.deleted
            : (this.deleted != null ? this.deleted!.merge(deleted) : deleted),
        doctype: doctype == null
            ? this.doctype
            : (this.doctype != null ? this.doctype!.merge(doctype) : doctype),
        entity: entity == null
            ? this.entity
            : (this.entity != null ? this.entity!.merge(entity) : entity),
        function: function == null
            ? this.function
            : (this.function != null
                ? this.function!.merge(function)
                : function),
        important: important == null
            ? this.important
            : (this.important != null
                ? this.important!.merge(important)
                : important),
        inserted: inserted == null
            ? this.inserted
            : (this.inserted != null
                ? this.inserted!.merge(inserted)
                : inserted),
        italic: italic == null
            ? this.italic
            : (this.italic != null ? this.italic!.merge(italic) : italic),
        keyword: keyword == null
            ? this.keyword
            : (this.keyword != null ? this.keyword!.merge(keyword) : keyword),
        namespace: namespace == null
            ? this.namespace
            : (this.namespace != null
                ? this.namespace!.merge(namespace)
                : namespace),
        number: number == null
            ? this.number
            : (this.number != null ? this.number!.merge(number) : number),
        operator: operator == null
            ? this.operator
            : (this.operator != null
                ? this.operator!.merge(operator)
                : operator),
        prolog: prolog == null
            ? this.prolog
            : (this.prolog != null ? this.prolog!.merge(prolog) : prolog),
        property: property == null
            ? this.property
            : (this.property != null
                ? this.property!.merge(property)
                : property),
        punctuation: punctuation == null
            ? this.punctuation
            : (this.punctuation != null
                ? this.punctuation!.merge(punctuation)
                : punctuation),
        regex: regex == null
            ? this.regex
            : (this.regex != null ? this.regex!.merge(regex) : regex),
        selector: selector == null
            ? this.selector
            : (this.selector != null
                ? this.selector!.merge(selector)
                : selector),
        string: string == null
            ? this.string
            : (this.string != null ? this.string!.merge(string) : string),
        symbol: symbol == null
            ? this.symbol
            : (this.symbol != null ? this.symbol!.merge(symbol) : symbol),
        tag: tag == null
            ? this.tag
            : (this.tag != null ? this.tag!.merge(tag) : tag),
        url: url == null
            ? this.url
            : (this.url != null ? this.url!.merge(url) : url),
      );
}
