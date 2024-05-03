import 'receipt_text_style.dart';
import 'receipt_text_style_type.dart';
import 'receipt_text_size_type.dart';

class ReceiptTextLeftRight4Cols {
  ReceiptTextLeftRight4Cols(
    this.leftText,
    this.rightText1,
    this.rightText2,
    this.rightText3,
    this.rightText4, {
    this.leftTextStyle = const ReceiptTextStyle(
        type: ReceiptTextStyleType.normal,
        useSpan: true,
        size: ReceiptTextSizeType.small),
    this.rightTextStyle = const ReceiptTextStyle(
        type: ReceiptTextStyleType.normal,
        useSpan: true,
        size: ReceiptTextSizeType.small),
  });

  final String leftText;
  final String rightText1;
  final String rightText2;
  final String rightText3;
  final String rightText4;
  final ReceiptTextStyle leftTextStyle;
  final ReceiptTextStyle rightTextStyle;

  String get html =>
      '''
   


<div style='display: flex;'>
<div style='flex: 44%; text-align: left;'><p style="font-size:18px;">$leftText</p></div>
<div style='flex: 9%; text-align: right;'><p style="font-size:18px;">$rightText1</p></div>
<div style='flex: 13%; text-align: right;'><p style="font-size:18px;">$rightText2</p></div>
<div style='flex: 14%; text-align: right;'><p style="font-size:18px;">$rightText3</p></div>
<div style='flex: 20%; text-align: right;'><p style="font-size:18px;">$rightText4</p></div>
</div> 
  
    
  ''';
}
