<?xml version="1.0" encoding="UTF-8"?>

<!--
 
 DLRStoryboardManager.xsl
 DLRUIKit
 
 Created by Nate Walczak on 2/12/15.
 Copyright (c) 2015 Detroit Labs, LLC. All rights reserved.
 
 -->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="text" omit-xml-declaration="yes" indent="no"/>
    <xsl:strip-space elements="*"/>
    
    <xsl:template match="/">
        <xsl:text>//&#xa;</xsl:text>
        
        <xsl:text>//  DLRStoryboardManager+</xsl:text>
        <xsl:value-of select="$storyboard" />
        <xsl:text>.m&#xa;</xsl:text>
        
        <xsl:text>//&#xa;&#xa;</xsl:text>
        
        <xsl:text>#import "DLRStoryboardManager.h"&#xa;&#xa;</xsl:text>
        
        <xsl:call-template name="import" />
        
        <xsl:text>&#xa;</xsl:text>
        
        <xsl:text>static NSString * const kStoryboardName = @"</xsl:text>
        <xsl:value-of select="$storyboard" />
        <xsl:text>";&#xa;&#xa;</xsl:text>
        
        <xsl:text>@interface DLRStoryboardManager (</xsl:text>
        <xsl:value-of select="$storyboard" />
        <xsl:text>)&#xa;&#xa;</xsl:text>
        
        <xsl:text>@end&#xa;&#xa;</xsl:text>
        
        <xsl:text>@implementation DLRStoryboardManager (</xsl:text>
        <xsl:value-of select="$storyboard" />
        <xsl:text>)&#xa;&#xa;</xsl:text>
        
        <xsl:text>+ (void)load {&#xa;</xsl:text>
        
        <xsl:call-template name="register" />
        
        <xsl:text>}&#xa;&#xa;</xsl:text>
        
        <xsl:text>@end&#xa;</xsl:text>
    </xsl:template>
    
    <xsl:template name="import">
        <xsl:for-each select="//viewController[@storyboardIdentifier = @customClass]">
            
            <xsl:sort select="@storyboardIdentifier"/>
            
            <xsl:text>#import "</xsl:text>
            <xsl:value-of select="@storyboardIdentifier" />
            <xsl:text>.h"&#xa;</xsl:text>
            
        </xsl:for-each>
    </xsl:template>
    
    <xsl:template name="register">
        <xsl:for-each select="//viewController[@storyboardIdentifier = @customClass]">
            
            <xsl:sort select="@storyboardIdentifier"/>
            
            <xsl:text>    [self registerStoryboardName:kStoryboardName withStoryboardIdentifier:NSStringFromClass([</xsl:text>
            <xsl:value-of select="@storyboardIdentifier" />
            <xsl:text> class])];&#xa;</xsl:text>
            
        </xsl:for-each>
    </xsl:template>
    
</xsl:stylesheet>
