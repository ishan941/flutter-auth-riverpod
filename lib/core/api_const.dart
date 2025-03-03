class Api {
//
// local
  // static const String baseUrl = 'https://d4b9-27-34-73-171.ngrok-free.app/';

  //
  // Prod
  // static const String baseUrl = "https://381b-27-34-73-161.ngrok-free.app/";
  static const String baseUrl = "https://c880-27-34-73-246.ngrok-free.app/";
  static const String loginApi = 'api/v1/auth-service/authenticate';
  static const String signUpUserApi = 'api/v1/auth-service/register';
  static const String verifyEmailApi = 'api/v1/auth-service/verifyEmail';
  static const String sendOtpinEmailApi =
      'api/v1/auth-service/SendOtpForPassword/';
  static const String changePasswordApi = "api/v1/auth-service/changePassword/";
  static const String getUserByIdApi = "api/v1/editController/getUser/";
  static const String updateUserDetails = "api/v1/editController/updateUser/";

//
// Properties
  // static const String getUserByIdApi = 'api/user/';
  static const String updateUserByIdApi = 'api/user/update/';
  static const String getPropertiesApi = 'api/properties/';

  static const String deleteUserByIdApi =
      "api/user/delete/6751b78dcf11202c584e7582";
  static const String getListings = "api/listing/get";
  static const String getUserListings = "api/user/listings/";
}
