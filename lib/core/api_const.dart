class Api {
  static const String baseUrl = "https://e152-27-34-73-237.ngrok-free.app/";
  static const String loginApi = 'api/v1/auth-service/authenticate';
  static const String signUpUserApi = 'api/v1/auth-service/register';
  static const String verifyEmailApi = 'api/v1/auth-service/verifyEmail';
  static const String sendOtpinEmailApi =
      'api/v1/auth-service/SendOtpForPassword/';
  static const String changePasswordApi = "api/v1/auth-service/changePassword/";
  static const String getUserByIdApi = "api/v1/editController/getUser/";
  static const String updateUserDetails = "api/v1/editController/updateUser/";
  static const String verifyKycApi = "api/v1/driver/driverKyc";

  static const String updateUserByIdApi = 'api/user/update/';
  static const String getPropertiesApi = 'api/properties/';

  static const String deleteUserByIdApi =
      "api/user/delete/6751b78dcf11202c584e7582";
  static const String getListings = "api/listing/get";
  static const String getUserListings = "api/user/listings/";
  static const String uploadProfileImageApi = "api/v1/uploadImage/save";
}
