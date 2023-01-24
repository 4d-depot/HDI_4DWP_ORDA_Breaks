$templatename:="BreakSample_"+String:C10(Form:C1466.tabTemplates.index+1)

$template:=ds:C1482.Templates.query("name=:1"; $templatename).first()
WParea2:=$template.wp
WParea1:=$template.comments
WP SELECT:C1348(*; "WPTemplate"; 0; 0)


$ds:=ds:C1482.People.all().orderBy("continent asc, country asc, city asc")
WP SET DATA CONTEXT:C1786(WParea2; $ds)
WP COMPUTE FORMULAS:C1707(WParea2)

