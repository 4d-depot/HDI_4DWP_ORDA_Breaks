//%attributes = {}


$template:=ds:C1482.Templates.query("name=:1"; Form:C1466.tabTemplates.currentValue).first()
WParea2:=$template.wp
WParea1:=$template.comments

$context:=New object:C1471
$context.tableDataSource:=Formula from string:C1601($template.dataSource).call()

WP SET DATA CONTEXT:C1786(WParea2; $context)
WP COMPUTE FORMULAS:C1707(WParea2)
