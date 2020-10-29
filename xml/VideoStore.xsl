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
                    
                <table>
                    <tr>
                        <th>Movie Title</th>
                        <th>Description</th>
                        <th>Genre</th>
                        <th>Quantity</th>
                        <th>Price</th>
                    </tr>
                </table>
                <xsl:apply-templates select="/videoStore/movies/movie/newReleases/../movieTitle"/> 
                
                <!--2. Classics-->
                <h2>Classic Movies:</h2>
                <xsl:apply-templates select="/videoStore/movies/movie/classics/../movieTitle"/>   
                
                <!--3. Best Sellers-->
                <h2>Best Sellers:</h2>
                <xsl:apply-templates select="/videoStore/movies/movie/bestSellers/../movieTitle"/>  
                
            </body>
        </html>
    </xsl:template>
    
    <!--1. New Releases-->
    <xsl:template match="movieTitle">
        <td>
            <xsl:value-of select="." />
        </td>
    </xsl:template>
    
    <!--2. Classics-->
    <xsl:template match="movieTitle">
        <td>
            <xsl:value-of select="." />
        </td>
    </xsl:template>
    
    <!--3. Best Sellers-->
    <xsl:template match="movieTitle">
        <td>
            <xsl:value-of select="." />
        </td>
    </xsl:template>

</xsl:stylesheet>
