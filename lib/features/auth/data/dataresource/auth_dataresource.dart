import 'package:dio/dio.dart' hide Headers;
import 'package:retrofit/http.dart';
import 'package:cahrity_project/core/api/constants_paths.dart';
import 'package:cahrity_project/core/api/response_model.dart';
import 'package:cahrity_project/features/auth/data/model/confirmed_user_model.dart';
import 'package:cahrity_project/features/auth/data/model/user_model.dart';
import 'package:cahrity_project/features/auth/data/model/user_register_model.dart';

part 'auth_dataresource.g.dart';

@RestApi(baseUrl: APiPath.baseUrl)
abstract class AuthDataResource {
  factory AuthDataResource(Dio dio, {String baseUrl}) = _AuthDataResource;

  @POST(APiPath.login)
  Future<UserResponseModel> login(
    @Field("email") String username,
    @Field("password") String password,
  );
  //
  @POST(APiPath.checkConfirmationCodeForSignUp)
  Future<ResponseModel<ConfirmedUserModel>> confirmationCode(
    @Field("confirmationCode") String confirmationCode,
    @Field("id") int id,
  );
  //
  @POST(APiPath.signUp)
  @Headers(<String, dynamic>{
    'Content-Type': 'application/json',
  })
  Future<UserResponseModel> signUp(@Body() UserRegisterModel user);
}
