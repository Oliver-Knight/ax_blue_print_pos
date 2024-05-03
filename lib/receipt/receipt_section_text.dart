import 'package:blue_print_pos/receipt/collection_style.dart';
import 'package:blue_print_pos/receipt/receipt_image.dart';
import 'receipt_alignment.dart';
import 'receipt_line.dart';
import 'receipt_text.dart';
import 'receipt_text_left_right.dart';
import 'receipt_text_left_right_3cols.dart';
import 'receipt_text_left_right_4cols.dart';
import 'receipt_text_left_right_4cols_stockReturn.dart';
import 'receipt_text_left_right_5cols.dart';
import 'receipt_text_left_right_5cols_payment.dart';
import 'receipt_text_size_type.dart';
import 'receipt_text_style.dart';
import 'receipt_text_style_type.dart';
import 'receipt_text_row.dart';

class ReceiptSectionText {
  ReceiptSectionText();

  String _data = '';

  /// Build a page from html, [CollectionStyle.all] is defined CSS inside html
  /// [_data] will collect all generated tag from model [ReceiptText],[ReceiptTextRow]
  /// [ReceiptTextLeftRight] and [ReceiptLine]
  String get content {
    return '''
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>RECEIPT</title>
</head>

${CollectionStyle.all}

<body>
  <div class="receipt">
    <div class="container">
      <!-- testing part -->
      
      $_data
      
    </div>
  </div>
</body>
</html>
    ''';
  }

  /// Handler tag of text (p or b) and put inside body html
  /// This will generate single line text left, center or right
  /// [text] value of text will print
  /// [alignment] to set alignment of text
  /// [style] define normal or bold
  /// [size] to set size of text small, medium, large or extra large
  void addText(
    String text, {
    ReceiptAlignment alignment = ReceiptAlignment.center,
    ReceiptTextStyleType style = ReceiptTextStyleType.normal,
    ReceiptTextSizeType size = ReceiptTextSizeType.medium,
  }) {
    print('add Text*****');
    print('add Text*****$text');
    final ReceiptText receiptText = ReceiptText(
      text,
      textStyle: ReceiptTextStyle(
        type: style,
        size: size,
      ),
      alignment: alignment,
    );
    _data += receiptText.html;
  }

//My custom
  /// Handler tag of text (p or b) and put inside body html
  /// This will generate single line text left, center or right
  /// [text] value of text will print
  /// [alignment] to set alignment of text
  /// [style] define normal or bold
  /// [size] to set size of text small, medium, large or extra large
  void addTextRow(
    String text, {
    ReceiptAlignment alignment = ReceiptAlignment.left,
    ReceiptTextStyleType style = ReceiptTextStyleType.normal,
    ReceiptTextSizeType size = ReceiptTextSizeType.small,
  }) {
    print('addTextRow-----------');
    print('addTextRow-----------$text');
    final ReceiptTextRow receiptTextRow = ReceiptTextRow(
      text,
      textStyle: ReceiptTextStyle(
        type: style,
        size: size,
      ),
      alignment: alignment,
    );
    _data += receiptTextRow.html;
  }

  /// Handler tag of text (span or b) and put inside body html
  /// This will generate left right text with two value input from parameter
  /// [leftText] and [rightText]

  void addLeftRight3ColText(
    String text1,
    String text2,
    String text3, {
    ReceiptTextStyleType leftStyle = ReceiptTextStyleType.normal,
    ReceiptTextStyleType rightStyle = ReceiptTextStyleType.normal,
    ReceiptTextSizeType leftSize = ReceiptTextSizeType.medium,
    ReceiptTextSizeType rightSize = ReceiptTextSizeType.medium,
  }) {
    final ReceiptTextLeftRight3Cols leftRightText = ReceiptTextLeftRight3Cols(
      text1,
      text2,
      text3,
      leftTextStyle: ReceiptTextStyle(
        type: leftStyle,
        useSpan: true,
        size: leftSize,
      ),
      rightTextStyle: ReceiptTextStyle(
        type: leftStyle,
        useSpan: true,
        size: rightSize,
      ),
    );
    _data += leftRightText.html;
  }

  void addLeftRight4ColText(
    String text1,
    String text2,
    String text3,
    String text4,
    String text5, {
    ReceiptTextStyleType leftStyle = ReceiptTextStyleType.normal,
    ReceiptTextStyleType rightStyle = ReceiptTextStyleType.normal,
    ReceiptTextSizeType leftSize = ReceiptTextSizeType.medium,
    ReceiptTextSizeType rightSize = ReceiptTextSizeType.medium,
  }) {
    final ReceiptTextLeftRight4Cols leftRightText = ReceiptTextLeftRight4Cols(
      text1,
      text2,
      text3,
      text4,
      text5,
      leftTextStyle: ReceiptTextStyle(
        type: leftStyle,
        useSpan: true,
        size: leftSize,
      ),
      rightTextStyle: ReceiptTextStyle(
        type: leftStyle,
        useSpan: true,
        size: rightSize,
      ),
    );
    _data += leftRightText.html;
  }

