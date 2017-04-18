part of swagger.api;


@Entity()
class AddResponse {
  
  @Property(name: 'ResponseTime')
  int responseTime = null;
  

  @Property(name: 'Response')
  String response = null;
  

  @Property(name: 'ListItemId')
  String listItemId = null;
  
  AddResponse();

  @override
  String toString()  {
    return 'AddResponse[responseTime=$responseTime, response=$response, listItemId=$listItemId, ]';
  }

}

