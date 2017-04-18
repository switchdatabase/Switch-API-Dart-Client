part of swagger.api;



class AuthorizationApi {
  final ApiClient apiClient;

  AuthorizationApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Generate Access Token
  ///
  /// For generating Access Token, you need API Key and API Secret parameters that are provided from the developer portal. At the request, API Key that will be sent by using header is generated as portal API Key and Signature parameter is generated as md5(APISecret + ExpireTimestamp) format. At Expire parameter, token&#39;s expire date and time information must be proper to ISO 8601 standarts and Unix Time format with msec information. 
  Future<String> tokenGet(String aPIKey, String signature, int expire) async {
    Object postBody = null;

    // verify required params are set
    if(aPIKey == null) {
     throw new ApiException(400, "Missing required param: aPIKey");
    }
    if(signature == null) {
     throw new ApiException(400, "Missing required param: signature");
    }
    if(expire == null) {
     throw new ApiException(400, "Missing required param: expire");
    }

    // create path and map variables
    String path = "/Token".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    headerParams["APIKey"] = aPIKey;
headerParams["Signature"] = signature;
headerParams["Expire"] = expire;

    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return apiClient.deserialize(response.body, 'String') as String ;
    } else {
      return null;
    }
  }
}
