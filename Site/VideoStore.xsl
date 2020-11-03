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
                <link rel="stylesheet" type="text/css" href="VideoStore.css"/>
                <title>VideoStore.xsl</title>
            </head>
            <body>
                
                <!--1. New Releases-->
                <h2>New Releases</h2>
                    
                <table>
                    <tr>
                        <th>Movie Title</th>
                        <th>Product ID</th>
                        <th>Description</th>
                        <th>Genre</th>
                        <th>Quantity</th>
                        <th>Price</th>
                    </tr>
                    <xsl:apply-templates select="/videoStore/movies/movie/newReleases/.."/>
                </table>
                
                <!--2. Classics-->
                <h2>Classic Movies</h2>
                
                <table>
                    <tr>
                        <th>Movie Title</th>
                        <th>Product ID</th>
                        <th>Description</th>
                        <th>Genre</th>
                        <th>Quantity</th>
                        <th>Price</th>
                    </tr>
                    <xsl:apply-templates select="/videoStore/movies/movie/classics/.."/>
                </table>
  
                
                <!--3. Best Sellers-->
                <h2>Best Sellers</h2>
                
                <table>
                    <tr>
                        <th>Movie Title</th>
                        <th>Product ID</th>
                        <th>Description</th>
                        <th>Genre</th>
                        <th>Quantity</th>
                        <th>Price</th>
                    </tr>
                    <xsl:apply-templates select="/videoStore/movies/movie/bestSellers/.."/>
                </table>
                
                <!--4. Low Stock-->
                <h2 class="lowStock">Low Stock</h2>
                
                <table>
                    <tr>
                        <th>Movie Title</th>
                        <th>Product ID</th>
                        <th>Description</th>
                        <th>Genre</th>
                        <th>Quantity</th>
                        <th>Price</th>
                    </tr>
                    <xsl:apply-templates select="/videoStore/movies/movie/lowStock/.."/>
                </table>
                
            </body>
        </html>
    </xsl:template>
    
    <xsl:template match="movie">
        <tr>
            <td>
                <xsl:value-of select="movieTitle" />
            </td>
            <td>
                <xsl:value-of select="@id" />
            </td>
            <td>
                <xsl:value-of select="description" />
            </td>
            <td>
                <xsl:value-of select="genre" />
            </td>
            <td>
                <xsl:value-of select="quantity" />
            </td>
            <td>
                <xsl:value-of select="price" />
            </td>
        </tr>
    </xsl:template>
    
</xsl:stylesheet>
