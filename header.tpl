<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="{$charset}" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="icon" href="{$WEB_ROOT}/templates/{$template}/favicon.ico">
    <title>{if $kbarticle.title}{$kbarticle.title} - {/if}{$pagetitle} - {$companyname}</title>

    {include file="$template/includes/head.tpl"}

    {$headoutput}

</head>
<body data-phone-cc-input="{$phoneNumberInputStyle}" {if $loginpage eq 1 or $templatefile eq "clientregister"}class="fullpage"{/if}>

    <div class="preloader"><!-- start preloader -->
        <div class="preloader-container">
            <svg version="1.1" id="L5" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 100 100" enable-background="new 0 0 0 0" xml:space="preserve">
                <circle fill="#675cda" stroke="none" cx="6" cy="50" r="6">
                    <animateTransform attributeName="transform" dur="1s" type="translate" values="0 15 ; 0 -15; 0 15" repeatCount="indefinite" begin="0.1" />
                </circle>
                <circle fill="#675cda" stroke="none" cx="30" cy="50" r="6">
                    <animateTransform attributeName="transform" dur="1s" type="translate" values="0 10 ; 0 -10; 0 10" repeatCount="indefinite" begin="0.2" />
                </circle>
                <circle fill="#675cda" stroke="none" cx="54" cy="50" r="6">
                    <animateTransform attributeName="transform" dur="1s" type="translate" values="0 5 ; 0 -5; 0 5" repeatCount="indefinite" begin="0.3" />
                </circle>
            </svg>
            <span>loading</span>
        </div>
    </div><!-- end preloader -->
	
