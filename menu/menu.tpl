<li data-username="Home" class="nav-item">
						<a href="{$WEB_ROOT}/index.php" class="nav-link active">{$LANG.clientareanavhome}</a>
                        </li>
						<li data-username="store" class="nav-item dropdown">
						<a class="nav-link dropdown" href="#" id="pagesdromdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">{$LANG.navStore} <span class="caret"></span></a>
						<ul class="dropdown-menu" aria-labelledby="pagesdromdown">
						<li><a href="{$WEB_ROOT}/cart.php">{$LANG.navBrowseProductsServices}</a></li>
						{foreach from=$productgroups item=productgroup}
						<li><a href="{$WEB_ROOT}/cart.php?gid={$productgroup.gid}">{$productgroup.name}</a></li>
						{/foreach}
						{if $loggedin}
						<li><a href="cart.php?gid=addons">{$LANG.cartproductaddons}</a></li>
						{/if}
						{if $loggedin && $renewalsenabled}
						<li><a href="{$WEB_ROOT}/cart.php?gid=renewals">{$LANG.domainrenewals}</a></li>
						{/if}
						{if $registerdomainenabled}
						<li><a href="{$WEB_ROOT}/cart.php?a=add&domain=register">{$LANG.navregisterdomain}</a></li>
						{/if}
						{if $transferdomainenabled}
						<li><a href="{$WEB_ROOT}/cart.php?a=add&domain=transfer">{$LANG.transferinadomain}</a></li>
						{/if}
						</ul>
						</li>

						<li data-username="domains" class="nav-item dropdown">
						<a class="nav-link dropdown" href="#" id="pagesdromdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">{$LANG.cartproductdomain} <span class="caret"></span></a>
						<ul class="dropdown-menu" aria-labelledby="pagesdromdown">
						<li><a href="{$WEB_ROOT}/clientarea.php?action=domains">{$LANG.clientareanavdomains}</a></li>
						{if $renewalsenabled}
						<li><a href="cart.php?gid=renewals">{$LANG.domainrenewals}</a></li>
						{/if}
						{if $registerdomainenabled}
						<li><a href="{$WEB_ROOT}/cart.php?a=add&domain=register">{$LANG.navregisterdomain}</a></li>
						{/if}
						{if $transferdomainenabled}
						<li><a href="{$WEB_ROOT}/cart.php?a=add&domain=transfer">{$LANG.transferinadomain}</a></li>
						{/if}
						<li><a href="{$WEB_ROOT}/cart.php?a=add&domain=register">{$LANG.navdomainsearch}</a></li>
						</ul>
						</li>
						{if $loggedin}

						<li data-username="store" class="nav-item dropdown">
						<a class="nav-link dropdown" href="#" id="pagesdromdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">{$LANG.navbilling} <span class="caret"></span></a>
						<ul class="dropdown-menu" aria-labelledby="pagesdromdown">
						<li><a href="{$WEB_ROOT}/clientarea.php?action=invoices">{$LANG.invoices}</a></li>
						<li><a href="{$WEB_ROOT}/clientarea.php?action=quotes">{$LANG.quotestitle}</a></li>
						<li><a href="{$WEB_ROOT}/clientarea.php?action=masspay&all=true">{$LANG.masspaytitle}</a></li>
						</ul>
						</li>
						{/if}
						
						<li data-username="support" class="nav-item dropdown">
						<a class="nav-link dropdown" href="#" id="pagesdromdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">{$LANG.navsupport}<span class="caret"></span></a>
						<ul class="dropdown-menu" aria-labelledby="pagesdromdown">
						<li><a href="{$WEB_ROOT}/supporttickets.php">{$LANG.navtickets}</a></li>
						<li><a href="{$WEB_ROOT}/submitticket.php">{$LANG.navopenticket}</a></li>
						</ul>
						</li>

						<li data-username="announcements" class="nav-item">
						<a href="{$WEB_ROOT}/announcements.php" class="nav-link ">{$LANG.announcementstitle}</a>
						</li>
						<li data-username="knowledgebase" class="nav-item">
						<a href="{$WEB_ROOT}/knowledgebase.php" class="nav-link ">{$LANG.knowledgebasetitle}</a>
						</li>
						<li data-username="contact" class="nav-item">
						<a href="{$WEB_ROOT}/contact.php" class="nav-link ">{$LANG.contactus}</a>
						</li>