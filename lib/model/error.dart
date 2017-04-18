part of swagger.api;


@Entity()
class Error {
  
  @Property(name: 'ResponseTime')
  int responseTime = null;
  

  @Property(name: 'Response')
  String response = null;
  

  @Property(name: 'ErrorMessage')
  String errorMessage = null;
  
  Error();

  @override
  String toString()  {
    return 'Error[responseTime=$responseTime, response=$response, errorMessage=$errorMessage, ]';
  }

}

