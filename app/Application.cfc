component {

	this.name="demo";
	this.applicationTimeout = CreateTimeSpan(10, 0, 0, 0); //10 days
	this.sessionManagement=false;
	this.clientManagement=false;
	this.setClientCookies=false;
	
	function onApplicationStart() {
		return true;
	}

	function onRequestStart(){
	}

	function oNRequestEnd(){
		var queryStrings = structKeyList(url);
		if( listfindnocase(queryStrings,"specialcase") ){
			cfhtmlhead( text='<meta name="special-meta" content="Wowzers!">');
		}
	}
}