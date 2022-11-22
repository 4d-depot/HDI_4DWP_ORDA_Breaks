

$table:=WP Get elements:C1550([Templates:4]wp:3; wk type table:K81:222)[0]

//WP SET ATTRIBUTES($table; wk datasource; Formula(This.data.company.employees))  // entity selection of People


$ds:=ds:C1482.People.all().orderBy("continent asc, country asc, city asc")

WP SET ATTRIBUTES:C1342($table; wk datasource:K81:367; Formula:C1597(ds:C1482.People.all().orderBy("continent asc, country asc, city asc")))

WP COMPUTE FORMULAS:C1707([Templates:4]wp:3)



