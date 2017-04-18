part of swagger.api;


@Entity()
class WhereItem {
  /* You can explain the controls of more than one state with where. The controls of states: equal, notEqual, like, greaterThan, lessThan */
  @Property(name: 'type')
  String type = null;
  
/* Column name */
  @Property(name: 'column')
  String column = null;
  
/* Column value */
  @Property(name: 'value')
  String value = null;
  
  WhereItem();

  @override
  String toString()  {
    return 'WhereItem[type=$type, column=$column, value=$value, ]';
  }

}

