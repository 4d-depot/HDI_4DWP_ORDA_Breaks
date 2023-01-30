
$context:=New object:C1471
//$context.tableDataSource:=[Templates]formula.call()

$context.tableDataSource:=Formula from string:C1601([Templates:4]dataSource:7).call()


WP SET DATA CONTEXT:C1786([Templates:4]wp:3; $context)
WP COMPUTE FORMULAS:C1707([Templates:4]wp:3)



