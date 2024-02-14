<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:variable name="XMLDocument" select="document('../xml/empresa.xml')" />
	<xsl:template match="/">
		<html>
			<head>
				<title>UD6: Proyecto dirigido a la validación, formateo y transformación de
					documentos XML</title>
				<meta charset="utf-8" />
				<meta name="viewport"
					content="width=device-width, initial-scale=1, user-scalable=no" />
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
							<a href="/xml/plantilla2.xml">Creatividad</a>
							<a href="#">Publicidad</a>
							<a href="../web/contacto.html">Contacto</a>
						</nav>
					</div>
				</header>
				<a href="#menu" class="navPanelToggle">
					<span class="fa fa-bars"></span>
				</a>

				<!-- Main -->
				<section id="main">
					<div class="inner">
						<header>
							<h1>Catálogo de servicios</h1>
						</header>

						<xsl:for-each select="$XMLDocument/empresa//servicio[@codigo='D03']">
							<xsl:variable name="PVP" select="precio * //IVA div 100"/>
							<div class="box centrar-texto">
								<h3>
									<xsl:value-of select="nombre" />
								</h3>
								<p class="precio">
									<sup>€</sup>
									<xsl:value-of select="precio + $PVP"/>
								</p>
								<ul class="lista">
									<li><strong>1</strong> Dolor pulvinar etiam magna etiam.</li>
									<li><strong>5</strong> Dolor pulvinar etiam magna etiam.</li>
									<li><strong>50</strong> Dolor pulvinar etiam magna etiam.</li>
									<li><strong>5,000</strong> Dolor pulvinar etiam magna etiam.</li>
								</ul>
								<a href="#" class="button fit">Más información</a>
							</div>
						</xsl:for-each>
					</div>
				</section>

				<!-- Footer -->
				<footer id="footer">
					<div class="inner">
						<div class="copyright"> © 2024 Julio González Trenard // Aranzazu Main
							García <ul class="icons">
								<li>
									<a href="#" class="icon fa-twitter">
										<span class="label">Twitter</span>
									</a>
								</li>
								<li>
									<a href="#" class="icon fa-facebook">
										<span class="label">Facebook</span>
									</a>
								</li>
								<li>
									<a href="#" class="icon fa-instagram">
										<span class="label">Instagram</span>
									</a>
								</li>
								<li>
									<a href="#" class="icon fa-github">
										<span class="label">Github</span>
									</a>
								</li>
								<li>
									<a href="#" class="icon fa-dribbble">
										<span class="label">Dribbble</span>
									</a>
								</li>
								<li>
									<a href="#" class="icon fa-tumblr">
										<span class="label">Tumblr</span>
									</a>
								</li>
							</ul>
							<xsl:value-of
								select="$XMLDocument//ubicacion" />
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