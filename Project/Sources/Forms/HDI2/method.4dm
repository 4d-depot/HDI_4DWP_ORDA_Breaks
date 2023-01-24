C_TEXT:C284($path)
C_LONGINT:C283($page)
C_PICTURE:C286($pict)

Case of 
		
	: (Form event code:C388=On Load:K2:1)
		
		Form:C1466.documents:=ds:C1482.Documents.all().orderBy("pageNumber")
		
		Form:C1466.tabControl:=New object:C1471
		Form:C1466.tabControl.values:=Form:C1466.documents.toCollection("title").extract("title")
		Form:C1466.tabControl.index:=0
		
		WParea1:=Form:C1466.documents[0].comments
		WParea2:=WP New:C1317()
		
		Form:C1466.companies:=ds:C1482.Company.all().orderBy("name asc")
		WP SET DATA CONTEXT:C1786(WParea2; New object:C1471("company"; Form:C1466.companies[0]))
		WP COMPUTE FORMULAS:C1707(WParea2)
		
		LISTBOX SELECT ROW:C912(*; "LB"; 1)
		
		WP SET VIEW PROPERTIES:C1648(WParea2; New object:C1471(wk formula highlight:K81:350; wk never:K81:352; wk formula highlight color:K81:351; "LightYellow"; wk visible references:K81:286; True:C214))
		
		Form:C1466.highlight:=False:C215
		Form:C1466.trace:=False:C215
		
		Form:C1466.tabTemplates:=New object:C1471
		Form:C1466.tabTemplates.values:=New collection:C1472("Template 1"; "Template 2"; "Template 3")
		Form:C1466.tabTemplates.index:=0
		
		
		$templatename:="BreakSample_"+String:C10(Form:C1466.tabTemplates.index+1)
		$template:=ds:C1482.Templates.query("name=:1"; $templatename).first()
		WParea2:=$template.wp
		WParea1:=$template.comments
		WP SELECT:C1348(*; "WPTemplate"; 0; 0)
		
		$ds:=ds:C1482.People.all().orderBy("continent asc, country asc, city asc")
		WP SET DATA CONTEXT:C1786(WParea2; $ds)
		WP COMPUTE FORMULAS:C1707(WParea2)
		
		
		
		
		//SET TIMER(-1)
		
	: (Form event code:C388=On Timer:K2:25)
		
		//SET TIMER(0)
		
		//WP SET DATA CONTEXT(WParea2; New object("company"; Form.companies[0]))
		//WP COMPUTE FORMULAS(WParea2)
		
		
	: (Form event code:C388=On Page Change:K2:54)
		
		$page:=FORM Get current page:C276
		If ($page=1)
			WParea1:=Form:C1466.documents[$page-1].comments
		End if 
		
End case 
