part of swagger.api;


@Entity()
class ListOrder {
  /* Order types: ASC, DESC */
  @Property(name: 'type')
  String type = null;
  
/* Column name. */
  @Property(name: 'by')
  String by = null;
  
  ListOrder();

  @override
  String toString()  {
    return 'ListOrder[type=$type, by=$by, ]';
  }

}

