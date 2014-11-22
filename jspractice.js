window.onload = function(){
   var foo = document.getElementsByTagName("span");
   for(var i = 0; i < foo.length; i++) { //sets all spans as eventhandlers that will run the following functions
       foo[i].setAttribute('onmouseover', 'clearAll(); changeByClass(this)');   
   }
   clearAll(); //initially clears all
};



function clearAll(){
   
    sideBar = document.getElementById("sidebar");
    sideBarDivs = sideBar.getElementsByTagName("div");
    var i;
    for (i = 0; i< sideBarDivs.length; i++){
        sideBarDivs[i].setAttribute("style", "visibility:hidden");
    }
    
}

function changeByClass(elmt){
 myClass = elmt.className;
 elements = document.getElementsByClassName(myClass);
    var i;
    for (i = 0; i < elements.length; i++) {
         elements[i].setAttribute("style", "visibility:visible");
        
   }
 }