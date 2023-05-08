using my.bookshop as my from '../db/data-model';

@requires : 'Admin'
service AdminService {
    @odata.draft.enabled
    entity Books as projection on my.Books;
}
