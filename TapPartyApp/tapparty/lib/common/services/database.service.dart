import 'package:supabase/supabase.dart';
import 'package:tapparty/common/credentials/supabase.credentials.dart';

class DatabaseService {
  ///Fetch Data from any Table with order
  Future fetchDataFrom({required String tableName, required String sortedBy}) async {
    try {
      var response = await SupabaseCredentials.supabaseClient
          .from(tableName)
          .select()
          .order(sortedBy, ascending: false)
          .execute();

          print(response.data);

    } catch (e) {
          print(e.toString());
    }
  }
///add Data to Events Table
  Future <PostgrestResponse?> createOneNewEvent({required String title, required String location}) async {
    try {
      PostgrestResponse? response = await SupabaseCredentials.supabaseClient
          .from("events")
          .insert ({
              "title": title,
              "location": location,
          })
          .execute();

      if (response.data != null){
        print(response.data);
      }else {
        print(response.error);
      }



    } catch (e) {
      print(e.toString());
    }
  }



}
