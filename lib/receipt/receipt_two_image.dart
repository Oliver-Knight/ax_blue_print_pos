import 'collection_style.dart';
import 'receipt.dart';

class ReceiptTwoImage {
  ReceiptTwoImage(
    this.data,
    this.data2, {
    this.alignment = ReceiptAlignment.left,
    this.width = 50,
  }
      // {
      //   this.alignment = ReceiptAlignment.right,
      //   this.width = 120,
      // }
      );

  final String data;
  final String data2;
  final int width;
  //final int width2;
  final ReceiptAlignment alignment;

  String get html => '''
  
  <div class="row" style="display: flex;">
  <div class="column" style="flex: 60%;">
    <img src="data:image/png;base64,$data" width="$width"/>
  </div>
  <div class="column" style="flex: 40%;">
    <img src="data:image/png;base64,$data2" width="$width"/>
  </div>
  </div>
  
   ''';

  String get _alignmentStyleHTML {
    if (alignment == ReceiptAlignment.left) {
      return CollectionStyle.textLeft;
    } else if (alignment == ReceiptAlignment.right) {
      return CollectionStyle.textRight;
    }
    return CollectionStyle.textCenter;
  }
}
