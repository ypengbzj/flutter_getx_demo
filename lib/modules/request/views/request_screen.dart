import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_getx_demo/modules/request/controllers/request_controller.dart';
import 'package:flutter_getx_demo/modules/request/http.dart';
import 'package:flutter_getx_demo/modules/request/models/model.dart';
import 'package:flutter_getx_demo/modules/request/services/rest_client.dart';
import 'package:get/get.dart';
import 'package:flutter_getx_demo/modules/request/models/model.dart';

class RequestScreen extends StatefulWidget {
  @override
  _RequestScreenState createState() => _RequestScreenState();
}

class _RequestScreenState extends State<RequestScreen> {
  String responseData = '点击按钮发起请求，查看返回数据';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Request Page')),
      body: Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () async {
                  setState(() {
                    responseData = '请求中...';
                  });
                  try {
                    final apiService = RestClient(dio);
                    final model = await apiService.getResponse();

                    List<Map<String, String>> headersAsList = model
                        .headers.entries
                        .map((e) => {'key': e.key, 'value': e.value})
                        .toList();

                    print('--- Model Origin: ${model.origin}');
                    print('--- Model URL: ${model.url}');
                    print('--- Headers as List: $headersAsList');

                    setState(() {
                      responseData = '请求成功！\n\n'
                          'Origin: ${model.origin}\n'
                          'URL: ${model.url}\n'
                          'Headers:\n$headersAsList';
                    });

                  } catch (e) {
                    // 捕获异常，显示错误信息
                    setState(() {
                      responseData = '请求失败！\n错误信息：\n$e';
                    });
                  }
                },
                child: const Text('Request')),
            const SizedBox(height: 24),
            Expanded(
                child: SingleChildScrollView(
              child: Text(
                responseData,
                style: const TextStyle(fontSize: 16),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
