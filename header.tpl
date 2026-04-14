<!doctype html>
<html lang="en">
<head>
    <meta charset="{$charset}" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>{if $kbarticle.title}{$kbarticle.title} - {/if}{$pagetitle} - {$companyname}</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700&family=Inter:wght@400;500;600&display=swap" rel="stylesheet">
    {include file="$template/includes/head.tpl"}
    {$headoutput}
</head>
<body data-phone-cc-input="{$phoneNumberInputStyle}">
    {if $captcha}{$captcha->getMarkup()}{/if}
    {$headeroutput}

    {* ============================================================
       GigsHost Topbar — blue gradient promo bar (always visible)
       Matches: gighost/components/ui/Topbar.tsx
       ============================================================ *}
    <div class="gh-topbar" id="ghTopbar">
        <div class="gh-topbar__inner">

            {* Left — promo text *}
            <div class="gh-topbar__promo">
                <span class="gh-topbar__highlight">Deals End Soon:</span>
                <span class="gh-topbar__message d-none d-sm-inline">Hurry! Hosting plans at lowest prices</span>
            </div>

            {* Center — countdown timer (JS-driven) *}
            <div class="gh-topbar__timer" id="ghTimer">
                <span class="gh-topbar__timer-label">Ends in</span>
                <div class="gh-topbar__timer-units">
                    <div class="gh-topbar__timer-unit">
                        <span class="gh-topbar__timer-value" id="ghTimerDays">00</span>
                        <span class="gh-topbar__timer-sublabel">days</span>
                    </div>
                    <span class="gh-topbar__timer-sep">:</span>
                    <div class="gh-topbar__timer-unit">
                        <span class="gh-topbar__timer-value" id="ghTimerHrs">00</span>
                        <span class="gh-topbar__timer-sublabel">hrs</span>
                    </div>
                    <span class="gh-topbar__timer-sep">:</span>
                    <div class="gh-topbar__timer-unit">
                        <span class="gh-topbar__timer-value" id="ghTimerMin">00</span>
                        <span class="gh-topbar__timer-sublabel">min</span>
                    </div>
                    <span class="gh-topbar__timer-sep">:</span>
                    <div class="gh-topbar__timer-unit">
                        <span class="gh-topbar__timer-value" id="ghTimerSec">00</span>
                        <span class="gh-topbar__timer-sublabel">sec</span>
                    </div>
                </div>
            </div>

            {* Right — account info (logged in) OR currency + CTA (logged out) *}
            <div class="gh-topbar__right">
                {if $loggedin}
                    {* Logged-in: show account name + notifications *}
                    <button type="button" class="gh-topbar__notif-btn" data-toggle="popover" id="accountNotifications" data-placement="bottom">
                        <i class="far fa-bell"></i>
                        {if count($clientAlerts) > 0}
                            <span class="gh-topbar__notif-badge">{count($clientAlerts)}</span>
                        {/if}
                    </button>
                    <div id="accountNotificationsContent" class="w-hidden">
                        <ul class="client-alerts">
                        {foreach $clientAlerts as $alert}
                            <li>
                                <a href="{$alert->getLink()}">
                                    <i class="fas fa-fw fa-{if $alert->getSeverity() == 'danger'}exclamation-circle{elseif $alert->getSeverity() == 'warning'}exclamation-triangle{elseif $alert->getSeverity() == 'info'}info-circle{else}check-circle{/if}"></i>
                                    <div class="message">{$alert->getMessage()}</div>
                                </a>
                            </li>
                        {foreachelse}
                            <li class="none">{lang key='notificationsnone'}</li>
                        {/foreach}
                        </ul>
                    </div>
                    <a href="{$WEB_ROOT}/clientarea.php?action=details" class="gh-topbar__account-name">
                        {if $client.companyname}{$client.companyname}{else}{$client.fullName}{/if}
                    </a>
                    {if $adminMasqueradingAsClient || $adminLoggedIn}
                        <a href="{$WEB_ROOT}/logout.php?returntoadmin=1" class="gh-topbar__cta ml-2">
                            <i class="fas fa-redo-alt mr-1"></i>{lang key="admin.returnToAdmin"}
                        </a>
                    {/if}
                {else}
                    {* Logged-out: Buy Now CTA *}
                    <a href="{$WEB_ROOT}/cart.php" class="gh-topbar__cta">Buy Now</a>
                {/if}
            </div>

        </div>
    </div>

    {* ============================================================
       GigsHost Header — frosted glass sticky nav
       Matches: gighost/components/Header.tsx
       ============================================================ *}
    <header id="header" class="gh-header" data-scrolled="false">
        <nav class="navbar navbar-expand-xl gh-navbar">
            <div class="gh-navbar-container">

                {* Logo *}
                <a class="navbar-brand gh-logo" href="{$WEB_ROOT}/index.php">
                    {if $assetLogoPath}
                        <img src="https://www.gigshost.net/_next/image?url=https%3A%2F%2Fcms.gigshost.net%2Fuploads%2Flogo_5a85e14f37_e705c1e56e.webp&w=256&q=75" alt="{$companyname}" class="gh-logo-img">
                    {else}
                        <img src="https://www.gigshost.net/_next/image?url=https%3A%2F%2Fcms.gigshost.net%2Fuploads%2Flogo_5a85e14f37_e705c1e56e.webp&w=256&q=75" alt="{$companyname}" class="gh-logo-img">
                    {/if}
                </a>

                {* Mobile toggle *}
                <button class="navbar-toggler gh-toggler ml-auto" type="button" data-toggle="collapse" data-target="#ghMainNav" aria-controls="ghMainNav" aria-expanded="false">
                    <span class="fas fa-bars"></span>
                </button>

                {* Collapsible nav *}
                <div class="collapse navbar-collapse" id="ghMainNav">

                    {* ---- GigsHost primary nav items (hardcoded to match Strapi data) ---- *}
                    <ul id="nav" class="navbar-nav mx-auto gh-nav-primary">

                        {* Domain *}
                        <li class="nav-item">
                            <a class="nav-link" href="{$WEB_ROOT}/domain.php">Domain</a>
                        </li>

                        {* Cloud Hosting dropdown *}
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                Cloud Hosting
                            </a>
                            <div class="dropdown-menu gh-dropdown">
                                <a class="dropdown-item" href="{$WEB_ROOT}/index.php?rp=/store/cpanel-hosting">cPanel Hosting</a>
                                <a class="dropdown-item" href="{$WEB_ROOT}/index.php?rp=/store/wordpress-hosting">WordPress Hosting</a>
                                <a class="dropdown-item" href="{$WEB_ROOT}/index.php?rp=/store/woocommerce-hosting">WooCommerce Hosting</a>
                                <a class="dropdown-item" href="{$WEB_ROOT}/index.php?rp=/store/laravel-hosting">Laravel Hosting</a>
                                <a class="dropdown-item" href="{$WEB_ROOT}/index.php?rp=/store/nodejs-hosting">Node.js Hosting</a>
                                <a class="dropdown-item" href="{$WEB_ROOT}/index.php?rp=/store/ecommerce-hosting">eCommerce Hosting</a>
                                <a class="dropdown-item" href="{$WEB_ROOT}/index.php?rp=/store/reseller-hosting">Reseller Hosting</a>
                            </div>
                        </li>

                        {* VPS & Dedicated dropdown *}
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                VPS &amp; Dedicated
                            </a>
                            <div class="dropdown-menu gh-dropdown">
                                <a class="dropdown-item" href="{$WEB_ROOT}/index.php?rp=/store/vps-hosting">VPS Hosting</a>
                                <a class="dropdown-item" href="{$WEB_ROOT}/index.php?rp=/store/windows-vps">Windows VPS</a>
                                <a class="dropdown-item" href="{$WEB_ROOT}/index.php?rp=/store/forex-vps">Forex VPS</a>
                                <a class="dropdown-item" href="{$WEB_ROOT}/index.php?rp=/store/seo-vps">SEO VPS</a>
                                <a class="dropdown-item" href="{$WEB_ROOT}/index.php?rp=/store/dedicated-server">Dedicated Server</a>
                            </div>
                        </li>

                        {* AI Website Builder *}
                        <li class="nav-item">
                            <a class="nav-link" href="{$WEB_ROOT}/index.php?rp=/store/ai-website-builder">AI Website Builder</a>
                        </li>

                        {* Resources dropdown *}
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                Resources
                            </a>
                            <div class="dropdown-menu gh-dropdown">
                                <a class="dropdown-item" href="{$WEB_ROOT}/index.php?rp=/store/ssl-certificates">SSL Certificate</a>
                                <a class="dropdown-item" href="{$WEB_ROOT}/submitticket.php">Free Migration</a>
                                <a class="dropdown-item" href="{$WEB_ROOT}/index.php?rp=/knowledgebase">Knowledge Base</a>
                                <a class="dropdown-item" href="{$WEB_ROOT}/contact.php">Contact Us</a>
                            </div>
                        </li>

                        {* WHMCS primary navbar items (announcements, server status, etc.) *}
                        {include file="$template/includes/navbar.tpl" navbar=$primaryNavbar}

                    </ul>

                    {* ---- Right-side: cart + Login + Get Started ---- *}
                    <div class="gh-nav-actions">

                        {* Cart *}
                        <a class="gh-cart-btn" href="{$WEB_ROOT}/cart.php?a=view" title="{lang key='carttitle'}">
                            <i class="far fa-shopping-cart"></i>
                            {if $cartitemcount > 0}
                                <span class="gh-cart-count">{$cartitemcount}</span>
                            {/if}
                        </a>

                        {if $loggedin}
                            {* Logged in: My Account dropdown *}
                            <div class="dropdown">
                                <a class="gh-btn-login dropdown-toggle" href="#" data-toggle="dropdown">
                                    <i class="far fa-user-circle mr-1"></i>
                                    {if $client.companyname}{$client.companyname}{else}{$client.firstname}{/if}
                                </a>
                                <div class="dropdown-menu dropdown-menu-right gh-dropdown">
                                    <a class="dropdown-item" href="{$WEB_ROOT}/clientarea.php">{lang key='clientareatitle'}</a>
                                    <a class="dropdown-item" href="{$WEB_ROOT}/clientarea.php?action=details">{lang key='mydetails'}</a>
                                    <div class="dropdown-divider"></div>
                                    <a class="dropdown-item" href="{$WEB_ROOT}/logout.php">{lang key='logout'}</a>
                                </div>
                            </div>
                        {else}
                            {* Logged out: Login + Get Started *}
                            <a class="gh-btn-login" href="{$WEB_ROOT}/login.php">{lang key='login'}</a>
                            <a class="gh-btn-cta" href="{$WEB_ROOT}/cart.php">Get Started</a>
                        {/if}

                    </div>

                </div>
            </div>
        </nav>
    </header>

    {include file="$template/includes/network-issues-notifications.tpl"}

    <script>
    (function() {
        // Scroll-based frosted glass effect
        var header = document.getElementById('header');
        function onScroll() {
            header.setAttribute('data-scrolled', window.scrollY > 20 ? 'true' : 'false');
        }
        window.addEventListener('scroll', onScroll, { passive: true });

        // Countdown timer — end date matches Strapi: 2026-04-29T19:00:00.000Z
        var endDate = new Date('2026-04-29T19:00:00.000Z').getTime();
        var timerEl = document.getElementById('ghTimer');
        function pad(n) { return String(n).padStart(2, '0'); }
        function tick() {
            var diff = Math.max(0, endDate - Date.now());
            if (diff === 0 && timerEl) { timerEl.style.display = 'none'; return; }
            document.getElementById('ghTimerDays').textContent = pad(Math.floor(diff / 86400000));
            document.getElementById('ghTimerHrs').textContent  = pad(Math.floor((diff % 86400000) / 3600000));
            document.getElementById('ghTimerMin').textContent  = pad(Math.floor((diff % 3600000) / 60000));
            document.getElementById('ghTimerSec').textContent  = pad(Math.floor((diff % 60000) / 1000));
        }
        tick();
        setInterval(tick, 1000);
    })();
    </script>

    <nav class="master-breadcrumb" aria-label="breadcrumb">
        <div class="container">
            {include file="$template/includes/breadcrumb.tpl"}
        </div>
    </nav>

    {include file="$template/includes/validateuser.tpl"}
    {include file="$template/includes/verifyemail.tpl"}

    {if $templatefile == 'homepage'}
        {if $registerdomainenabled || $transferdomainenabled}
            {include file="$template/includes/domain-search.tpl"}
        {/if}
    {/if}

    <section id="main-body">
        <div class="{if !$skipMainBodyContainer}container{/if}">
            <div class="row">

            {if !$inShoppingCart && ($primarySidebar->hasChildren() || $secondarySidebar->hasChildren())}
                <div class="col-lg-4 col-xl-3">
                    <div class="sidebar">
                        {include file="$template/includes/sidebar.tpl" sidebar=$primarySidebar}
                    </div>
                    {if !$inShoppingCart && $secondarySidebar->hasChildren()}
                        <div class="d-none d-lg-block sidebar">
                            {include file="$template/includes/sidebar.tpl" sidebar=$secondarySidebar}
                        </div>
                    {/if}
                </div>
            {/if}
            <div class="{if !$inShoppingCart && ($primarySidebar->hasChildren() || $secondarySidebar->hasChildren())}col-lg-8 col-xl-9{else}col-12{/if} primary-content">
