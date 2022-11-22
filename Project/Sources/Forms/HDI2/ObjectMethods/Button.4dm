


WParea2:=WP New:C1317(ds:C1482.Templates.query("name=:1"; "BreakSample_1").first().wp)

$ds:=ds:C1482.People.all().orderBy("continent asc, country asc, city asc")
WP SET DATA CONTEXT:C1786(WParea2; $ds)
WP COMPUTE FORMULAS:C1707(WParea2)

