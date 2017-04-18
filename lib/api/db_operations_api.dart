part of swagger.api;



class DBOperationsApi {
  final ApiClient apiClient;

  DBOperationsApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Add is used for adding a data object to the list created at Switch DB.
  ///
  /// You can choose the list that will be added tha data set to with List parameter that will be sent to Header. It&#39;s equal to INSERT query at the relational databases model. The data set that will be added to the database is transmited at request body. For versions upper than v1.2.1, if the data sent is an array, all items in the array are added one by one, so they are added as a whole. 
  Future<AddResponse> addPost(String aPIKey, String accessToken, String list, String body) async {
    Object postBody = body;

    // verify required params are set
    if(aPIKey == null) {
     throw new ApiException(400, "Missing required param: aPIKey");
    }
    if(accessToken == null) {
     throw new ApiException(400, "Missing required param: accessToken");
    }
    if(list == null) {
     throw new ApiException(400, "Missing required param: list");
    }
    if(body == null) {
     throw new ApiException(400, "Missing required param: body");
    }

    // create path and map variables
    String path = "/Add".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    headerParams["APIKey"] = aPIKey;
headerParams["AccessToken"] = accessToken;
headerParams["List"] = list;

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
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return apiClient.deserialize(response.body, 'AddResponse') as AddResponse ;
    } else {
      return null;
    }
  }
  /// It&#39;s used for listing a data added before.
  ///
  /// List parameter sent remarks the list that will be do listing work on at Header. It&#39;s equal to SELECT query at relational databases. 
  Future listPost(String aPIKey, String accessToken, String list, Body body) async {
    Object postBody = body;

    // verify required params are set
    if(aPIKey == null) {
     throw new ApiException(400, "Missing required param: aPIKey");
    }
    if(accessToken == null) {
     throw new ApiException(400, "Missing required param: accessToken");
    }
    if(list == null) {
     throw new ApiException(400, "Missing required param: list");
    }
    if(body == null) {
     throw new ApiException(400, "Missing required param: body");
    }

    // create path and map variables
    String path = "/List".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    headerParams["APIKey"] = aPIKey;
headerParams["AccessToken"] = accessToken;
headerParams["List"] = list;

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
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return ;
    } else {
      return ;
    }
  }
  /// It&#39;s used for deleting a data added before at Switch DB.
  ///
  /// List parameter sent remarks the list that will be deleted data from at Header and ListItemId parameter remarks the ID consisted by Switch DB for the data that will be deleted. It&#39;s equal to DELETE query at relational databases. 
  Future<SetResponse> setDelete(String aPIKey, String accessToken, String list, String listItemId) async {
    Object postBody = null;

    // verify required params are set
    if(aPIKey == null) {
     throw new ApiException(400, "Missing required param: aPIKey");
    }
    if(accessToken == null) {
     throw new ApiException(400, "Missing required param: accessToken");
    }
    if(list == null) {
     throw new ApiException(400, "Missing required param: list");
    }
    if(listItemId == null) {
     throw new ApiException(400, "Missing required param: listItemId");
    }

    // create path and map variables
    String path = "/Set".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    headerParams["APIKey"] = aPIKey;
headerParams["AccessToken"] = accessToken;
headerParams["List"] = list;
headerParams["ListItemId"] = listItemId;

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
                                             'DELETE',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return apiClient.deserialize(response.body, 'SetResponse') as SetResponse ;
    } else {
      return null;
    }
  }
  /// It&#39;s used for updating a data object that is already added to Switch DB.
  ///
  /// In order to UPDATE a object, Listname and ListItemId parameters should be sent in the Header of the REQUEST as \&quot;List\&quot;, \&quot;ListItemId\&quot;, respectively, as shown in the example below. It&#39;s equal to UPDATE query at relational databases. The data set that will be edited is transmited to the database at request body. 
  Future<SetResponse> setPost(String aPIKey, String accessToken, String list, String listItemId, String body) async {
    Object postBody = body;

    // verify required params are set
    if(aPIKey == null) {
     throw new ApiException(400, "Missing required param: aPIKey");
    }
    if(accessToken == null) {
     throw new ApiException(400, "Missing required param: accessToken");
    }
    if(list == null) {
     throw new ApiException(400, "Missing required param: list");
    }
    if(listItemId == null) {
     throw new ApiException(400, "Missing required param: listItemId");
    }
    if(body == null) {
     throw new ApiException(400, "Missing required param: body");
    }

    // create path and map variables
    String path = "/Set".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    headerParams["APIKey"] = aPIKey;
headerParams["AccessToken"] = accessToken;
headerParams["List"] = list;
headerParams["ListItemId"] = listItemId;

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
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return apiClient.deserialize(response.body, 'SetResponse') as SetResponse ;
    } else {
      return null;
    }
  }
}
