import 'package:flutter/material.dart';
import 'package:supabase/supabase.dart';
import 'package:tapparty/common/services/database.service.dart';

class DatabaseNotifier extends ChangeNotifier{
  final DatabaseService _databaseService = DatabaseService();

  Future<String?> fetchDataFrom({
    required String tableName,
    required String sortedBy,
  }) async {
      await _databaseService.fetchDataFrom(tableName: tableName, sortedBy: sortedBy);

    }


  Future <PostgrestResponse?> createOneNewEvent
  ({required String title, required String location}) async {

  await _databaseService.createOneNewEvent(title: title, location: location);}


}