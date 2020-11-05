var searchButton = document.getElementById("searchButton");
searchButton.addEventListener("click", searchFunction);

var VideoStoreXML = "VideoStore.xml";

function searchFunction(){
    var codeSearch = document.getElementById("searchInput").value;

    var result = document.getElementById("result");
    result.innerHTML = "";

    getXMLDocObject( VideoStoreXML, function ( xmlDoc ) {

        var movieCatalog = xmlDoc.getElementsByTagName("movies")[0];
        var movies = movieCatalog.getElementsByTagName("movie");
        var found = false;
        var i;

        for(i = 0; i < movies.length; i++){
            var code = movies[i].attributes[0].value;

            if(codeSearch === code){
                var pCode = document.createElement("p");
                pCode.innerHTML = "Product ID: " + codeSearch;
                result.appendChild(pCode);

                var pMovieTitle = document.createElement("p");
                pMovieTitle.innerHTML = movies[i].children[0].nodeName + ": " + movies[i].children[0].innerHTML;
                result.appendChild(pMovieTitle);

                var pGenre = document.createElement("p");
                pGenre.innerHTML = movies[i].children[2].nodeName + ": " + movies[i].children[2].innerHTML;
                result.appendChild(pGenre);

                var pDescription = document.createElement("p");
                pDescription.innerHTML = movies[i].children[1].nodeName + ": " + movies[i].children[1].innerHTML;
                result.appendChild(pDescription);

                var pPrice = document.createElement("p");
                pPrice.innerHTML = movies[i].children[4].nodeName + ": " + movies[i].children[4].innerHTML;
                result.appendChild(pPrice);

                found = true
            }
        }

        if (!found){
            alert("Product ID does not exist!")
        }
    } );
}

function getXMLDocObject( xmlFile, callback ) {
    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function () {
      if ( ( this.readyState === 4 ) && ( this.status === 200 ) ) {
        var xmlContent = this.responseText;
        var xmlDoc = parseXML( xmlContent );
        callback( xmlDoc );
      }
    };
    xhttp.open( 'GET', xmlFile, true );
    xhttp.send();
  }
  
  function parseXML( xmlContent ) {
    var parser = new DOMParser();
    var xmlDoc = parser.parseFromString( xmlContent, 'text/xml' );
    return xmlDoc;
  }