<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="alex.Pizza"%>
<html lang="fr">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Jekyll v4.0.1">
    <title>Signin Template · Bootstrap</title>

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
    </style>
<body>

<form method="GET" action="${pageContext.request.contextPath}/ControllerPizza" enctype="multipart/form-data"> 

<div class="container">
<h2>formulaire de modification</h2>

<div class="row">

			<%
				Pizza modifpizza = (Pizza) request.getAttribute("modifpizza");
			%>


<div class="container-fluid bg-light py-3">
    <div class="row">
        <div class="col-md-6 mx-auto">
                <div class="card card-body">
                   <div class="col-md-6 col-sm-8 col-xs-10">
				<div class="thumbnail">

					<div class="caption" style="text-align: center;">
						<p>
						
							<input type="hidden" name="action" value=modifpizzavalid>
							<input type="hidden" name="idpizza" value="<%=modifpizza.getId()%>">
							Tarif Pizza :
							<input type="number" name="TarifPizz" value="<%=modifpizza.getPrice()%>" />
							
						</p>
						<p>
							Désignation Pizza :
							<input type="text" name="DesignPizz" value="<%=modifpizza.getDesignPizz()%>" />
							
						</p>
						<p style="text-align: left;">la description<br>
							<input type="text" name="Description" value="<%=modifpizza.getDescription()%>"/>
						</p>
					</div>

					<a class="btn btn-primary"
						href="${pageContext.request.contextPath}/ControllerPizza?action=Listpizza"
						role="button">Retour a la liste</a> 
					<button type="submit" name="submit" value="Ajouter" class="btn btn-primary">Valider</button>
					
					
	</div>

</form>

                </div>
        </div>
    </div>
</div>
</body>
</html>