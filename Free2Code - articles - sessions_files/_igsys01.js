// Iguana Systems Statistics Client Source
// Copyright (c) 2005 Iguana Systems (www.iguanasystems.com.au)

// Settings
var _igacct = "1";
var _igtime = "1800";

// Search engines and keywords
var _igsub = new Array( );
var _igkey = new Array( );
_igsub[0]="google";		_igkey[0]="q";
_igsub[1]="yahoo";		_igkey[1]="p";
_igsub[2]="msn";		_igkey[2]="q";
_igsub[3]="aol";		_igkey[3]="query";
_igsub[4]="lycos";		_igkey[4]="query";
_igsub[5]="ask";		_igkey[5]="q";
_igsub[6]="altavista";	_igkey[6]="q";
_igsub[7]="search";		_igkey[7]="q";
_igsub[8]="netscape";	_igkey[8]="query";
_igsub[9]="earthlink";	_igkey[9]="q";
_igsub[10]="cnn";		_igkey[10]="query";
_igsub[11]="looksmart";	_igkey[11]="key";
_igsub[12]="about";		_igkey[12]="terms";
_igsub[13]="excite";	_igkey[13]="qkw";
_igsub[14]="mamma";		_igkey[14]="query";
_igsub[15]="alltheweb";	_igkey[15]="q";
_igsub[16]="gigablast";	_igkey[16]="q";
_igsub[17]="voila";		_igkey[17]="kw";
_igsub[18]="virgilio";	_igkey[18]="qs";
_igsub[19]="teoma";		_igkey[19]="q";

// Site domain names
var _igref = new Array( );
_igref[0] = "free2code.net";

/////////////////////////////////////////

var _igd=document,_igl=_igd.location;

function _igs_search( s ) {
	if ( s == "" )
		return "";
	s = s.substr( s.indexOf( "//" ) + 2 );
	q = s.substr( s.indexOf( "/" ) + 1 );
	
	for (var i=0;i<_igsub.length;i++) {
		k = s.indexOf(_igsub[i]);
		if (k>-1) {
			l = "&"+_igkey[i]+"=";
			a = q.indexOf(l);
			if ( a == -1 ) a = q.indexOf("?"+_igkey[i]+"=");
			if ( a == -1 ) continue;
			
			a = a + l.length;
			q = q.substr(a);
			
			if ( (k=q.indexOf("&")) > -1 ) q = q.substr(0,k);
			
			return _igsub[i]+"|"+q;
		}
	}
	
	return "";
}

function _igs_tracker( ) {
	if ( _igl.protocol == "file:" ) return;
	if ( _igl.protocol == "https:" ) return; // fix this later
	
	d=new Date();
	x=new Date(d.getTime()+(_igtime*1000));
	x="; expires="+x.toGMTString()+"";
	
	f = 0;
	if ( _igd.cookie.indexOf("igsysst=") == -1 )
		f = 1;
	
	_igd.cookie="igsysst="+escape("present")+x+"; path=/";
	
	r = _igd.referrer;
	sq = _igs_search( r );
	if ( sq != "" )
		r = "";
	
	t = _igd.title;
	p = _igl.pathname;
	q = _igl.search.substr(1);
	ua = navigator.userAgent;
	res = screen.width + "x" + screen.height;
	
	lc = "site="+_igacct+"&rnd="+Math.round(Math.random()*2147483647)+"&e="+escape(f)+"&r="+escape(r)+"&s="+escape(sq)+"&t="+escape(t)+"&p="+escape(unescape(p))+"&q="+escape(unescape(q))+"&ua="+escape(ua)+"&res="+escape(res);
	
	document.writeln("<img src=\"http://stats.iguanasystems.com.au/s.php?"+lc+"\" alt=\"\" width=\"0\" height=\"0\">");
}

_igs_tracker( );
