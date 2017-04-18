part of swagger.api;


@Entity()
class SetResponse {
  
  @Property(name: 'ResponseTime')
  int responseTime = null;
  

  @Property(name: 'Response')
  String response = null;
  
  SetResponse();

  @override
  String toString()  {
    return 'SetResponse[responseTime=$responseTime, response=$response, ]';
  }

}

