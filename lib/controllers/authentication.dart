import 'package:flutter/material.dart';
import 'package:frontend/constants/constants.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class AuthenticationController extends GetxController {
  final isLoading = false.obs;

  Future<void> register({
    required String name,
    required String email,
    required String password,
  }) async {
    try {
      isLoading.value = true;
      var data =
          jsonEncode({'name': name, 'email': email, 'password': password});
      var response = await http.post(
        Uri.parse('$url/register'), // Remplacez par l'URL correcte
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        },
        body: data,
      );

      if (response.statusCode == 201 || response.statusCode == 200) {
        debugPrint('Enregistrement réussi: ${response.body}');
      } else {
        // Vérifiez si la réponse contient un utilisateur et un jeton
        var responseBody = json.decode(response.body);
        if (responseBody['user'] != null && responseBody['token'] != null) {
          debugPrint('Enregistrement réussi: ${response.body}');
        } else {
          debugPrint('Erreur lors de l\'enregistrement: ${response.body}');
          Get.snackbar('Error', json.decode(response.body)['message'],
              snackPosition: SnackPosition.TOP,
              backgroundColor: Colors.red,
              colorText: Colors.white);
          debugPrint('awa');
        }
      }
    } catch (e) {
      debugPrint('Erreur: $e');
    } finally {
      isLoading.value = false;
    }
  }
}
