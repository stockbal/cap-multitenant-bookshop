using my.bookshop as my from '../db/data-model';

@requires: 'ShopUser'
service CatalogService {
    @readonly entity Books as projection on my.Books;
}