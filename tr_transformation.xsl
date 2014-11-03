<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    
    <xsl:output method='xhtml' indent='yes' doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd"/>

    <xsl:template match='/'>
        <html>
            <head><title>turkish</title></head>
            <body>
                <xsl:apply-templates select='//song'/>
            </body>
        </html>
    </xsl:template>
    
    <xsl:template match='song'>
        <xsl:apply-templates></xsl:apply-templates>
    </xsl:template>
    
    <xsl:template match='metadata'>
        <xsl:apply-templates/>
    </xsl:template>
    <xsl:template match='artist'>
        <xsl:apply-templates/>
    </xsl:template>
    <xsl:template match='artist' mode='politicalA'>
        <xsl:apply-templates select='@politicalA'/>
    </xsl:template>
    <xsl:template match='title'>
        <xsl:apply-templates/>
    </xsl:template>
    <xsl:template match='album'>
        <xsl:apply-templates/>
    </xsl:template>
    <xsl:template match='year'>
        <xsl:apply-templates/>
    </xsl:template>
    <xsl:template match='source'>
        <xsl:apply-templates/>
    </xsl:template>
    
    <xsl:template match='line'>
        <xsl:apply-templates/>
    </xsl:template>
    <xsl:template match='stanza'>
        <p><xsl:apply-templates/></p>
    </xsl:template>
    <xsl:template match='stanza' mode='type'>
        <xsl:apply-templates select='@type'/>
    </xsl:template>
    
    <xsl:template match='address'>
        <span class='address'><xsl:apply-templates/></span>
    </xsl:template>
    <xsl:template match='address' mode='formality'>
        <xsl:apply-templates select='@formality'/>
    </xsl:template>
    <xsl:template match='address' mode='pos'>
        <xsl:apply-templates select='@pos'/>
    </xsl:template>
    <xsl:template match='address' mode='evid'>
        <xsl:apply-templates select='@evid'/>
    </xsl:template>
    <xsl:template match='address' mode='mood'>
        <xsl:apply-templates select='@mood'/>
    </xsl:template>
    <xsl:template match='address' mode='tense'>
        <xsl:apply-templates select='@tense'/>
    </xsl:template>
    <xsl:template match='address' mode='aspect'>
        <xsl:apply-templates select='@aspect'/>
    </xsl:template>
    <xsl:template match='address' mode='voice'>
        <xsl:apply-templates select='@voice'/>
    </xsl:template>
    <xsl:template match='addressee'>
        <span class='addressee'><xsl:apply-templates/></span>
    </xsl:template>
    <xsl:template match='addressee' mode='atype'>
        <xsl:apply-templates select='@atype'/>
    </xsl:template>
    <xsl:template match='place'>
        <span class='place'><xsl:apply-templates/></span>
    </xsl:template>
    <xsl:template match='journey'>
        <span class='journey'><xsl:apply-templates/></span>
    </xsl:template>
    <xsl:template match='journey' mode='where'>
        <xsl:apply-templates select='@where'/>
    </xsl:template>
    <xsl:template match='nature'>
        <span class='nature'><xsl:apply-templates/></span>
    </xsl:template>
    <xsl:template match='nationalism'>
        <span class='nationalism'><xsl:apply-templates/></span>
    </xsl:template>
    <xsl:template match='nationalism' mode='approve'>
        <xsl:apply-templates select='@approve'/>
    </xsl:template>
    <xsl:template match='violence'>
        <span class='violence'><xsl:apply-templates/></span>
    </xsl:template>
    <xsl:template match='target'>
        <span class='target'><xsl:apply-templates/></span>
    </xsl:template>
    <xsl:template match='neglect'>
        <span class='neglect'><xsl:apply-templates/></span>
    </xsl:template>
    <xsl:template match='death'>
        <span class='death'><xsl:apply-templates/></span>
    </xsl:template>
    <xsl:template match='econ'>
        <span class='econ'><xsl:apply-templates/></span>
    </xsl:template>
    <xsl:template match='future'>
        <span class='future'><xsl:apply-templates/></span>
    </xsl:template>
    <xsl:template match='past'>
        <span class='past'><xsl:apply-templates/></span>
    </xsl:template>
    <xsl:template match='past' mode='when'>
        <xsl:apply-templates select='@when'/>
    </xsl:template>
    <xsl:template match='narrator'>
        <span class='narrator'><xsl:apply-templates/></span>
    </xsl:template>
    <xsl:template match='narrator' mode='number'>
        <xsl:apply-templates select='@number'/>
    </xsl:template>
    <xsl:template match='class'>
        <span class='class'><xsl:apply-templates/></span>
    </xsl:template>
    <xsl:template match='class' mode='classtype'>
        <xsl:apply-templates select='@classtype'/>
    </xsl:template>
    <xsl:template match='warning'>
        <span class='warning'><xsl:apply-templates/></span>
    </xsl:template>
    <xsl:template match='wealth'>
        <span class='wealth'><xsl:apply-templates/></span>
    </xsl:template>
    <xsl:template match='poverty'>
        <span class='poverty'><xsl:apply-templates/></span>
    </xsl:template>
    <xsl:template match='crime'>
        <span class='crime'><xsl:apply-templates/></span>
    </xsl:template>
    <xsl:template match='family'>
        <span class='family'><xsl:apply-templates/></span>
    </xsl:template>
    <xsl:template match='friendship'>
        <span class='friendship'><xsl:apply-templates/></span>
    </xsl:template>
    <xsl:template match='youth'>
        <span class='youth'><xsl:apply-templates/></span>
    </xsl:template>
    <xsl:template match='love'>
        <span class='love'><xsl:apply-templates/></span>
    </xsl:template>
    <xsl:template match='love' mode='l'>
        <xsl:apply-templates select='@l'/>
    </xsl:template>
    
    <xsl:template match='break'>
        <xsl:apply-templates/>
    </xsl:template>
    <xsl:template match='break' mode='instr'>
        <xsl:apply-templates select='@instr'/>
    </xsl:template>
    <xsl:template match='break' mode='scale'>
        <xsl:apply-templates select='@scale'/>
    </xsl:template>

    <xsl:template match='poliWord'>
        <span class='poliWord'><xsl:apply-templates/></span>
    </xsl:template>
    <xsl:template match='poliWord' mode='rl'>
        <xsl:apply-templates select='@rl'/>
    </xsl:template>
    <xsl:template match='allah'>
        <span class='allah'><xsl:apply-templates/></span>
    </xsl:template>
    <xsl:template match='m'>
        <span class='m'><xsl:apply-templates/></span>
    </xsl:template>
    <xsl:template match='aşık'>
        <span class='aşık'><xsl:apply-templates/></span>
    </xsl:template>
    <xsl:template match='curse'>
        <span class='curse'><xsl:apply-templates/></span>
    </xsl:template>
    <xsl:template match='degree'>
        <span class='degree'><xsl:apply-templates/></span>
    </xsl:template>
    <xsl:template match='sac'>
        <span class='sac'><xsl:apply-templates/></span>
    </xsl:template>
    <xsl:template match='sarc'>
        <span class='sarc'><xsl:apply-templates/></span>
    </xsl:template>
    <xsl:template match='critAtt'>
        <span class='critAtt'><xsl:apply-templates/></span>
    </xsl:template>
    <xsl:template match='emp'>
        <span class='emp'><xsl:apply-templates/></span>
    </xsl:template>
    <xsl:template match='emp' mode='empDegree'>
        <xsl:apply-templates select='@empDegree'/>
    </xsl:template>
    <xsl:template match='islam'>
        <span class='islam'><xsl:apply-templates/></span>
    </xsl:template>
    <xsl:template match='islam' mode='i'>
        <xsl:apply-templates select='@i'/>
    </xsl:template>
    <xsl:template match='economic'>
        <span class='economic'><xsl:apply-templates/></span>
    </xsl:template>
    <xsl:template match='economic' mode='negOrPos'>
        <xsl:apply-templates select='@negOrPos'/>
    </xsl:template>
    <xsl:template match='war'>
        <span class='war'><xsl:apply-templates/></span>
    </xsl:template>
    <xsl:template match='military'>
        <span class='military'><xsl:apply-templates/></span>
    </xsl:template>
    <xsl:template match='military' mode='forNot'>
        <xsl:apply-templates select='@forNot'/>
    </xsl:template>
    <xsl:template match='coup'>
        <span class='coup'><xsl:apply-templates/></span>
    </xsl:template>
    <xsl:template match='coup' mode='whichCoup'>
        <xsl:apply-templates select='@whichCoup'/>
    </xsl:template>
    <xsl:template match='coup' mode='proCon'>
        <xsl:apply-templates select='@proCon'/>
    </xsl:template>
    <xsl:template match='communism'>
        <span class='communism'><xsl:apply-templates/></span>
    </xsl:template>
    <xsl:template match='communism' mode='wantC'>
        <xsl:apply-templates select='@wantC'/>
    </xsl:template>
    <xsl:template match='drugs'>
        <span class='drugs'><xsl:apply-templates/></span>
    </xsl:template>
    <xsl:template match='drugs' mode='take'>
        <xsl:apply-templates select='@take'/>
    </xsl:template>
    <xsl:template match='morals'>
        <span class='morals'><xsl:apply-templates/></span>
    </xsl:template>
    <xsl:template match='morals' mode='trad'>
        <xsl:apply-templates select='@trad'/>
    </xsl:template>
    <xsl:template match='race'>
        <span class='race'><xsl:apply-templates/></span>
    </xsl:template>
    <xsl:template match='race' mode='eq'>
        <xsl:apply-templates select='@eq'/>
    </xsl:template>
</xsl:stylesheet>