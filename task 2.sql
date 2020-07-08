create view products_and_catalogs as select products.`name` as `name`, catalog.`name` as `cat_name` from products
join catalog on catalog_id = catalog.id;