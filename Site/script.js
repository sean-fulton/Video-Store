//this script file is for the search field.
function searchFunction() {
    var input; // input of user from the input tag
    var prodID; // content of the second row td's
    var table; // array variable to hold and index 'myTable' from the HTML.
    var tr; // tr variable is needed to hold the tr elements in 'myTable'.
    var td; // td variable is needed to hold the td elements.'.

    input = prompt("Search products by 'Product ID'")
    table = document.getElementById("myTable"); // table variable  is cast as an array to be set to the table 'myTable' in the html.
    tr = table.getElementsByTagName("tr"); //tr variable is cast as an array to hold all tr elements of 'myTable' in the html.

    for (var i = 0; i < tr.length; i++) { //for loop to loop through tr tags of 'myTable' in the HTML.
        td = tr[i].getElementsByTagName("td")[1]; // variable td is set to the current instance of i through the loop which loops through first index of td elements in html. 
        if(td){
            prodID = td.innerHTML; // including first index of td elements as prodID.
            if (prodID == input) { 
                tr[i].style.display = ""; // if the input from the search bar includes content of the titles the display is set to nothing to include in the search.
            }
            else {
                tr[i].style.display = "none"; // if a title does not match have a letter of the input the the css is set to "none" to remove from search.
            }
        }

    }
}
