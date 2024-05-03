import 'receipt_text_style.dart';
import 'receipt_text_style_type.dart';
import 'receipt_text_size_type.dart';

class ReceiptTextLeftRight3Cols {
  ReceiptTextLeftRight3Cols(
    this.text1,
    this.text2,
    this.text3,
     {
    this.leftTextStyle = const ReceiptTextStyle(
      type: ReceiptTextStyleType.normal,
      useSpan: true,
      size: ReceiptTextSizeType.small
    ),
    this.rightTextStyle = const ReceiptTextStyle(
      type: ReceiptTextStyleType.normal,
      useSpan: true,
      size: ReceiptTextSizeType.small
    ),
  });



  final String text1;
  final String text2;
  final String text3;
  final ReceiptTextStyle leftTextStyle;
  final ReceiptTextStyle rightTextStyle;

  String get html => '''
   


<div style='display: flex;'>
<div style='flex: 48%; text-align: left;'><p style="font-size:18px;">$text1</p></div>
<div style='flex: 29%; text-align: right;'><p style="font-size:18px;">$text2</p></div>
<div style='flex: 23%; text-align: right;'><p style="font-size:18px;">$text3</p></div>

</div> 
  
    
  ''';
}
