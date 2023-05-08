using CatalogService as service from '../../srv/cat-service';

annotate service.Books with @(UI.LineItem : [
    {
        $Type : 'UI.DataField',
        Value : title,
    },
    {
        $Type : 'UI.DataField',
        Value : author,
    },
    {
        $Type : 'UI.DataField',
        Value : stock,
    },
]);

annotate service.Books with @(
    UI.HeaderInfo                  : {
        TypeName       : '{i18n>typeName_books}',
        TypeNamePlural : '{i18n>typeNamePlural_books}',
        Title          : {
            $Type : 'UI.DataField',
            Value : title,
        },
    },
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data  : [
            {
                $Type : 'UI.DataField',
                Value : title,
            },
            {
                $Type : 'UI.DataField',
                Value : author,
            },
            {
                $Type : 'UI.DataField',
                Value : stock,
            },
        ],
    },

    UI.Facets                      : [{
        $Type  : 'UI.ReferenceFacet',
        ID     : 'GeneratedFacet1',
        Label  : '{i18n>facets_general_info}',
        Target : '@UI.FieldGroup#GeneratedGroup1',
    }, ]
);
