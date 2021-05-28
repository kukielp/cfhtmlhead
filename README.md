# cfhtmlhead
Demo of CFhtml Head running to inject meta data into the head of a html document.

How to use?

```
git clone https://github.com/kukielp/cfhtmlhead.git
cd cfhtmlhead
docker compose up
```

Then Browse to:

```
https://127.0.0.1
````
^ This will not inject the meta tag in the head.

```
view-source:http://127.0.0.1/?specialcase=true
````
^ This will inject the meta tag in the head.

core of the code is in:

Application.cfc

```
var queryStrings = structKeyList(url);
if( listfindnocase(queryStrings,"specialcase") ){
    cfhtmlhead( text='<meta name="special-meta" content="Wowzers!">');
}
```
