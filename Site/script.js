//this script file is for the search bar.
function searchFunction() {
    var input; // input of user from the input tag
    var inputUpper; // input converted to upper case
    var titleText; // content of the first td
    var table; // array variable to hold and index 'myTable' from the HTML.
    var tr; // tr variable is needed to hold the tr elements in 'myTable'.
    var td; // td variable is needed to hold the td elements.'.

    input = document.getElementById("searchBar"); //input variable is set to the input of user from html input tag
    table = document.getElementById("myTable"); // table variable  is cast as an array to be set to the table 'myTable' in the html.
    tr = table.getElementsByTagName("tr"); //tr variable is cast as an array to hold all tr elements of 'myTable' in the html.
    inputUpper = input.value.toUpperCase(); // inputUpper is set as the upper case of input.

    for (var i = 0; i < tr.length; i++) { //for loop to loop through tr tags of 'myTable' in the HTML.
        td = tr[i].getElementsByTagName("td")[0]; // variable td is set to the current instance of i through the loop which loops through first index of td elements in html. 
        if(td){
            titleText = td.innerHTML; // including first index of td elements as titleText.
            if (titleText.toUpperCase().indexOf(inputUpper) > -1) { 
                tr[i].style.display = ""; // if the input from the search bar includes content of the titles the display is set to nothing to include in the search.
            }
            else {
                tr[i].style.display = "none"; // if a title does not match have a letter of the input the the css is set to "none" to remove from search.
            }
        }
    }
}
