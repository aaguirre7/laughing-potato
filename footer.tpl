{if $loginpage eq 0 and $templatefile ne "clientregister"}
                </div><!-- /.main-content -->
                {if !$inShoppingCart && $secondarySidebar->hasChildren()}
                    <div class="col-md-3 pull-md-left sidebar sidebar-secondary">
                        {include file="$template/includes/sidebar.tpl" sidebar=$secondarySidebar}
                    </div>
                {/if}
            <div class="clearfix"></div>
        </div>
    </div>
</section>


<section class="footer-section-banner">
        <div class="container">
            <div class="row free-trial-footer-banner" style="display: flex; flex-direction: column; justify-content: center; align-items: center;">
                <div class="col-md-8">
                    <h5 style="text-align: center;" class="free-trial-footer-banner-title">What are you waiting for?</h5>
                    <p style="text-align: center;" class="free-trial-footer-banner-text">The kick starter hosting for your business!</p>
                </div>

                <div style="margin-top: 16px;" class="col-md-4 free-trial-footer-links d-flex mx-auto flex-column">
                    <div class="mb-auto"></div>
                    <div class="mb-auto">
					{if $loggedin}
					<a class="sign-btn" href="{$WEB_ROOT}/index.php">homepage</a>
					<a class="log-btn" href="{$WEB_ROOT}/cart.php?a=view">{$LANG.viewcart}</a>
					{else}
                        <a class="sign-btn" href="https://members.geekohost.com/cart.php?gid=4">GO</a> 
					{/if}
                    </div>
                    <div class="mt-auto"></div>
                </div>
            </div>
        </div>
    </section>

    <section class="footer-section">
        <div class="container">
            <div class="row">
                <div class="col-md-9 quiq-links-footer">
                    <h5 class="quiq-links-footer-title">Quick Links</h5>
                    <div class="row">
                        <ul class="col-md-6 quiq-links-footer-ul"> 
                            <li><a href="https://members.geekohost.com/cart.php">Store</a></li>
                            <li><a href="https://members.geekohost.com/clientarea.php">Manage your account</a></li>
                            <li><a href="https://members.geekohost.com/submitticket.php?step=2&deptid=1">Contact Us</a></li>
                            <li><a href="https://members.geekohost.com/index.php/store/ssl-certificates">SSL Certificates</a></li> 
                        </ul>

                        <ul class="col-md-6 quiq-links-footer-ul">  
                            <li><a href="https://members.geekohost.com/index.php/store/website-builder">Website Builder</a></li>
                            <li><a href="https://members.geekohost.com/index.php/store/codeguard">Website backup</a></li>
                            <li><a href="https://members.geekohost.com/index.php/store/sitelock">Website Security</a></li>
                            <li><a href="https://members.geekohost.com/index.php/store/marketgoo">SEO Tools</a></li>
                        </ul>

                    </div>
                </div>

                <div class="col-md-3">
                    <h5 class="quiq-links-footer-title">secure and contact</h5>
                    <p class="secure-img-footer-area">
                        <img class="size-img" style="width:250px;height:auto;" src="{$WEB_ROOT}/templates/{$template}/img/footer/sitelock.png" alt="" />
                    </p>

                    <div class="footer-contact-method">
                        <a href="#">
                            <span>email us :</span>
                            <b>support@geekohost.com</b>
                            <i class="fas fa-at"></i>
                        </a>
 
                    </div>
                </div>
            </div>

            <div class="mr-tp-40 row justify-content-between footer-area-under">
                <div class="col-md-4">
                    <a href="#"><img class="footer-logo-blue" src="{$WEB_ROOT}/templates/{$template}/img/header/logof-white.png" alt="" /></a>
                    <div class="footer-social-icons">
                        <a href="#"><i class="fab fa-twitter"></i></a>
                    </div>
                </div>

                <div class="col-md-4 row col-md-offset-4">
                    <ul class="col-md-6 under-footer-ullist">
                        <li><a href="#">about us</a></li>
                        <li><a href="#">our services</a></li>
                    </ul>
                    <ul class="col-md-6 under-footer-ullist text-right">
                        <li><a href="#">privacy policy</a></li>
                        <li><a href="#">terms of sevice</a></li>
                    </ul>
                </div>

            </div>

            <div class="row justify-content-between final-footer-area mr-tp-40">
                <div class="final-footer-area-text col-md-6">
                Copyright &copy; {$date_year} {$companyname}. All Rights Reserved.
                </div>

                <div class="footer-lang-changer col-md-2 text-right col-md-offset-4">

                    <div class="lang-changer-drop-up">
                        <a class="menu-btn-changer" href="#"><img src="{$WEB_ROOT}/templates/{$template}/img/flags/usa.svg" alt="" /> united states</a>
                    </div>
                </div>
            </div>
        </div>
    </section>
{/if}

<div id="fullpage-overlay" class="hidden">
    <div class="outer-wrapper">
        <div class="inner-wrapper">
            <img src="{$WEB_ROOT}/assets/img/overlay-spinner.svg">
            <br>
            <span class="msg"></span>
        </div>
    </div>
</div>

<div class="modal system-modal fade" id="modalAjax" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content panel-primary">
            <div class="modal-header panel-heading">
                <button type="button" class="close" data-dismiss="modal">
                    <span aria-hidden="true">&times;</span>
                    <span class="sr-only">{$LANG.close}</span>
                </button>
                <h4 class="modal-title"></h4>
            </div>
            <div class="modal-body panel-body">
            {$LANG.loading}
            </div>
            <div class="modal-footer panel-footer">
                <div class="pull-left loader">
                    <i class="fas fa-circle-notch fa-spin"></i>
                    {$LANG.loading}
                </div>
                <button type="button" class="btn btn-default" data-dismiss="modal">
                    {$LANG.close}
                </button>
                <button type="button" class="btn btn-primary modal-submit">
                    {$LANG.submit}
                </button>
            </div>
        </div>
    </div>
</div>
{include file="$template/includes/generate-password.tpl"}

{$footeroutput}

    <!-- template JavaScript -->
    <script src="{$WEB_ROOT}/templates/{$template}/js/template-scripts.js"></script>
    <!-- flickity JavaScript -->
    <script src="{$WEB_ROOT}/templates/{$template}/js/flickity.pkgd.min.js"></script>
    <!-- carousel JavaScript -->
    <script src="{$WEB_ROOT}/templates/{$template}/owlcarousel/owl.carousel.min.js"></script>
    <!-- parallax JavaScript -->
    <script src="{$WEB_ROOT}/templates/{$template}/js/parallax.min.js"></script>
    <!-- mailchamp JavaScript -->
    <script src="{$WEB_ROOT}/templates/{$template}/js/mailchamp.js"></script>
    <!-- bootstrap offcanvas -->
    <script src="{$WEB_ROOT}/templates/{$template}/js/bootstrap.offcanvas.min.js"></script>
    <!-- touchSwipe JavaScript -->
    <script src="{$WEB_ROOT}/templates/{$template}/js/jquery.touchSwipe.min.js"></script>
	
	
</body>
</html>