  void addLeftRight4ColStockReturnText(
    String text1,
    String text2,
    String text3,
    String text4, {
    ReceiptTextStyleType leftStyle = ReceiptTextStyleType.normal,
    ReceiptTextStyleType rightStyle = ReceiptTextStyleType.normal,
    ReceiptTextSizeType leftSize = ReceiptTextSizeType.medium,
    ReceiptTextSizeType rightSize = ReceiptTextSizeType.medium,
  }) {
    final ReceiptTextLeftRight4ColsStockReturn leftRightText =
        ReceiptTextLeftRight4ColsStockReturn(
      text1,
      text2,
      text3,
      text4,
      leftTextStyle: ReceiptTextStyle(
        type: leftStyle,
        useSpan: true,
        size: leftSize,
      ),
      rightTextStyle: ReceiptTextStyle(
        type: leftStyle,
        useSpan: true,
        size: rightSize,
      ),
    );
    _data += leftRightText.html;
  }

  void addLeftRight5ColText(
    String text1,
    String text2,
    String text3,
    String text4,
    String text5, {
    ReceiptTextStyleType leftStyle = ReceiptTextStyleType.normal,
    ReceiptTextStyleType rightStyle = ReceiptTextStyleType.normal,
    ReceiptTextSizeType leftSize = ReceiptTextSizeType.medium,
    ReceiptTextSizeType rightSize = ReceiptTextSizeType.medium,
  }) {
    final ReceiptTextLeftRight5Cols leftRightText = ReceiptTextLeftRight5Cols(
      text1,
      text2,
      text3,
      text4,
      text5,
      leftTextStyle: ReceiptTextStyle(
        type: leftStyle,
        useSpan: true,
        size: leftSize,
      ),
      rightTextStyle: ReceiptTextStyle(
        type: leftStyle,
        useSpan: true,
        size: rightSize,
      ),
    );
    _data += leftRightText.html;
  }

  void addLeftRight5ColTextForPaymentReceipt(
    String text1,
    String text2,
    String text3,
    String text4,
    String text5, {
    ReceiptTextStyleType leftStyle = ReceiptTextStyleType.normal,
    ReceiptTextStyleType rightStyle = ReceiptTextStyleType.normal,
    ReceiptTextSizeType leftSize = ReceiptTextSizeType.medium,
    ReceiptTextSizeType rightSize = ReceiptTextSizeType.medium,
  }) {
    final ReceiptTextLeftRight5ColsForPayment leftRightText =
        ReceiptTextLeftRight5ColsForPayment(
      text1,
      text2,
      text3,
      text4,
      text5,
      leftTextStyle: ReceiptTextStyle(
        type: leftStyle,
        useSpan: true,
        size: leftSize,
      ),
      rightTextStyle: ReceiptTextStyle(
        type: leftStyle,
        useSpan: true,
        size: rightSize,
      ),
    );
    _data += leftRightText.html;
  }

  void addLeftRightText(
    String leftText,
    String rightText, {
    ReceiptTextStyleType leftStyle = ReceiptTextStyleType.normal,
    ReceiptTextStyleType rightStyle = ReceiptTextStyleType.normal,
    ReceiptTextSizeType leftSize = ReceiptTextSizeType.medium,
    ReceiptTextSizeType rightSize = ReceiptTextSizeType.medium,
  }) {
    final ReceiptTextLeftRight leftRightText = ReceiptTextLeftRight(
      leftText,
      rightText,
      leftTextStyle: ReceiptTextStyle(
        type: leftStyle,
        useSpan: true,
        size: leftSize,
      ),
      rightTextStyle: ReceiptTextStyle(
        type: leftStyle,
        useSpan: true,
        size: rightSize,
      ),
    );
    _data += leftRightText.html;
  }

  /// Add new line as empty or dashed line.
  /// [count] is how much line
  /// if [useDashed] true line will print as dashed line
  void addSpacer({int count = 1, bool useDashed = false}) {
    final ReceiptLine line = ReceiptLine(count: count, useDashed: useDashed);
    _data += line.html;
  }

  void addImage(
    String base64, {
    int width = 120,
    ReceiptAlignment alignment = ReceiptAlignment.center,
  }) {
    final ReceiptImage image = ReceiptImage(
      base64,
      width: width,
      alignment: alignment,
    );
    _data += image.html;
  }
}
