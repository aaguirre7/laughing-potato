<div class="custom-login-page">
<div class="login-left-side-custom standard-version">
<div>
<a class="navbar-brand" href="{$WEB_ROOT}/index.php"><img class="w-logo" src="{$WEB_ROOT}/templates/{$template}/img/header/logo-geeko_white.png" alt="{$companyname}" /></a>
<span class="login-email-header">support@geekohost.com</span>
</div>
<div class="kt-grid">
	<div class="item-middle">
		<h3 class="login-title">{$LANG.headertext}</h3>
		<span class="login-subtitle">{$LANG.loginintrotext}</span>
	</div>
	<div class="item-footer">
	<div class="login-info">
	<div class="login-copyright">© {$date_year}, {$companyname}</div>
	<div class="login-menu">
	<a href="knowledgebase.php" class="kt-link">{$LANG.knowledgebasetitle}</a>
	<a href="contact.php" class="kt-link">{$LANG.supportticketscontact}</a>
	</div>
	</div>
	</div>
</div>		
</div>



<div class="login-right-side-custom">
<div class="login-head"><span>{$LANG.registerintro}</span> <a href="register.php">{$LANG.remoteAuthn.titleSignUpVerb}</a></div>
<div class="login-wrapper">
<div class="login-form-container">
    {if $incorrect}
        {include file="$template/includes/alert.tpl" type="error" msg=$LANG.loginincorrect textcenter=true}
    {elseif $verificationId && empty($transientDataName)}
        {include file="$template/includes/alert.tpl" type="error" msg=$LANG.verificationKeyExpired textcenter=true}
    {elseif $ssoredirect}
        {include file="$template/includes/alert.tpl" type="info" msg=$LANG.sso.redirectafterlogin textcenter=true}
    {elseif $invalid}
        {include file="$template/includes/alert.tpl" type="error" msg=$LANG.googleRecaptchaIncorrect textcenter=true}
    {/if}
    <h5 class="login-title">{$LANG.login}</h5>
    <div class="providerLinkingFeedback"></div>
            <form method="post" action="{$systemurl}dologin.php" class="login-form" role="form">
                <div class="form-group">
                    <input type="email" name="username" class="form-control" id="inputEmail" placeholder="{$LANG.enteremail}" autofocus>
                </div>

                <div class="form-group">
                    <input type="password" name="password" class="form-control" id="inputPassword" placeholder="{$LANG.clientareapassword}" autocomplete="off" >
                </div>

                <div class="checkbox">
                    <label>
                        <input type="checkbox" name="rememberme" /> {$LANG.loginrememberme}
                    </label>
                </div>
                {if $captcha->isEnabled()}
                    <div class="text-center margin-bottom">
                        {include file="$template/includes/captcha.tpl"}
                    </div>
                {/if}
                <div align="center">
                    <input id="login" type="submit" class="btn btn-primary{$captcha->getButtonClass($captchaForm)}" value="{$LANG.loginbutton}" /> <a href="{routePath('password-reset-begin')}" class="btn btn-default">{$LANG.forgotpw}</a>
                </div>
            </form>

        <div class="{if !$linkableProviders}hidden{/if}">
		<div class="divider">
			<span></span>
			<span>{$LANG.remoteAuthn.titleOr}</span>
			<span></span>
		</div>
            {include file="$template/includes/linkedaccounts.tpl" linkContext="login" customFeedback=true}
        </div>
</div>
</div>
</div>
</div>