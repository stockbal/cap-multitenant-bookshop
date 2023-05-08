namespace my.bookshop;

using {
  cuid,
  managed
} from '@sap/cds/common';


entity Books : cuid, managed {
  title  : String  @title : '{i18n>books_name}';
  author : String  @title : '{i18n>books_author}';
  stock  : Integer @title : '{i18n>books_stock}';
}
