
<!DOCTYPE html>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core"%>
<html lang="en">
<%@ page import="database.TVShow" %>

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Cadastro de S�ries</title>

    <!-- Bootstrap Core CSS - Uses Bootswatch Flatly Theme: http://bootswatch.com/flatly/ -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/freelancer.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="http://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
    <link href="http://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body id="page-top" class="index">

    <!-- Navigation -->
    <nav class="navbar navbar-default navbar-fixed-top">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header page-scroll">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#page-top">Cadastro de S�ries</a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <li class="hidden">
                        <a href="#page-top"></a>
                    </li>
                    <li class="page-scroll">
                        <a href="#home">In�cio</a>
                    </li>
                    <li class="page-scroll">
                        <a href="#register">Cadastrar</a>
                    </li>
                    <li class="page-scroll">
                    <a href="#tvshow-listing">Lista de S�ries</a>
                </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container-fluid -->
    </nav>

    <!-- Header -->
    <header>
        <div id="home" class="container">
            <div class="row">
                <div class="col-lg-12">
                    <img class="img-responsive" src="img/profile.png" alt="">
                    <div class="intro-text">
                        <span class="name">Cadastro de S�ries</span>
                        <hr class="star-light">
                        <span class="skills">Sistema de cadastramento de s�ries</span>
                    </div>
                </div>
            </div>
        </div>
    </header>

    
    <!-- Register Section -->
    <section id="register">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2>Cadastrar S�rie</h2>
                    <hr class="star-primary">
                </div>
            </div>
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2">
                    <form>

	                    <div class="row control-group">
	                    	<div class="form-group col-xs-12 floating-label-form-group controls">
	                            <label>C�digo</label>
	                            <input type="number" class="form-control" placeholder="C�digo" name="code" id="code" required data-validation-required-message="Por favor digite um c�digo para a s�rie.">
	                            <p class="help-block text-danger"></p>
	                        </div>
	                    </div>
                        <div class="row control-group">
                            <div class="form-group col-xs-12 floating-label-form-group controls">
                                <label>T�tulo</label>
                                <input type="text" class="form-control" placeholder="T�tulo" name="title" id="title" required data-validation-required-message="Por favor digite o t�tulo da s�rie.">
                                <p class="help-block text-danger"></p>
                            </div>
                        </div>
                        <div class="row control-group">
	                        <div class="form-group col-xs-12 floating-label-form-group controls">
	                            <label>Categoria</label>
	                            <input type="text" class="form-control" placeholder="Categoria" name="category" id="category" required data-validation-required-message="Por favor digite a categoria da s�rie.">
	                            <p class="help-block text-danger"></p>
	                        </div>
	                    </div>
                        <div class="row control-group">
	                        <div class="form-group col-xs-12 floating-label-form-group controls">
	                            <label>Pa�s</label>
	                            <input type="text" class="form-control" placeholder="Pa�s" name="country" id="country" required data-validation-required-message="Por favor digite o pa�s de origem da s�rie.">
	                            <p class="help-block text-danger"></p>
	                        </div>
	                    </div>
                        <div class="row control-group">
                        	<div class="form-group col-xs-12 floating-label-form-group controls">
	                            <label>Tamanho dos Epis�dios (em minutos)</label>
	                            <input type="number" class="form-control" placeholder="Tamanho do Epis�dio (em minutos)" name="episode-length" id="episode-length" required data-validation-required-message="Por favor digite o tamanho do epis�dio em minutos.">
	                            <p class="help-block text-danger"></p>
                            </div>
                        </div>
                        <div class="row control-group">
	                    	<div class="form-group col-xs-12 floating-label-form-group controls">
	                            <label>N�mero de Epis�dios</label>
	                            <input type="number" class="form-control" placeholder="N�mero de Epis�dios" name="episodes" id="episodes" required data-validation-required-message="Por favor digite quantos epis�dios j� foram lan�ados.">
	                            <p class="help-block text-danger"></p>
	                        </div>
	                    </div>
                        <div class="row control-group">
	                    	<div class="form-group col-xs-12 floating-label-form-group controls">
	                            <label>Temporada Atual</label>
	                            <input type="number" class="form-control" placeholder="Temporada Atual" name="current-season" id="current-season" required data-validation-required-message="Por favor digite o n�mero da temporada atual.">
	                            <p class="help-block text-danger"></p>
	                        </div>
	                    </div>
                        <br>
                        <div id="success"></div>
                        <div class="row">
                            <div class="form-group col-xs-12">
                                <button name="operation" value="add" type="submit" class="btn btn-success btn-lg">Adicionar</button>

	                            <button name="operation" value="edit" type="submit" class="btn btn-warning btn-lg">Editar</button>
	                        
	                        </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </section>
    
    <!-- Listing TV Shows Section -->
    <section id="tvshow-listing">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2>Lista de S�ries</h2>
                    <hr class="star-primary">
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                <table border="1" class="table table-striped">
	                <thead>
	                  <tr>
	                  	<th>C�digo</th>
	                    <th>T�tulo</th>
	                    <th>Categoria</th>
	                    <th>Pa�s</th>
	                    <th>Tamanho do Epis�dio</th>
	                    <th>N�mero de Epis�dios</th>
	                    <th>Temporada Atual</th>
	                    <th></th>
	                  </tr>
	                </thead>
	                <tbody>
	                <form>
		                <c:forEach items="${requestScope.list}" var="tvshow">
	                		<tr>
	                			<td><c:out value="${tvshow.code}"></c:out></td>
	                			<td><c:out value="${tvshow.title}"></c:out></td>
	                			<td><c:out value="${tvshow.category}"></c:out></td>
	                			<td><c:out value="${tvshow.country}"></c:out></td>
	                			<td><c:out value="${tvshow.episodeLength}"></c:out></td>
	                			<td><c:out value="${tvshow.numberOfEpisodes}"></c:out></td>
	                			<td><c:out value="${tvshow.currentSeason}"></c:out></td>
	                			<input type="hidden" name="code" value='<c:out value="${tvshow.code}"></c:out>' />
	                			<td><button name="operation" value="delete" type="submit"><span class="glyphicon glyphicon-remove" aria-hidden="true" style="font-size: small;"></span></button></td>
	                		</tr>
	                	</c:forEach>
                	</form>
	                </tbody>
              </table>
                </div>
            </div>
        </div>
    </section>

    <!-- Footer -->
    <footer class="text-center">
        <div class="footer-above">
            <div class="container">
                <div class="row">
                    <div class="footer-col col-md-4">
                        <h3>Localiza��o</h3>
                        <p>Universidade Federal de Goi�s<br>Goi�nia, Goi�s - Brasil</p>
                    </div>
                    <div class="footer-col col-md-4">
                        <h3>Social</h3>
                        <ul class="list-inline">
                            <li>
                                <a href="#" class="btn-social btn-outline"><i class="fa fa-fw fa-facebook"></i></a>
                            </li>
                            <li>
                                <a href="#" class="btn-social btn-outline"><i class="fa fa-fw fa-google-plus"></i></a>
                            </li>
                            <li>
                                <a href="#" class="btn-social btn-outline"><i class="fa fa-fw fa-twitter"></i></a>
                            </li>
                            <li>
                                <a href="#" class="btn-social btn-outline"><i class="fa fa-fw fa-linkedin"></i></a>
                            </li>
                            <li>
                                <a href="#" class="btn-social btn-outline"><i class="fa fa-fw fa-dribbble"></i></a>
                            </li>
                        </ul>
                    </div>
                    <div class="footer-col col-md-4">
                        <h3>Sobre o Site</h3>
                        <p>Cadastro de s�ries � um site voltado a cadastrar informa��es b�sicas de s�ries.</p>
                    </div>
                </div>
            </div>
        </div>
        <div class="footer-below">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        Copyright &copy; Cadastro de S�ries 2016
                    </div>
                </div>
            </div>
        </div>
    </footer>

    <!-- Scroll to Top Button (Only visible on small and extra-small screen sizes) -->
    <div class="scroll-top page-scroll visible-xs visible-sm">
        <a class="btn btn-primary" href="#page-top">
            <i class="fa fa-chevron-up"></i>
        </a>
    </div>

    
    <!-- jQuery -->
    <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>

    <!-- Plugin JavaScript -->
    <script src="http://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>
    <script src="js/classie.js"></script>
    <script src="js/cbpAnimatedHeader.js"></script>

    <!-- Contact Form JavaScript -->
    <script src="js/jqBootstrapValidation.js"></script>
    <script src="js/contact_me.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="js/freelancer.js"></script>

</body>

</html>
