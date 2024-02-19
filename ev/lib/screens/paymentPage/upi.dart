// ignore_for_file: invalid_return_type_for_catch_error

import 'dart:convert';
import 'package:crypto/crypto.dart';
import 'package:flutter/material.dart';
import 'package:phonepe_payment_sdk/phonepe_payment_sdk.dart';

class PhonePePayment extends StatefulWidget {
  const PhonePePayment({Key? key}) : super(key: key);

  @override
  State<PhonePePayment> createState() => _PhonePePaymentState();
}

class _PhonePePaymentState extends State<PhonePePayment> {
  String environment = "UAT_SIM";
  String appId = "";
  String merchantId = "PGTESTPAYUAT";
  bool enableLogging = true;
  String checkSum = "";
  String saltkey = "099eb0cd-02cf-4e2a-8aca-3e6c6aff0399";
  String saltIndex = "1";
  String callbackUrl =
      "https://webhook.site/ebe76ded-afa7-490b-a59c-10876d092099";

  String body = "";
  String apiEndPoint = "/pg/v1/pay";
  Object? result;

  getCheckSum() {
    final requestData = {
      "merchantId": merchantId,
      "merchantTransactionId": "MT7850590068188104",
      "merchantUserId": "MUID123",
      "amount": 10000,
      "callbackUrl": callbackUrl,
      "mobileNumber": "9999999999",
      "paymentInstrument": {"type": "PAY_PAGE"}
    };

    String base64Body = base64.encode(utf8.encode(json.encode(requestData)));
    checkSum =
        '${sha256.convert(utf8.encode(base64Body + apiEndPoint + saltkey))}###$saltIndex';
    return base64Body;
  }

  @override
  void initState() {
    super.initState();
    phonepayInit();
    body = getCheckSum().toString();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PhonePe Payment'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: startPgTransaction,
              child: const Text('Start Payment'),
            ),
            const SizedBox(height: 20),
            if (result != null) Text('Result: $result'),
          ],
        ),
      ),
    );
  }

  void phonepayInit() {
    PhonePePaymentSdk.init(environment, appId, merchantId, enableLogging)
        .then((val) {
      setState(() {
        result = 'PhonePe SDK Initialized - $val';
      });
    }).catchError((error) {
      handleError(error);
      return <dynamic>{};
    });
  }

  void startPgTransaction() async {
    PhonePePaymentSdk.startTransaction(body, callbackUrl, checkSum, "")
        .then((response) => {
              setState(() {
                if (response != null) {
                  String status = response['status'].toString();
                  String error = response['error'].toString();
                  if (status == 'SUCCESS') {
                    "Flow Completed - Status: Success!";
                  } else {
                    "Flow Completed - Status: $status and Error: $error";
                  }
                } else {
                  // "Flow Incomplete";
                }
              })
            })
        .catchError((error) {
      handleError(error);
      return <dynamic>{};
    });
  }

  void handleError(error) {
    setState(() {
      result = {"error": error};
    });
  }
}
