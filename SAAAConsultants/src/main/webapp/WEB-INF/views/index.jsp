<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%> 
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>

   <!--  <link href="/css/index.css"  rel="stylesheet"> -->


 <style><%@include file="/WEB-INF/css/index.css"%></style>
 
    <title>PGDCS || Help</title>
    <script type="text/javascript" src="jquery.store.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>


<script type="text/javascript">

function validatehelp() {
	     
         var emailID = document.myForm.email.value;
         var atpos = emailID.indexOf("@");
         var dotpos = emailID.lastIndexOf(".");
         
        var number = document.myForm.number.value;
         if(number.length != 10) {
        	    window.alert("Phone number must be 10 digits.");
        	    return false;
        	}
         
         if (atpos < 1 || ( dotpos - atpos < 2 )) {
            alert("Please enter correct email ID")
            document.myForm.email.focus() ;
            return false;
         }
  
         if (!(/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(myForm.email.value)))
         {
        	 alert("You have entered an invalid email address!")
              return (false);   
          }          
         alert("Your comment is sent!")
            return (true);
 
      }
</script>


  </head>
  <body>
<div id="cont">
 <img src="${pageContext.request.contextPath}/images/Background.jpg" alt="Background">
 <br>
<div class="container text-center" >
<h3><b>India's First Experiential Post Graduate in Cyber Security (PGCCS) Program in <br>
Partnership with NPTI(National Power Training Institute)</b></h3>
</div><br>

<section id="contact">    
  <div class="container">
    <div class="row">
     
   
      <div class="col-md-6 ">
      <h5>POST GRADUATE DIPLOMA IN CYBER<br>SECURITY FOR POWER SECTOR</h5>
      <hr align="left" style="height:8px;width:150px;color:#00bfff solid;background-color:#00bfff;" >
      <ul >
      <li><span style="color: #00bfff"><b>> </b></span>Blended training by top faculty and Industry experts</li>
       <li><span style="color: #00bfff"><b>> </b> </span>50% training on hands on personalised cloud based live labs</li>
        <li><span style="color: #00bfff"><b>> </b> </span>6 month, 480 hour course with access to Virtual labs with cyber attack and defense simulated projects</li>
         <li><span style="color: #00bfff"><b>> </b> </span>Open to all graduates with strong passion for a career in cyber security</li>
          <li><span style="color: #00bfff"><b>> </b> </span>100% placement support in most challenging projects with top employers</li>
          </ul>
           <a href="invoice.html" class= " btnc"> <button type="button" class="btn btn-danger " >Price : <b>Rs. 80,000 + GST</b></button></a><br>
       <a href="download.html" class= " btnc">   <button type="button" class="btn btn-danger btn-sm">Download Curriculum</button></a><br>
       <a href="emi.html" class= " btnc ">   <button type="button" class="btn btn-primary">Easy EMI Options Available</button></a><br>
          <p id="condition">*Conditions apply</p>
      </div>
      
       <div class="col-sm-6">
 <form:form name= "myForm" class="contact-form" action="help.html" onsubmit="return validatehelp()" method="post" commandname="Help" modelAttribute="help">
<section id="contact">    
    <div class="row">

       <div class="col-md-6">
    <label>Your Name</label>
       <input name="name" type="name" class="form-control" required>
  </div>
  
     <div class="col-md-6">
    <label >Your Email</label>
       <input name="email" type="email" class="form-control" required>
  </div>
</div>
</section>
  <br>
  <div class="form-group">
    <label >Select Qualification <span style="color: yellow">(Min Qualification-Graduate)</span></label>
  <select class="form-control">
  <option>Select Qualification </option>
  <option>BE/BTech </option>
  <option>ME/MTech </option>
  <option>PhD</option>
</select>
  </div>
  
       <div class="form-group">
    <label >Phone Number</label>
       <input name="number" type="number" class="form-control" required>
  </div>
  
     <div class="form-group">
    <label >Your message</label>
     <textarea  name="comment" class="form-control" rows="2" placeholder="Message..." required></textarea>
  </div>
        <button type="submit" class="btn btn-danger" value="help">Apply Now</button>
        </form:form>
   </div> 
    </div>
  </div>
</section>

<br>
</div>
    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

  </body>
</html>