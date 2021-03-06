<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>{$title} {if $usercp eq true} - Kontrollzentrum {/if} | Social Race Cycling
    </title>
    <link rel="stylesheet" type="text/css" href="css/style.css"/>
	
    {if $title eq 'Kalender'}
    	{include file="01_tpl/internal/calendar-style.tpl"}
    {/if}
    
    {if $title eq 'Profil bearbeiten'}
    	{include file="01_tpl/frontpage/lightbox.tpl"}
    {/if}
    
    <link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon" />

{if $online eq false}    
    
        {include file="01_tpl/frontpage/lightbox.tpl"}
    	
    	<!--{include file="01_tpl/analytics.tpl"}-->
    </head>
    <body>
    <!-- VERSION: Beta 1.0 -->
    {if $title == 'Informationen' OR $title =='Team Dashboard'}                 
    <div id="wrapper">
        <div id="container-toppart"></div>
        <div id="content-middlepart"> 
        <div id="content-toppart"></div> 
    {elseif $title != 'Informationen'}
    <div id="wrapper">
    	
        <div id="container-toppart"></div>
        <div id="container-middlepart">
        <div id="content">
        		{if $title eq "Startseite" OR $title eq "Registrierung"}
        		<div style="float:right;margin-right:40px;padding:10px;margin-top:275px;width:398px;color:#282828;font-size:12px;font-weight:bold;font-family:Arial, Helvetica, sans-serif;height:159px;background-image:url(http://www.socialracecycling.de/images/counter/counter-bg.png);" id="counter">
                	<p style="margin:2px;">Es wurden schon insgesamt</p>
                    <p style="margin:2px;height:50px;overflow:hidden;">{$activities}<img style="margin-bottom:15px;" src="http://www.socialracecycling.de/images/counter/aktivitaeten.png" /></p>
                    <p style="margin:0px;margin-top:-5px;">mit insgesamt</p>
                	<p style="margin:2px;height:50px;overflow:hidden;">{$km}</p>
                    <p style="margin:2px;font-size:13px;">in die Datenbank von Social Race Cycling <img src="http://socialracecycling.de/images/favicon.jpg" height="18"style="margin-top:2px;" /> eingetragen</p>
                    
                </div>
                {/if}
            <div id="text-box">  
            
            
    {/if}

{elseif $online eq 'false'}

	{if  $title!=='Profil bearbeiten'}
		<script type="text/javascript" src="js/jquery-1.6.1.min.js"></script>
        <script type="text/javascript" src="js/JSToolTinotifs.js"></script>
        <script type="text/javascript" src="js/JSToolTip.js"></script>
        <script type="text/javascript" src="jqPlot/jquery.jqplot.js"></script>	
     {/if}
        
        
	{if $title eq 'Dashboard' }
    	{include file="01_tpl/internal/charts-self.tpl"}
    {/if}
    
    {if $title eq 'Profildaten' OR $title =='Profil-Information' }
    	{include file="01_tpl/internal/charts-profile-self.tpl"}
    {/if}
    
    {if $title eq 'Trainingsinformationen'}
    	{include file="01_tpl/internal/charts-user.tpl"}
    {/if}
	<!--{include file="01_tpl/analytics.tpl"}-->
   </head>
<body>
<div id="wrapper">
		{if $usercp eq true}
        <div id="content-headerpart-short">
        {else}
        <div id="content-headerpart">
        {/if}
        <a style="display:block;border:none;height:100px;width:195px;margin-left:110px;margin-top:60px;float:left;" href="home.php" target="_self">
        
        </a>
		<ul id="navigation">
        	<li>
               <a name="Startseite" href="home.php" id="button-home">
               	Startseite
               </a>
           </li>
           <li>
               <a name="Touren" href="tour-menu.php" id="button-touren">
		       	Aktivitäten
		       </a>
		   </li>
		   <li>
		       <a name="Kalender" href="calendar.php" id="button-calendar">
		       	Kalender
		       </a>
		   </li>
			<li>
				<a name="Strecken" href="tracks.php" id="button-tracks">
					Freunde
				</a>
			</li>
			<li>
				<a name="Kontakt" href="contact.php" id="button-contact">
		   		Kontakt
        		</a>
		 	</li>
		</ul>
        </div>	
        
		
  
  		{if $usercp eq true}
        	
        <div id="container-middlepart">
        
        
            <div id="usercp-background-top">
            <h4 id="control-panel">Kontrollzentrum</h4>
            <div id="usercp-background-sidebar">
                <ul id="usercp-navigation">
                    <li class="usercp-navigation-headline">Soziales</li>
                    	<li><a href="usercp-teams.php" class="usercp-navigation-button{if $title eq 'Teams'}-active{/if}">Teams</a></li>	
                        <li><a href="usercp-edit-profile.php" class="usercp-navigation-button{if $title eq 'Profil bearbeiten'}-active{/if}">Profil bearbeiten</a></li>		
                        <li><a href="usercp-profile_self.php" class="usercp-navigation-button{if $title eq 'Profildaten'}-active{/if}">Profil anzeigen</a></li>
                        <li><a href="usercp-mitgliederliste.php" class="usercp-navigation-button{if $title eq 'Mitgliederliste' OR $title eq 'Profil-Information'}-active{/if}">Mitgliederliste</a></li>
                        
                    <li class="usercp-navigation-headline">Einstellungen</li>
                    
                    	<li><a href="usercp-facebook.php" class="usercp-navigation-button{if $title eq 'Facebook'}-active{/if}">Facebook</a></li>
                </ul>
            </div>
            <div id="usercp-background-content">
                <div id="usercp-content-box">
            {else}
                <div id="content-middlepart">
            {/if}
        
        

{/if}
     
