<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="alex.Pizza"%>
<!doctype html>
<html lang="fr">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Jekyll v4.0.1">

    <link rel="canonical" href="https://getbootstrap.com/docs/4.5/examples/album/">

    <!-- Bootstrap core CSS -->
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">

<link href ="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.bundle.min.js">

<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" rel="script">
    <!-- Favicons -->
<link rel="apple-touch-icon" href="/docs/4.5/assets/img/favicons/apple-touch-icon.png" sizes="180x180">
<link rel="icon" href="/docs/4.5/assets/img/favicons/favicon-32x32.png" sizes="32x32" type="image/png">
<link rel="icon" href="/docs/4.5/assets/img/favicons/favicon-16x16.png" sizes="16x16" type="image/png">
<link rel="manifest" href="/docs/4.5/assets/img/favicons/manifest.json">
<link rel="mask-icon" href="/docs/4.5/assets/img/favicons/safari-pinned-tab.svg" color="#563d7c">
<link rel="icon" href="/docs/4.5/assets/img/favicons/favicon.ico">
<meta name="msapplication-config" content="/docs/4.5/assets/img/favicons/browserconfig.xml">
<meta name="theme-color" content="#563d7c">


    <style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        -ms-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }
   
    <!-- Custom styles for this template -->
.thumbnail {
	height: 380px;
	margin-bottom: 50px;
}

.button {
	background-color: gray;
	color: white;
}

.button:hover {
	background-color: darkgray;
}

.zoom {
	-webkit-transform: scale(1);
	transform: scale(1);
	-webkit-transition: .3s ease-in-out;
	transition: .3s ease-in-out;
}

.zoom:hover {
	-webkit-transform: scale(1.1);
	transform: scale(1.1);
}
</style>


</head>
<body>
	<div class="album py-5 bg-light">
    <div class="container">
  <div class="row">

			<%
				Pizza mapizza = (Pizza) request.getAttribute("mapizza");
			%>
			
			
			
			
			
        <div class="col-md-12">
          <div class="card mb-6 shadow-sm">
            	<img src="imagesPizza/<%=mapizza.getDesignPizz()%>.jpg" class="bd-placeholder-img card-img-top" width="70%" height="350">
            <div class="card-body">
              <p class="card-text">	<p>
							Tarif Pizza :
							<%=mapizza.getPrice()%> euros
						</p>
						<p>
							Désignation Pizza :
							<%=mapizza.getDesignPizz()%>
						</p>
						<p style="text-align: left;">la description:
						<%=mapizza.getDescription()%></p>
              <div class="d-flex justify-content-between align-items-center">
                <div class="btn-group">
                <a type="button" class="btn btn-sm btn-outline-secondary" 	href="${pageContext.request.contextPath}/ControllerPizza?action=Listpizza"
						role="button">Retour a la liste</a>
                 <a type="button" class="btn btn-sm btn-outline-warning" href="${pageContext.request.contextPath}/ControllerPizza?action=modifpizza&idpizza=<%=mapizza.getId()%>">Modifier</a>
                 <a type="button" class="btn btn-sm btn-outline-danger" href="${pageContext.request.contextPath}/ControllerPizza?action=deletepizza&idpizza=<%=mapizza.getId()%>">Supprimer</a>
                </div>
              </div>
            </div>
          </div>
        </div>
        
</div>
</div>
	</div>
</body>
</html>