{$headeroutput}
{if $loginpage eq 0 and $templatefile ne "clientregister"}
<div id="coodiv-header" class="d-flex mx-auto flex-column {if $templatefile == 'homepage'}{else}subpages-header{/if}"><!-- start header -->
        <div class="bg_overlay_header"><div class="bg-img-header-new-standard">&nbsp;</div></div>
        <!-- Fixed navbar -->
		<div class="whmcs-top-header-coodiv">
		<div class="container">
		<ul class="top-header-right-nav">
		<li><i class="bredhicon-chat-inv"></i> support@geekohost.com</li>
		</ul>
		
		<ul class="top-nav">
            {if $languagechangeenabled && count($locales) > 1}
                <li>
                    <a href="#" class="choose-language whmcs-top-header-coodiv-link" data-toggle="popover" id="languageChooser">
					<i class="bredhicon-location-inv"></i>
					<span>{$activeLocale.localisedName}</span>
					</a>
                    <div id="languageChooserContent" class="hidden">
                        <ul>
                            {foreach $locales as $locale}
                                <li>
                                    <a href="{$currentpagelinkback}language={$locale.language}">{$locale.localisedName}</a>
                                </li>
                            {/foreach}
                        </ul>
                    </div>
                </li>
            {/if}
            {if $loggedin}
             
            {else}
                {if $condlinks.allowClientRegistration}
                    <li>
                        <a class="whmcs-top-header-coodiv-link" title="{$LANG.register}" href="{$WEB_ROOT}/register.php">
						<i class="bredhicon-lock-empty"></i>
						<span>{$LANG.register}</span>
						</a>
                    </li>
                {/if}
                <li>
                    <a class="whmcs-top-header-coodiv-link" href="{$WEB_ROOT}/cart.php?a=view">
					<i class="bredhicon-box"></i>
					<span>{$LANG.viewcart}</span>
                    </a>
                </li>
            {/if}
            {if $adminMasqueradingAsClient || $adminLoggedIn}
                <li>
                    <a href="{$WEB_ROOT}/logout.php?returntoadmin=1" class="whmcs-top-header-coodiv-link" data-toggle="tooltip" data-placement="bottom" title="{if $adminMasqueradingAsClient}{$LANG.adminmasqueradingasclient} {$LANG.logoutandreturntoadminarea}{else}{$LANG.adminloggedin} {$LANG.returntoadminarea}{/if}">
                        <i class="bredhicon-doc-alt"></i>
                    </a>
                </li>
            {/if}
        </ul>
		</div>
		</div>

	
        <nav id="coodiv-navbar-header" class="navbar navbar-expand-md fixed-header-layout">
            <div class="container main-header-coodiv-s">
                <a class="navbar-brand" href="{$WEB_ROOT}/index.php"><img src="{$WEB_ROOT}/templates/{$template}/img/header/logo.png" alt="{$companyname}" /></a>
                <button class="navbar-toggle offcanvas-toggle menu-btn-span-bar ml-auto" data-toggle="offcanvas" data-target="#offcanvas-menu-home">
                    <span></span>
                    <span></span>
                    <span></span>
                </button>
                <div class="coodiv-colpass-menu-header navbar-offcanvas" id="offcanvas-menu-home">
                    <ul class="nav navbar-nav ml-auto">
                    <!-- {include file="$template/includes/navbar.tpl" navbar=$primaryNavbar} whmcs default menu -->
					{include file="$template/menu/menu.tpl"}<!-- coodiv custom menu -->
					<li class="nav-item dropdown">
                            <a class="nav-link" role="button" id="webhosting-megamenu" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" href="#">Hosting <span class="nav-new-tag">New</span></a>
                            <div class="dropdown-menu coodiv-dropdown-header web-menu" aria-labelledby="webhosting-megamenu">
                            <ul class="web-hosting-menu-header">
							<li><i class="fas fa-server"></i> <a href="web-hosting.php">shared hosting <span>Lorem ipsum dolor sit amet</span></a></li>
							<li><i class="fab fa-squarespace"></i> <a href="dedicated.php">dedicated hosting <span>Lorem ipsum dolor sit amet</span></a></li>
							<li><i class="fas fa-gamepad"></i> <a href="games.php">games servers <span>Lorem ipsum dolor sit amet</span></a></li>
							<li><i class="fas fa-cloud"></i> <a href="servers.php">cloud servers <span>Lorem ipsum dolor sit amet</span></a></li>
							<li><i class="fab fa-cpanel"></i> <a href="cpanel.php">cPanel Resellers <span>Lorem ipsum dolor sit amet</span></a></li>
							<li><i class="fab fa-teamspeak"></i> <a href="voice.php">voice servers <span>Lorem ipsum dolor sit amet</span></a></li>
							<li><i class="fab fa-wordpress-simple"></i> <a href="wordpress.php">WordPress hosting <span>Lorem ipsum dolor sit amet</span></a></li>
							</ul>
                            </div>
                    </li>
                    </ul>
                </div>
                <ul class="header-user-info-coodiv">
                    <li class="dropdown">
					
                    {if $loggedin}
					{if count($clientAlerts) > 0}
					<span data-toggle="popover" id="accountNotifications" data-placement="bottom" class="infonexsheader">new</span>
					{else}
					<span data-toggle="popover" id="accountNotifications" data-placement="bottom" class="infonexsheader" data-toggle="tooltip" data-placement="left" title="{$LANG.notifications}">0</span>
					{/if}
					<div id="accountNotificationsContent" class="hidden">
                    <ul class="client-alerts">
                    {foreach $clientAlerts as $alert}
                    <li>
                    <a href="{$alert->getLink()}">
                    <i class="fa fa-fw fa-{if $alert->getSeverity() == 'danger'}exclamation-circle{elseif $alert->getSeverity() == 'warning'}warning{elseif $alert->getSeverity() == 'info'}info-circle{else}check-circle{/if}"></i>
                    <div class="message">{$alert->getMessage()}</div>
                    </a>
                    </li>
                    {foreachelse}
                    <li class="none">
                    {$LANG.notificationsnone}
                    </li>
                    {/foreach}
                    </ul>
                    </div>
					{/if}	
					
					<a role="button" id="header-login-dropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" href="#">
					{if $loggedin}
					{$clientsdetails.firstname}
					{else}
					{$LANG.login}
					{/if}
					</a>
                        <!-- user header dropdown -->
                        <div class="dropdown-menu coodiv-dropdown-header user-login-dropdown {if $loggedin}loggged-user-informations{/if}" aria-labelledby="header-login-dropdown">
						{if $loggedin}
						<div class="user-info-header">
						{$clientsdetails.firstname} {$clientsdetails.lastname}
						<span>{$clientsdetails.address1}</span>
						<a href="clientarea.php?action=services" class="services-box-user-info-header">
						<i class="bredhicon-flash"></i>
						<div class="stat">{$clientsstats.productsnumactive}</div>
						<div class="title">{$LANG.navservices}</div>
						</a>
						</div>
						<ul class="user-menu-dro">
							<li><a href="clientarea.php" title="{$LANG.clientareanavdetails}"><i class="bredhicon-lock-empty"></i> {$LANG.clientareanavhome} <i class="fas fa-angle-right"></i></a></li>
							<li><a href="clientarea.php?action=details" title="{$LANG.clientareanavdetails}"><i class="bredhicon-wrench"></i> {$LANG.clientareanavdetails} <i class="fas fa-angle-right"></i></a></li>
							<li><a href="clientarea.php?action=contacts" title="{$LANG.clientareanavdetails}"><i class="bredhicon-book-open"></i> {$LANG.clientareanavcontacts} <i class="fas fa-angle-right"></i></a></li>
							<li><a href="clientarea.php?action=changepw" title="{$LANG.clientareanavdetails}"><i class="bredhicon-key"></i> {$LANG.clientareanavchangepw} <i class="fas fa-angle-right"></i></a></li>
						</ul>
						
						<div class="row liginned-user-menu">
							<a class="top-links col-md-4" data-toggle="tooltip" data-placement="top" title="{$LANG.navtickets}" href="supporttickets.php"  href="#" class="col-md-4 acount-top-header-acc">
							<img src="{$WEB_ROOT}/templates/{$template}/img/svgs/Flag.svg" alt="" />
							</a>
							<a class="top-links col-md-4" data-toggle="tooltip" data-placement="top" title="{$LANG.navinvoices}" href="clientarea.php?action=invoices" href="#" class="col-md-4 acount-top-header-acc np-bord-right">
							<img src="{$WEB_ROOT}/templates/{$template}/img/svgs/Euro.svg" alt="" />
							</a>
							<a class="top-links col-md-4" data-toggle="tooltip" data-placement="top" title="{$LANG.logouttitle}" href="logout.php" class="col-md-4 acount-top-header-acc">
							<img src="{$WEB_ROOT}/templates/{$template}/img/svgs/Locked.svg" alt="" />
							</a>
						</div>
						{else}
                            <form class="user-login-dropdown-form" method="post" action="{$systemurl}dologin.php">
                                <div class="form-group username">
                                    <input type="email" name="username" id="inputEmail" placeholder="{$LANG.enteremail}" class="form-control" autofocus>
                                    <i class="fas fa-at"></i>
                                </div>

                                <div class="form-group password">
                                    <input type="password" name="password" id="inputPassword" class="form-control" placeholder="{$LANG.clientareapassword}" autocomplete="off">
                                    <i class="fas fa-lock"></i>
                                </div>
                                <button data-toggle="tooltip" data-placement="left" title="{$LANG.loginbutton}" class="user-login-dropdown-form-button" type="submit"><i class="fas fa-angle-right"></i></button>
                            </form>
						{/if}
                        </div>
                        <!-- end user header dropdown -->
                    </li>
                </ul>
            </div>
        </nav>
		
		<div class="header-height-clone mb-auto"></div>
		{if $templatefile == 'homepage'}
        <main class="container mb-auto mt-auto">
            <div class="carousel carousel-main">
                <div class="carousel-cell">
                    <h3 class="mt-3 main-header-text-title"><span>{$LANG.homebegin}</span>{$LANG.registerdomain}<small>order you own now</small></h3>
                    <div style="margin: 0;" class="row">
		
					<form method="post" action="domainchecker.php" id="domain-search-header" class="col-md-6">
                        <i class="fas fa-globe"></i>
                        <input type="text" placeholder="{$LANG.findyourdomain}" name="domain" placeholder="{$LANG.exampledomain}" autocapitalize="none" data-toggle="tooltip" data-placement="left" data-trigger="manual" title="{lang key='orderForm.required'}">
                        <span class="inline-button-domain-order">
						{if $transferdomainenabled}
                  	    <button data-toggle="tooltip" data-placement="left" title="{$LANG.domainstransfer}" id="transfer-btn" type="submit" name="transfer" value="{$LANG.domainstransfer}"><i class="fas fa-undo"></i></button>
                  	    {/if}
						{if $registerdomainenabled}
					    <button data-toggle="tooltip" data-placement="left" title="{$LANG.search}" id="search-btn" type="submit" value="{$LANG.search}"><i class="fas fa-search"></i></button>
                  	    {/if}
					  </span>
                    </form>
					</div>
                    <span class="col-md-6 domain-search-header-pricetext">{$LANG.startingat} <b>$0.99/{$LANG.orderForm.year}</b></span>

                    <div class="owl-theme owl-domain-prices-previw col-sm-12 col-md-8 special-for-whmcs">
					
                        {if $registerdomainenabled || $transferdomainenabled}
                            <div class="item header-btn-services-whmcs">
                                <a id="btnBuyADomain" href="domainchecker.php">
                                    <i class="fas fa-globe"></i>
                                    <p>
                                        {$LANG.buyadomain}
                                    </p>
									<img src="{$WEB_ROOT}/templates/{$template}/img/svgs/Arrow.svg" alt=""/>
                                </a>
                            </div>
                        {/if}
                        <div class="item header-btn-services-whmcs color-2">
                            <a id="btnOrderHosting" href="cart.php">
                                <i class="far fa-hdd"></i>
                                <p>
                                    {$LANG.orderhosting}
                                </p>
								<img src="{$WEB_ROOT}/templates/{$template}/img/svgs/Arrow.svg" alt=""/>
                            </a>
                        </div>
                        <div class="item header-btn-services-whmcs color-3">
                            <a id="btnMakePayment" href="clientarea.php">
                                <i class="fas fa-credit-card"></i>
                                <p>
                                    {$LANG.makepayment}
                                </p>
								<img src="{$WEB_ROOT}/templates/{$template}/img/svgs/Arrow.svg" alt=""/>
                            </a>
                        </div>
                        <div class="item header-btn-services-whmcs color-4">
                            <a id="btnGetSupport" href="submitticket.php">
                                <i class="far fa-envelope"></i>
                                <p>
                                    {$LANG.getsupport}
                                </p>
								<img src="{$WEB_ROOT}/templates/{$template}/img/svgs/Arrow.svg" alt=""/>
                            </a>
                        </div>
                    </div>

                </div>

                <div class="carousel-cell">
                    <div class="row hosting-header-slider-cell">
                        <div class="col-md-6">
                            <h3 class="mt-3 main-header-text-title">
	                        <i class="circle-sub-title-header-slider">Dedicated to entrepreneurs</i>
	                        Your kickstarter <br>Hosting
	                        <small>Get on board!</small>
	                        </h3>
                            <p class="text-sub-title-header-slider">Quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>
                            <a class="btn-sub-title-header-slider" href="#">start now</a>
                        </div>
                        <div class="col-md-6 text-center">
                            <img class="hosting-header-slider-cell-img" src="{$WEB_ROOT}/templates/{$template}/img/header/slider/header-bg.png" alt="" />
                        </div>
                    </div>
                </div>
            </div>

            <nav class="nav-header-chage nav--shamso carousel-nav">
                <button class="nav__item nav__item--current carousel-cell" aria-label="Item 1"><span class="nav__item-title">{$LANG.buyadomain}</span></button>
                <button class="nav__item carousel-cell" aria-label="Item 2"><span class="nav__item-title">{$LANG.orderhosting}</span></button>
            </nav>

        </main>
		{else}
		<main class="container mb-auto mt-auto main-header-sub-pages-informations">
		{include file="$template/includes/pageheader.tpl" title=$displayTitle desc=$tagline showbreadcrumb=true}
        </main>

		{/if}
        <div class="mt-auto"></div>
    </div><!-- end header -->

    {include file="$template/includes/verifyemail.tpl"}

    <section id="main-body">
      <div class="container{if $skipMainBodyContainer}-fluid without-padding{/if}">
        <div class="row">

        {if !$inShoppingCart && ($primarySidebar->hasChildren() || $secondarySidebar->hasChildren())}
            {if $primarySidebar->hasChildren() && !$skipMainBodyContainer}
                <div class="col-md-9 pull-md-right">
                </div>
            {/if}
            <div class="col-md-3 pull-md-left sidebar">
                {include file="$template/includes/sidebar.tpl" sidebar=$primarySidebar}
            </div>
        {/if}
        <!-- Container for main page display content -->
        <div class="{if !$inShoppingCart && ($primarySidebar->hasChildren() || $secondarySidebar->hasChildren())}col-md-9 pull-md-right{else}col-xs-12{/if} main-content">
            {if !$primarySidebar->hasChildren() && !$showingLoginPage && !$inShoppingCart && $templatefile != 'homepage' && !$skipMainBodyContainer}
                {include file="$template/includes/pageheader.tpl" title=$displayTitle desc=$tagline showbreadcrumb=true}
            {/if}
{/if}