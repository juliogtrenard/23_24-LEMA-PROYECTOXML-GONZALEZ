<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:variable name="XMLDocument" select="document('../xml/empresa.xml')"/>
	<xsl:template match="/">
	
		<html>
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
                            <a href="#">Servicios</a>
							<a href="/xml/plantilla1.xml">Tecnología</a>
							<a href="/xml/plantilla2.xml">Creatividad</a>
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
							<h1>Catálogo de todos los servicios</h1>
						</header>
						
						<div id="div1">
                            <table class="transf-4">
                                <caption>TECNOLOGÍA</caption>
                                <tr>
                                    <th>Imagen</th>
                                    <th>Servicio</th>
                                    <th>Precio</th>
                                    <th>PVP</th>
                                    <th>Página web</th>
                                </tr>
                                <xsl:for-each select="$XMLDocument/empresa//servicio[@codigo='D01']">
                                    <xsl:sort select="precio"/>
                                    <xsl:variable name="PVP" select="precio * //IVA div 100"/>
                                    <xsl:variable name="descuento" select="precio * 0.1"/>
                                    <xsl:variable name="rutaImagen" select="imagen"/>
                                    <tr>
                                        <td>
                                            <a href="{concat('../images/',$rutaImagen)}" class="image fit" target="_blank">
                                                <img src="{concat('../images/',$rutaImagen)}" alt=""/>
                                            </a>	
                                        </td>
                                        <td>
                                            <xsl:value-of select="nombre"/>
                                            <xsl:choose>
                                                <xsl:when test="precio + $PVP &gt; 1000"> <!-- Si el precio es mayor a 200 está en oferta -->                    
                                                    <span> OFERTA.</span>
                                                </xsl:when>
                                            </xsl:choose>
                                        </td>
                                        <td>
                                            <xsl:value-of select="precio"/>                                    
                                        </td>
                                        <td>
                                            <xsl:choose>
                                                <xsl:when test="precio + $PVP &gt; 1000"> <!-- Si el precio es mayor a 200 está en oferta -->                    
                                                    <xsl:value-of select="(precio + $PVP) - $descuento"/>
                                                </xsl:when>
                                                <xsl:otherwise>
													<xsl:value-of select="precio + $PVP"/>
												</xsl:otherwise>
                                            </xsl:choose> <!-- Sumarle el iva calculado en la variable -->
                                        </td>
                                        <td>
                                            <a href="{web}" target="_blank">
                                                Más información
                                            </a>
                                        </td>
                                    </tr>  
                                </xsl:for-each>
                            </table>
                        </div>
        
                        <div id="div2">
                            <table class="transf-4">
                                <caption>CREATIVIDAD</caption>
                                <tr>
                                    <th>Imagen</th>
                                    <th>Servicio</th>
                                    <th>Precio</th>
                                    <th>PVP</th>
                                    <th>Página web</th>
                                </tr>
                                <xsl:for-each select="$XMLDocument/empresa//servicio[@codigo='D02']">
                                    <xsl:sort select="precio"/>
                                    <xsl:variable name="PVP" select="precio * //IVA div 100"/>
                                    <xsl:variable name="descuento" select="precio * 0.1"/>
                                    <xsl:variable name="rutaImagen" select="imagen"/>
                                    <tr>
                                        <td>
                                            <a href="{concat('../images/',$rutaImagen)}" class="image fit" target="_blank">
                                                <img src="{concat('../images/',$rutaImagen)}" alt=""/>
                                            </a>	
                                        </td>
                                        <td>
                                            <xsl:value-of select="nombre"/>
                                            <xsl:choose>
                                                <xsl:when test="precio + $PVP &gt; 1000"> <!-- Si el precio es mayor a 200 está en oferta -->                    
                                                    <span> OFERTA.</span>
                                                </xsl:when>
                                            </xsl:choose>
                                        </td>
                                        <td>
                                            <xsl:value-of select="precio"/>
                                        </td>
                                        <td>
                                            <xsl:choose>
                                                <xsl:when test="precio + $PVP &gt; 1000"> <!-- Si el precio es mayor a 200 está en oferta -->                    
                                                    <xsl:value-of select="(precio + $PVP) - $descuento"/>
                                                </xsl:when>
                                                <xsl:otherwise>
													<xsl:value-of select="precio + $PVP"/>
												</xsl:otherwise>
                                            </xsl:choose> <!-- Sumarle el iva calculado en la variable -->
                                        </td>
                                        <td>
                                            <a href="{web}" target="_blank">
                                                Más información
                                            </a>
                                        </td>
                                    </tr>  
                                </xsl:for-each>
                            </table>
                        </div>
        
                        <div id="div3">
                            <table class="transf-4">
                                <caption>PUBLICIDAD</caption>
                                <tr>
                                    <th>Imagen</th>
                                    <th>Servicio</th>
                                    <th>Precio</th>
                                    <th>PVP</th>
                                    <th>Página web</th>
                                </tr>
                                <xsl:for-each select="$XMLDocument/empresa//servicio[@codigo='D03']">
                                    <xsl:sort select="precio"/>
                                    <xsl:variable name="PVP" select="precio * //IVA div 100"/>
                                    <xsl:variable name="descuento" select="precio * 0.1"/>
                                    <xsl:variable name="rutaImagen" select="imagen"/>
                                    <tr>
                                        <td>
                                            <a href="{concat('../images/',$rutaImagen)}" class="image fit" target="_blank">
                                                <img src="{concat('../images/',$rutaImagen)}" alt=""/>
                                            </a>	
                                        </td>
                                        <td>
                                            <xsl:value-of select="nombre"/>
                                            <xsl:choose>
                                                <xsl:when test="precio + $PVP &gt; 1000"> <!-- Si el precio es mayor a 200 está en oferta -->                    
                                                    <span> OFERTA.</span>
                                                </xsl:when>
                                            </xsl:choose>
                                        </td>
                                        <td>
                                            <xsl:value-of select="precio"/>
                                        </td>
                                        <td>
                                            <xsl:choose>
                                                <xsl:when test="precio + $PVP &gt; 1000"> <!-- Si el precio es mayor a 200 está en oferta -->                    
                                                    <xsl:value-of select="(precio + $PVP) - $descuento"/>
                                                </xsl:when>
                                                <xsl:otherwise>
													<xsl:value-of select="precio + $PVP"/>
												</xsl:otherwise>
                                            </xsl:choose> <!-- Sumarle el iva calculado en la variable -->
                                        </td>
                                        <td>
                                            <a href="{web}" target="_blank">
                                                Más información
                                            </a>
                                        </td>
                                    </tr>  
                                </xsl:for-each>
                            </table>
                        </div>
					</div>
                    <h3 class="total-productos">Total de servicios: <xsl:value-of select="count($XMLDocument//servicio)"/></h3>
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