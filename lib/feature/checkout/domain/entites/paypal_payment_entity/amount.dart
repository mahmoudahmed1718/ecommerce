import 'details.dart';

class Amount {
  String? total;
  String? currency;
  Details? details;

  Amount({this.total, this.currency, this.details});

  Map<String, dynamic> toJson() => {
    'total': total,
    'currency': currency,
    'details': details?.toJson(),
  };
}
