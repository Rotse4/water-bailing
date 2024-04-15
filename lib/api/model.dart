import 'dart:ffi';

class SubModel {
  late List<Subscription> _subscription;
  List<Subscription> get subscription=> _subscription;


  SubModel({required subscription}){
    this._subscription=subscription;
  }

  SubModel.fromJson(Map<String, dynamic> json) {
    if (json['subscription'] != null) {
      _subscription = <Subscription>[];
      json['subscription'].forEach((v) {
        _subscription!.add(new Subscription.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.subscription != null) {
      data['subscription'] = this.subscription!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Subscription {
  int? id;
  String? amount;
  int? totalBought;
  String? usedWate;
  String? availableWater;

  Subscription(
      {this.id,
      this.amount,
      this.totalBought,
      this.usedWate,
      this.availableWater});

  Subscription.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    amount = json['amount'];
    totalBought = json['total_bought'];
    usedWate = json['used_wate'];
    availableWater = json['available_water'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['amount'] = this.amount;
    data['total_bought'] = this.totalBought;
    data['used_wate'] = this.usedWate;
    data['available_water'] = this.availableWater;
    return data;
  }
}
