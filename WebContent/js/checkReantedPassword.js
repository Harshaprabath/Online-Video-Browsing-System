/**
 * 
 */

function checkpassword(){
	
	if(document.getElementById("pw").value != document.getElementById("repw").value){
		
		alert("Password are mismatched!!");
		return false;
	}
	else{
		
		alert("Password are matched!!");
	    return true;
		}
}