
$ds:=ds:C1482.People.all().orderBy("continent asc, country asc, city asc")
WP SET DATA CONTEXT:C1786([Templates:4]wp:3; $ds)
WP COMPUTE FORMULAS:C1707([Templates:4]wp:3)



