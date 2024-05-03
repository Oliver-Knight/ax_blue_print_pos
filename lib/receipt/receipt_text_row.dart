import 'collection_style.dart';
import 'receipt_alignment.dart';
import 'receipt_text_size_type.dart';
import 'receipt_text_style.dart';
import 'receipt_text_style_type.dart';

class ReceiptTextRow {
  ReceiptTextRow(
    this.text, {
    this.textStyle = const ReceiptTextStyle(
      type: ReceiptTextStyleType.normal,
      size: ReceiptTextSizeType.medium,
    ),
    this.alignment = ReceiptAlignment.left,
  });

  final String text;
  final ReceiptTextStyle textStyle;
  final ReceiptAlignment alignment;

  String get html => '''
    <div class="$_alignmentStyleHTML ${textStyle.textSizeHtml}">
      <${textStyle.textStyleHTML}>$text</${textStyle.textStyleHTML}>
    </div>
    ''';

//   String get html =>
//       '''
   
//     <div class="row">
//   <div class="column" > <div class="$_alignmentStyleHTML ${textStyle.textSizeHtml}">1</div></div>
//    <div class="column" > <div class="$_alignmentStyleHTML ${textStyle.textSizeHtml}">2</div></div>
//    <div class="column" > <div class="$_alignmentStyleHTML ${textStyle.textSizeHtml}">3</div></div>
// </div>
    
//     ''';

//  String get html =>
//       '''
   
//     <div class="row">
//    <div class="$_alignmentStyleHTML ${textStyle.textSizeHtml}">1             2       3       4</div>
  
// </div>
    
//     ''';

  String get _alignmentStyleHTML {
    if (alignment == ReceiptAlignment.left) {
      return CollectionStyle.textLeft;
    } else if (alignment == ReceiptAlignment.right) {
      return CollectionStyle.textRight;
    }
    return CollectionStyle.textCenter;
  }
}
