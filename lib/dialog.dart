import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import 'api/controllers.dart';

class PhoneNumberDialog extends StatefulWidget {
  @override
  _PhoneNumberDialogState createState() => _PhoneNumberDialogState();
}

class _PhoneNumberDialogState extends State<PhoneNumberDialog> {
  SubscriptionController subscriptionController=Get.find();
  TextEditingController _phoneNumberController = TextEditingController();

  @override
  void dispose() {
    _phoneNumberController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.blue.withOpacity(0.5),
      title: Text('Enter Your Phone Number'),
      content: TextField(
        controller: _phoneNumberController,
        keyboardType: TextInputType.phone,
        decoration: InputDecoration(
          hintText: 'Phone Number',
        ),
      ),
      actions: <Widget>[
        GestureDetector(
          onTap: () {
            Navigator.of(context).pop(); // Close the dialog
          },
          child: Text('Cancel'),
        ),
        GestureDetector(
          onTap: () {
            String phoneNumber = _phoneNumberController.text;
            // Do something with the phone number, like initiate payment
            print('Phone number entered: $phoneNumber');
            subscriptionController.paymentMap["phone_number"]=phoneNumber;
            print(subscriptionController.paymentMap);
            subscriptionController.orderNow(subscriptionController.paymentMap);
            Navigator.of(context).pop(); // Close the dialog
          },
          child: Text('Pay'),
        ),
      ],
    );
  }
}

