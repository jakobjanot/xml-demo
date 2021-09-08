<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:output indent="true" method="html" />

    <xsl:template match="restaurant">
        <html>
            <title><xsl:value-of select="name" /></title>
            <meta charset="UTF-8"/>
            <meta name="viewport" content="width=device-width, initial-scale=1"/>
            <link rel="stylesheet" href="./style.css"/>
            <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Amatic+SC"/>
            <body>
                <header class="bgimg display-container grayscale-min" id="home">
                    <xsl:apply-templates select="name" />
                    <xsl:apply-templates select="opening-hours" />
                </header>

                <xsl:apply-templates/>
                
                <footer>
                    <xsl:apply-templates select="contact" />
                </footer>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="menu">
        <div class="container padding-64 xxlarge" id="menu">
            <div class="content">
                <h1 class="center jumbo" style="margin-bottom:64px">THE MENU</h1>
                <xsl:apply-templates />
            </div>
        </div>
    </xsl:template>

    <xsl:template match="pizza">
        <div id="Pizza" class="container menu padding-32 white">
            <h1><b>Margherita</b> <span class="right tag round">$12.50</span></h1>
            <p>Fresh tomatoes, fresh mozzarella, fresh basil</p>
        </div>
    </xsl:template>

    <xsl:template match="restaurant/opening-hours">
        <div class="display-bottomleft padding">
            <xsl:apply-templates select="opening-hours"/>
        </div>
    </xsl:template>

    <xsl:template match="restaurant/opening-hours">
        <div class="display-bottomleft padding">
            <xsl:apply-templates select="opening-hours"/>
        </div>
    </xsl:template>

    <xsl:template match="restaurant/contact">        
        <div class="container padding-64 xlarge">
            <div class="content">
                <h1 class="center jumbo" style="margin-bottom:64px">Contact</h1>
                <p>Find us at some address at some place or call us at 05050515-122330</p>
            </div>
        </div>
    </xsl:template>
</xsl:stylesheet>