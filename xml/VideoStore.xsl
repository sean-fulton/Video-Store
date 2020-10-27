<?xml version="1.0"?>

<!--
    Document   : VideoStore.xsl
    Created on : 23 October 2020, 18:40
    Author     : Cree
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>

    <!-- TODO customize transformation rules 
         syntax recommendation http://www.w3.org/TR/xslt 
    -->
    <xsl:template match="/">
        <html>
            <head>
                <title>VideoStore.xsl</title>
            </head>
            <body>
                <!--1. New Releases-->
                <h2>New Releases:</h2>
                <xsl:apply-templates select="/videoStore/movies/newReleases/movie/movieTitle"/>
                
                <!--2. Classics-->
                <h2>Classic Movies:</h2>
                <xsl:apply-templates select="/videoStore/movies/classics/movie/movieTitle"/>   
                
                <!--3. Best Sellers-->
                <h2>Best Sellers:</h2>
                <xsl:apply-templates select="/videoStore/movies/bestSellers/movie/movieTitle"/>  
                
            </body>
        </html>
    </xsl:template>
    
    <!--1. New Releases-->
    <xsl:template match="movieTitle">
        <p>
            <xsl:value-of select="." />
        </p>
    </xsl:template>
    
    <!--2. Classics-->
    <xsl:template match="movieTitle">
        <p>
            <xsl:value-of select="." />
        </p>
    </xsl:template>
    
    <!--3. Best Sellers-->
    <xsl:template match="movieTitle">
        <p>
            <xsl:value-of select="." />
        </p>
    </xsl:template>

</xsl:stylesheet>
