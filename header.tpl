<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="{$charset}" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
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
<div id="coodiv-header" class="d-flex mx-auto flex-column {if $templatefile == 'homepage'}{else}subpages-header{/if} moon-edition"><!-- start header -->
        <div class="bg_overlay_header">
		<div id="particles-bg"></div>
        <div class="bg-img-header-new-moon">&nbsp;</div>
		{if $templatefile == 'homepage'}
		<span class="header-shapes shape-01"></span>
		<span class="header-shapes shape-02"></span>
		<span class="header-shapes shape-03"></span>
		{/if}
        </div>
        <!-- Fixed navbar -->
		<div class="whmcs-top-header-coodiv">
		<div class="container">
		<ul class="top-header-right-nav">
		<li><i class="bredhicon-chat-inv"></i> support@coodiv.net</li>
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
                <a class="navbar-brand" href="{$WEB_ROOT}/index.php">
				<img class="w-logo" src="{$WEB_ROOT}/templates/{$template}/img/header/logo-w.png" alt="{$companyname}" />
				<img class="b-logo" src="{$WEB_ROOT}/templates/{$template}/img/header/logo.png" alt="{$companyname}" />
				</a>
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
					</a> <span>12365-8448</span>
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
		
		<div class="header-height-clone"></div>
		{if $templatefile == 'homepage'}
        <main class="container mb-auto mt-auto">
            <div class="carousel carousel-main">
                <div class="carousel-cell">
                    <h3 class="mt-3 main-header-text-title"><span>{$LANG.homebegin}</span>{$LANG.registerdomain}</h3>
                    <div style="margin: 0;" class="row">
					<form method="post" action="domainchecker.php" id="domain-search-header" class="col-md-push-2 col-md-8">
					<input type="hidden" name="transfer" />
                        <i class="fas fa-globe"></i>
                        <input type="text" placeholder="{$LANG.findyourdomain}" id="btnTransfer" placeholder="{$LANG.exampledomain}" autocapitalize="none" data-toggle="tooltip" data-placement="left" data-trigger="manual" title="{lang key='orderForm.required'}">
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
                    <span class="col-md-push-2 col-md-8 domain-search-header-pricetext">{$LANG.startingat} <b>$0.99/{$LANG.orderForm.year}</b></span>

                </div>

            </div>
        </main>
		{else}
		<main class="container mb-auto mt-auto main-header-sub-pages-informations">
		{include file="$template/includes/pageheader.tpl" title=$displayTitle desc=$tagline showbreadcrumb=true}
        </main>

		{/if}
        <div class="mt-auto"></div>
    </div><!-- end header -->
	{if $templatefile == 'homepage'}
	<section class="white-bg">
	<div class="container">
	<div class="row justify-content-start futures-version-2">
	
	<div class="col-md-3">
	<div class="futures-version-2-box">
	<i class="bredhicon-share"></i>
	<h5>{$LANG.buyadomain}</h5>
	<p>{$LANG.cartdomainsconfigdesc}</p>
	<div class="text-right">
	<a class="more-btn" href="domainchecker.php">{$LANG.domainsregister}</a>
	</div>
	</div>
	</div>
	
	<div class="col-md-3">
	<div class="futures-version-2-box">
	<i class="bredhicon-download-cloud"></i>
	<h5>{$LANG.orderhosting}</h5>
	<p>{$LANG.cloudSlider.feature01DescriptionTwo}</p>
	<div class="text-right">
	<a class="more-btn" href="cart.php">{$LANG.ordertitle}</a>
	</div>
	</div>
	</div>
	
	<div class="col-md-3">
	<div class="futures-version-2-box">
	<i class="bredhicon-flash"></i>
	<h5>{$LANG.makepayment}</h5>
	<p>{$LANG.masspaydescription}</p>
	<div class="text-right">
	<a class="more-btn" href="clientarea.php">{$LANG.invoicespaynow}</a>
	</div>
	</div>
	</div>
	
	<div class="col-md-3">
	<div class="futures-version-2-box">
	<span class="free-badge"><b></b>{$LANG.orderpaymenttermfree}</span>
	<i class="bredhicon-mic"></i>
	<h5>{$LANG.getsupport}</h5>
	<p>{$LANG.cloudSlider.feature02DescriptionTwo}</p>
	<div class="text-right">
	<a class="more-btn" href="submitticket.php">{$LANG.supportticketspagetitle}</a>
	</div>
	</div>
	</div>

	</div>
    </div>	
	
	</section>
	
    <section class="padding-100-0 position-relative white-bg">
        <div class="container">
            <h5 class="title-default-coodiv-two">check out awesome plans, and order now <span class="mr-tp-20">chose which package is best for you.</span></h5>
            <div class="row justify-content-center">
			<div class="col-md-5 col-md-push-4">
                <div id="monthly-yearly-chenge" class="mr-tp-40 style-two">
                    <a class="active monthly-price"> <span class="change-box-text">billed monthly</span> <span class="change-box"></span></a>
                    <a class="yearli-price"> <span class="change-box-text">billed annually</span></a>
                </div>
				</div>
            </div>

            <div class="row justify-content-start second-pricing-table-container mr-tp-30">
                <div class="col-md-4">
                    <div class="second-pricing-table">
                        <h5 class="second-pricing-table-title">Basic plan <span>mostly for personal using</span></h5>
                        <span class="second-pricing-table-price monthly">
	                    <i class="monthly">$299.99<small>/mo</small></i>
	                    <i class="yearly">$799.99<small>/year</small></i>
	                    </span>

                        <ul class="second-pricing-table-body">
                            <li>2 TB of space</li>
                            <li>unlimited bandwidth</li>
                            <li>full backup systems</li>
                            <li>free domain</li>
                            <li class="not-chacked">unlimited database</li>
                        </ul>

                        <a class="second-pricing-table-button" href="#">next setup</a>

                    </div>
                </div>

                <div class="col-md-4">
                    <div class="second-pricing-table">
                        <h5 class="second-pricing-table-title">Expert plan <span>mostly for personal using</span></h5>
                        <span class="second-pricing-table-price monthly">
	                    <i class="monthly">$399.99<small>/mo</small></i>
	                    <i class="yearly">$899.99<small>/year</small></i>
	                    </span>

                        <ul class="second-pricing-table-body">
                            <li>2 TB of space</li>
                            <li>unlimited bandwidth</li>
                            <li>full backup systems</li>
                            <li>free domain</li>
                            <li class="not-chacked">unlimited database</li>
                        </ul>

                        <a class="second-pricing-table-button" href="#">next setup</a>

                    </div>
                </div>

                <div class="col-md-4">
                    <div class="second-pricing-table style-2 active">
                        <h5 class="second-pricing-table-title">Relluxe plan <span>mostly for personal using</span></h5>
                        <span class="second-pricing-table-price monthly">
	                    <i class="monthly">$499.99<small>/mo</small></i>
	                    <i class="yearly">$999.99<small>/year</small></i>
	                    </span>

                        <ul class="second-pricing-table-body">
                            <li>2 TB of space</li>
                            <li>unlimited bandwidth</li>
                            <li>full backup systems</li>
                            <li>free domain</li>
                            <li>unlimited database</li>
                        </ul>

                        <a class="second-pricing-table-button" href="#">next setup</a>

                    </div>
                </div>

            </div><!-- end row -->
        </div><!-- end container -->
    </section>

	
	<section class="our-pertners white-bg">
        <div class="container">
            <h2 class="d-none">our pertners</h2>
            <div class="owl-carousel pertners-carousel owl-theme">
                <div class="item">
                    <a href="#"> <img src="{$WEB_ROOT}/templates/{$template}/img/pertners/logo1.png" alt="" /> </a>
                </div>
                <div class="item">
                    <a href="#"> <img src="{$WEB_ROOT}/templates/{$template}/img/pertners/logo2.png" alt="" /> </a>
                </div>
                <div class="item">
                    <a href="#"> <img src="{$WEB_ROOT}/templates/{$template}/img/pertners/logo3.png" alt="" /> </a>
                </div>
                <div class="item">
                    <a href="#"> <img src="{$WEB_ROOT}/templates/{$template}/img/pertners/logo4.png" alt="" /> </a>
                </div>
                <div class="item">
                    <a href="#"> <img src="{$WEB_ROOT}/templates/{$template}/img/pertners/logo5.png" alt="" /> </a>
                </div>
                <div class="item">
                    <a href="#"> <img src="{$WEB_ROOT}/templates/{$template}/img/pertners/logo1.png" alt="" /> </a>
                </div>
                <div class="item">
                    <a href="#"> <img src="{$WEB_ROOT}/templates/{$template}/img/pertners/logo2.png" alt="" /> </a>
                </div>
                <div class="item">
                    <a href="#"> <img src="{$WEB_ROOT}/templates/{$template}/img/pertners/logo3.png" alt="" /> </a>
                </div>
                <div class="item">
                    <a href="#"> <img src="{$WEB_ROOT}/templates/{$template}/img/pertners/logo4.png" alt="" /> </a>
                </div>
                <div class="item">
                    <a href="#"> <img src="{$WEB_ROOT}/templates/{$template}/img/pertners/logo5.png" alt="" /> </a>
                </div>
            </div>
        </div><!-- end container -->
    </section>
	
	
	<section class="section-wth-amwaj">
        <div class="bg_overlay_section-amwaj">
            <img src="{$WEB_ROOT}/templates/{$template}/img/bg/b_bg_02.jpg" alt="img-bg">
        </div>

        <div class="container">
            <div class="row justify-content-between mr-tp-50">

                <div class="col-md-6 side-text-right-container">
                    <h2 class="side-text-right-title">We are with you ,<br> every step of the way</h2>
                    <p class="side-text-right-text">
                        Whether you are looking for a <b>personal</b> website hosting plan or a <b>business</b> website hosting plan, We are the perfect solution for you. Our powerful website hosting services will not only help you achieve your overall website goals, but will also provide you with the confidence you need in knowing that you are partnered with a <a href="#">reliable</a> and <a href="#">secure</a> website hosting platform.
                        <br>
                        <br> We are one of the easiest website hosting platforms to use, and remain committed to providing our customers with one of the best hosting solutions on the market.
                        <p>
                        <a class="side-text-right-button" href="#">start with us now</a>
                </div>

                <div class="col-md-push-1 col-md-5">

                    <div class="display-on-hover-box-container">
                        <a href="#tab1" class="display-on-hover-box-items">
                            <img src="{$WEB_ROOT}/templates/{$template}/img/svgs/hover-box/quality-badge.svg" alt="" />
                        </a>
                        <a href="#tab2" class="display-on-hover-box-items">
                            <img src="{$WEB_ROOT}/templates/{$template}/img/svgs/hover-box/inclined-rocket.svg" alt="" />
                        </a>
                        <a href="#tab3" class="display-on-hover-box-items">
                            <img src="{$WEB_ROOT}/templates/{$template}/img/svgs/hover-box/public-speech.svg" alt="" />
                        </a>
                        <a href="#tab4" class="display-on-hover-box-items">
                            <img src="{$WEB_ROOT}/templates/{$template}/img/svgs/hover-box/big-light.svg" alt="" />
                        </a>
                        <a href="#tab5" class="display-on-hover-box-items">
                            <img src="{$WEB_ROOT}/templates/{$template}/img/svgs/hover-box/big-lifesaver.svg" alt="" />
                        </a>
                        <a href="#tab6" class="display-on-hover-box-items">
                            <img src="{$WEB_ROOT}/templates/{$template}/img/svgs/hover-box/headphones-with-thin-mic.svg" alt="" />
                        </a>
                        <a href="#tab7" class="display-on-hover-box-items">
                            <img src="{$WEB_ROOT}/templates/{$template}/img/svgs/hover-box/inclined-paper-plane.svg" alt="" />
                        </a>
                        <a href="#tab8" class="display-on-hover-box-items">
                            <img src="{$WEB_ROOT}/templates/{$template}/img/svgs/hover-box/big-telephone.svg" alt="" />
                        </a>

                        <div class="display-on-hover-box-content">
                            <div class="display-on-hover-box-cotent-items">
                                <div id="tab1" class="tab-content-hover">
                                    <h5>Shared Housing</h5>
                                    <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Lorem ipsum dolor sit amet elit. Lorem ipsum dolor sit amet</p>
                                </div>
                                <div id="tab2" class="tab-content-hover">
                                    <h5>Dedicated Housing</h5>
                                    <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Lorem ipsum dolor sit amet elit. Lorem ipsum dolor sit amet</p>
                                </div>
                                <div id="tab3" class="tab-content-hover">
                                    <h5>Cloud Hosting</h5>
                                    <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Lorem ipsum dolor sit amet elit. Lorem ipsum dolor sit amet</p>
                                </div>
                                <div id="tab4" class="tab-content-hover">
                                    <h5>Domains</h5>
                                    <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Lorem ipsum dolor sit amet elit. Lorem ipsum dolor sit amet</p>
                                </div>
                                <div id="tab5" class="tab-content-hover">
                                    <h5>VPS Servers</h5>
                                    <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Lorem ipsum dolor sit amet elit. Lorem ipsum dolor sit amet</p>
                                </div>
                                <div id="tab6" class="tab-content-hover">
                                    <h5>Cloud VPS</h5>
                                    <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Lorem ipsum dolor sit amet elit. Lorem ipsum dolor sit amet</p>
                                </div>
                                <div id="tab7" class="tab-content-hover">
                                    <h5>Reseller Services</h5>
                                    <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Lorem ipsum dolor sit amet elit. Lorem ipsum dolor sit amet</p>
                                </div>
                                <div id="tab8" class="tab-content-hover">
                                    <h5>WordPress Hosting</h5>
                                    <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Lorem ipsum dolor sit amet elit. Lorem ipsum dolor sit amet</p>
                                </div>

                            </div>

                        </div>
                    </div>

                </div>

            </div><!-- end row -->
        </div><!-- end container -->
    </section>
	
	
	<section class="padding-100-0-50 position-relative white-bg">
        <div class="container">
            <div class="banner-servers-box">
                <div class="counter-placeholder"></div>
                <div class="banner-text-left">
                    <h5>our server is<strong>24% faster</strong></h5>
                    <p>with under 60 seconds worldwide Deploy!</p>
                </div>
                <a class="benchmarks-link" href="#">benchmarks</a>
            </div>

            <div class="row justify-content-left server-tabls-head">
                <div class="col-md-2">storage</div>
                <div class="col-md-2">cpu</div>
                <div class="col-md-2">memory</div>
                <div class="col-md-2">bandwidth</div>
                <div class="col-md-4">price</div>
            </div>

            <div class="server-tabls-body">
                <div class="row justify-content-left server-tabls-row">
                    <div class="col-md-2"><span class="server-spects-for-mobile">space</span> <b>120 GB </b>SSD</div>
                    <div class="col-md-2"><span class="server-spects-for-mobile">cpu</span> <b>16 CPU</b></div>
                    <div class="col-md-2"><span class="server-spects-for-mobile">ram</span> <b>512 MB</b></div>
                    <div class="col-md-2"><span class="server-spects-for-mobile">bandwidth</span> <b>0.50 TB</b><span class="span-info-servers">IPv6</span></div>
                    <div class="col-md-2"><span class="server-spects-for-mobile">price</span> <b>$12</b>/mo</div>
                    <div class="col-md-2"><a class="server-order-button" href="#">order now</a></div>
                </div>

                <div class="row justify-content-left server-tabls-row best-one">
                    <div class="col-md-2"><span class="server-spects-for-mobile">space</span> <b>180 GB </b>SSD</div>
                    <div class="col-md-2"><span class="server-spects-for-mobile">cpu</span> <b>32 CPU</b></div>
                    <div class="col-md-2"><span class="server-spects-for-mobile">ram</span> <b>6 GB</b></div>
                    <div class="col-md-2"><span class="server-spects-for-mobile">bandwidth</span> <b>3 TB</b><span class="span-info-servers">IPv6</span></div>
                    <div class="col-md-2"><span class="server-spects-for-mobile">price</span> <b>$36</b>/mo</div>
                    <div class="col-md-2"><a class="server-order-button" href="#">order now</a></div>
                </div>

                <div class="row justify-content-left server-tabls-row">
                    <div class="col-md-2"><span class="server-spects-for-mobile">space</span> <b>320 GB </b>SSD</div>
                    <div class="col-md-2"><span class="server-spects-for-mobile">cpu</span> <b>64 CPU</b></div>
                    <div class="col-md-2"><span class="server-spects-for-mobile">ram</span> <b>12 GB</b></div>
                    <div class="col-md-2"><span class="server-spects-for-mobile">bandwidth</span> <b>8 TB</b><span class="span-info-servers">IPv6</span></div>
                    <div class="col-md-2"><span class="server-spects-for-mobile">price</span> <b>$46</b>/mo</div>
                    <div class="col-md-2"><a class="server-order-button" href="#">order now</a></div>
                </div>
            </div>

            <div class="button-row text-center">
                <a class="btn jango-color-btn" href="#">create new account now</a>
            </div>

        </div>
    </section>
	
	
	<section class="padding-60-0-100 white-bg">
        <div class="container">
            <h5 class="title-default-coodiv-two">Simple & Powerful tools<span class="mr-tp-10">high performance 100% Intel CPU and 100% SSD bare metal platform.</span></h5>
            <div class="row justify-content-center mr-tp-40">
                <div class="col-md-3">
                    <div class="box-features-one">
                        <i class="e-flaticon-002-plug"></i>
                        <h5>Stay connected all the time</h5>
                    </div>
                </div>

                <div class="col-md-3">
                    <div class="box-features-one">
                        <i class="e-flaticon-025-router"></i>
                        <h5>Stay connected all the time</h5>
                    </div>
                </div>

                <div class="col-md-3">
                    <div class="box-features-one">
                        <i class="e-flaticon-043-remote-control"></i>
                        <h5>No noisy neighbors</h5>
                    </div>
                </div>

                <div class="col-md-3">
                    <div class="box-features-one">
                        <i class="e-flaticon-021-virtual-reality"></i>
                        <h5>Powerful infrastructure</h5>
                    </div>
                </div>

            </div>

            <div class="row justify-content-center mr-tp-10">
                <div class="col-md-3">
                    <div class="box-features-one">
                        <i class="e-flaticon-004-battery"></i>
                        <h5>Many OS combinations</h5>
                    </div>
                </div>

                <div class="col-md-3">
                    <div class="box-features-one">
                        <i class="e-flaticon-032-sata"></i>
                        <h5>Root administrator access</h5>
                    </div>
                </div>

                <div class="col-md-3">
                    <div class="box-features-one">
                        <i class="e-flaticon-036-air-conditioner"></i>
                        <h5>No long term contracts</h5>
                    </div>
                </div>

                <div class="col-md-3">
                    <div class="box-features-one">
                        <i class="e-flaticon-049-speaker"></i>
                        <h5>No noisy neighbors</h5>
                    </div>
                </div>

            </div>
        </div>
    </section>
	
	
	{/if}
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