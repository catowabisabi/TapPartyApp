import 'package:supabase/supabase.dart';

class SupabaseCredentials {
  static const supabaseUrl = 'https://dlglwahmykkdrelhfiqx.supabase.co';
  static const supabaseKey =
      'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyb2xlIjoiYW5vbiIsImlhdCI6MTYzODQxNjIxNiwiZXhwIjoxOTUzOTkyMjE2fQ.AjLW8cVtGoVBRlwpApNuxSgdCUHoG7NU7WcKFLzbhe8';
  static SupabaseClient supabaseClient = SupabaseClient(supabaseUrl, supabaseKey);

}