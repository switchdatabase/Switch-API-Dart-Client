part of swagger.api;


@Entity()
class Body {
  /* List name. */
  @Property(name: 'list')
  String list = null;
  
/* Item count. */
  @Property(name: 'count')
  int count = null;
  
/* Page number. */
  @Property(name: 'page')
  int page = null;
  
/* Optional enumerator. You can assign the mode of implementation of where criterions by using AND and OR types under whereType parameter. */
  @Property(name: 'whereType')
  String whereType = null;
  

  @Property(name: 'where')
  List<WhereItem> where = [];
  

  @Property(name: 'order')
  ListOrder order = null;
  
  Body();

  @override
  String toString()  {
    return 'Body[list=$list, count=$count, page=$page, whereType=$whereType, where=$where, order=$order, ]';
  }

}

