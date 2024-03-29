<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:variable name="XMLDocument" select="document('../xml/empresa.xml')"/>
	<xsl:template match="/">
		<html lang="es">
			<head>
				<title>UD6: Proyecto dirigido a la validación, formateo y transformación de documentos XML</title>
				<meta charset="utf-8" />
				<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
				<link rel="stylesheet" href="../assets/css/main.css" />
			</head>
			<body>
				
				<!-- Header -->
				<header id="header">
					<div class="inner">
						<a href="../index.html" class="logo">CreativeWave Design Co.</a>
						<nav id="nav">
							<a href="../index.html">Inicio</a>
							<a href="/xml/plantilla4.xml">Servicios</a>
							<a href="/xml/plantilla1.xml">Tecnología</a>
							<a href="#">Creatividad</a>
							<a href="/xml/plantilla3.xml">Publicidad</a>
							<a href="../web/contacto.html">Contacto</a>								
						</nav>
					</div>
				</header>
				<a href="#menu" class="navPanelToggle"><span class="fa fa-bars"></span></a>
				
				<!-- Main -->
				<section id="main" >
					<div class="inner">
						<header>
							<h1>Catálogo de servicios</h1>
						</header>						
						<!-- Creación de la tabla y fila de títulos -->
						<div class="table-wrapper">
							<table>
								<thead>
									<tr>
										<th></th>
										<th>Nombre</th>
										<th>Descripción</th>
										<th>Precio</th>
										<th>Precio total</th>
										<th>Página web</th>
									</tr>
								</thead>
								<tbody>
									<!-- Bucle y definición de variables para los servicios con código D02 -->
									<xsl:for-each select="$XMLDocument/empresa//servicio[@codigo='D02']">
										<xsl:variable name="rutaImagen" select="imagen"/>
										<xsl:variable name="PVP" select="precio * //IVA div 100"/>										
										<tr>
											<td>
												<!-- Uso de la variable $rutaImagen para coger cada ruta del xml -->
												<a href="{concat('../images/',$rutaImagen)}" class="image left" target="_blank">
													<img src="{concat('../images/',$rutaImagen)}" alt=""/>
												</a>
											</td>
											<td><xsl:value-of select="nombre"/></td>
											<td>Descripción del producto:
												<ul><p><xsl:value-of select="descripcion"/></p></ul>												
											</td>
											<td><xsl:value-of select="precio"/><xsl:text>€</xsl:text></td>
											<td><xsl:value-of select="precio + $PVP"/><xsl:text>€</xsl:text></td>
											<td><a href="{web}" class="button fit" target="_blank">Más información</a></td>
										</tr>
									</xsl:for-each>
								</tbody>
								<tfoot>
									<tr>
										<td colspan="4">Todos los productos de insuperable calidad</td>		
									</tr>
								</tfoot>
							</table>
						</div>
						
					</div>
				</section>
				
				<!-- Footer -->
				<footer id="footer">
					<div class="inner">
						<div class="copyright">
							© 2024 Julio González Trenard // Aranzazu Main García
							<ul class="icons">
								<li><a href="#" class="icon fa-twitter"><span class="label">Twitter</span></a></li>
								<li><a href="#" class="icon fa-facebook"><span class="label">Facebook</span></a></li>
								<li><a href="#" class="icon fa-instagram"><span class="label">Instagram</span></a></li>
								<li><a href="#" class="icon fa-github"><span class="label">Github</span></a></li>
								<li><a href="#" class="icon fa-dribbble"><span class="label">Dribbble</span></a></li>
								<li><a href="#" class="icon fa-tumblr"><span class="label">Tumblr</span></a></li>
							</ul>
							<xsl:value-of select="$XMLDocument//ubicacion"/>
						</div>
					</div>
				</footer>
				
				<!-- Scripts -->
				<script src="../assets/js/jquery.min.js"></script>
				<script src="../assets/js/skel.min.js"></script>
				<script src="../assets/js/util.js"></script>
				<script src="../assets/js/main.js"></script>
				
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>