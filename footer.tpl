                    </div>

                    </div>
                    {if !$inShoppingCart && $secondarySidebar->hasChildren()}
                        <div class="d-lg-none sidebar sidebar-secondary">
                            {include file="$template/includes/sidebar.tpl" sidebar=$secondarySidebar}
                        </div>
                    {/if}
                <div class="clearfix"></div>
            </div>
        </div>
    </section>

    {* ============================================================
       GigsHost Footer — matches gigshost/components/Footer.tsx
       bg-gray-900 | 5-column grid | bottom bar with logo + social
       ============================================================ *}
    <footer id="footer" class="gh-footer">
        <div class="gh-footer__container">

            {* 5-column link grid *}
            <div class="gh-footer__grid">

                {* Col 1: Cloud Hosting *}
                <div>
                    <h3 class="gh-footer__col-title">Cloud Hosting</h3>
                    <ul class="gh-footer__links">
                        <li><a href="https://www.gigshost.net/cpanel-hosting">cPanel Hosting</a></li>
                        <li><a href="https://www.gigshost.net/laravel-hosting">Laravel Hosting</a></li>
                        <li><a href="https://www.gigshost.net/nodejs-hosting">Node.js Hosting</a></li>
                        <li><a href="https://www.gigshost.net/wordpress-hosting">WordPress Hosting</a></li>
                        <li><a href="https://www.gigshost.net/woocommerce-hosting">WooCommerce Hosting</a></li>
                        <li><a href="https://www.gigshost.net/ecommerce-hosting">eCommerce Hosting</a></li>
                        <li><a href="https://www.gigshost.net/reseller-hosting">Reseller Hosting</a></li>
                    </ul>
                </div>

                {* Col 2: VPS & Server *}
                <div>
                    <h3 class="gh-footer__col-title">VPS &amp; Server</h3>
                    <ul class="gh-footer__links">
                        <li><a href="https://www.gigshost.net/vps-hosting">VPS Hosting</a></li>
                        <li><a href="https://www.gigshost.net/offshore-vps">Offshore VPS Hosting</a></li>
                        <li><a href="https://www.gigshost.net/windows-vps">Windows VPS Hosting</a></li>
                        <li><a href="https://www.gigshost.net/forex-vps">Forex VPS Hosting</a></li>
                        <li><a href="https://www.gigshost.net/seo-vps">SEO VPS Hosting</a></li>
                        <li><a href="https://www.gigshost.net/dedicated-server">Dedicated Server</a></li>
                    </ul>
                </div>

                {* Col 3: Control Panel *}
                <div>
                    <h3 class="gh-footer__col-title">Control Panel</h3>
                    <ul class="gh-footer__links">
                        <li><a href="https://www.gigshost.net/plesk-vps">Plesk VPS Hosting</a></li>
                        <li><a href="https://www.gigshost.net/cpanel-vps">cPanel VPS Hosting</a></li>
                        <li><a href="https://www.gigshost.net/cyberpanel-vps">CyberPanel VPS Hosting</a></li>
                        <li><a href="https://www.gigshost.net/directadmin-vps">DirectAdmin VPS Hosting</a></li>
                    </ul>
                </div>

                {* Col 4: Addons *}
                <div>
                    <h3 class="gh-footer__col-title">Addons</h3>
                    <ul class="gh-footer__links">
                        <li><a href="{$WEB_ROOT}/submitticket.php">Free Website Migration</a></li>
                        <li><a href="{$WEB_ROOT}/domain.php">Domain</a></li>
                        <li><a href="https://www.gigshost.net/ssl-certificates">SSL Certificate</a></li>
                        <li><a href="https://www.gigshost.net/ai-website-builder">AI Website Builder</a></li>
                        <li><a href="https://www.gigshost.net/affiliates.php">Affiliate Program</a></li>
                    </ul>
                </div>

                {* Col 5: Company *}
                <div>
                    <h3 class="gh-footer__col-title">Company</h3>
                    <ul class="gh-footer__links">
                        <li><a href="https://www.gigshost.net/about-us">About Us</a></li>
                        <li><a href="https://www.gigshost.net/contact.php">Contact Us</a></li>
                        <li><a href="https://www.gigshost.net/data-center">Data Center</a></li>
                        <li><a href="https://www.gigshost.net/announcements.php">Blog</a></li>
                        <li><a href="{$WEB_ROOT}/index.php?rp=/knowledgebase">Knowledge Base</a></li>
                    </ul>
                </div>

            </div>{* /.gh-footer__grid *}

            {* Bottom bar *}
            <div class="gh-footer__bottom">
                <div class="gh-footer__bottom-row">

                    {* Logo + Award *}
                    <div class="gh-footer__brand">
                        <a href="{$WEB_ROOT}/" class="gh-footer__logo-link">
                            {if $assetLogoPath}
                                <img src="https://www.gigshost.net/_next/image?url=https%3A%2F%2Fcms.gigshost.net%2Fuploads%2Flogo_5a85e14f37_e705c1e56e.webp&w=256&q=75" alt="{$companyname}" class="gh-footer__logo">
                            {else}
                                <img src="https://www.gigshost.net/_next/image?url=https%3A%2F%2Fcms.gigshost.net%2Fuploads%2Flogo_5a85e14f37_e705c1e56e.webp&w=256&q=75" alt="{$companyname}" class="gh-footer__logo">
                            {/if}
                        </a>
                        <div class="gh-footer__award">
                            <p><i class="fas fa-trophy gh-footer__trophy"></i> Reliable Cloud Hosting for Modern Websites</p>
                            <p>Trusted by Businesses & Developers</p>
                        </div>
                    </div>

                    {* Social icons + Language/Currency switcher *}
                    <div class="gh-footer__right">

                        <div class="gh-footer__social">
                            <a href="https://facebook.com/GigsHost" target="_blank" rel="noopener noreferrer" aria-label="Facebook"><i class="fab fa-facebook-f"></i></a>
                            <a href="https://x.com/GigshostNet" target="_blank" rel="noopener noreferrer" aria-label="Twitter / X"><i class="fab fa-x-twitter"></i></a>
                            <a href="https://www.linkedin.com/company/gigshost/" target="_blank" rel="noopener noreferrer" aria-label="LinkedIn"><i class="fab fa-linkedin-in"></i></a>
                            <a href="https://www.instagram.com/gigshost" target="_blank" rel="noopener noreferrer" aria-label="Instagram"><i class="fab fa-instagram"></i></a>
                            <a href="https://www.youtube.com/gigshost" target="_blank" rel="noopener noreferrer" aria-label="YouTube"><i class="fab fa-youtube"></i></a>
                        </div>

                        {* Language / Currency switcher — only shown when available *}
                        {if ($languagechangeenabled && count($locales) > 1) || $currencies}
                        <button type="button" class="gh-footer__locale-btn" data-toggle="modal" data-target="#modalChooseLanguage">
                            <div class="iti-flag {if $activeLocale.countryCode === '001'}us{else}{$activeLocale.countryCode|lower}{/if}"></div>
                            {if $languagechangeenabled && count($locales) > 1}
                                <span>{$activeLocale.localisedName}</span>
                            {/if}
                            {if $currencies}
                                <span>/</span>
                                <span>{$activeCurrency.prefix} {$activeCurrency.code}</span>
                            {/if}
                        </button>
                        {/if}

                    </div>

                </div>

                {* Legal links *}
                <div class="gh-footer__legal">
                    <a href="https://www.gigshost.net/privacy-policy">Privacy Policy</a>
                    <span class="gh-footer__legal-sep">|</span>
                    <a href="https://www.gigshost.net/terms-of-service">Terms of Service</a>
                    <span class="gh-footer__legal-sep">|</span>
                    <a href="https://www.gigshost.net/refund-policy">Refund Policy</a>
                    <span class="gh-footer__legal-sep">|</span>
                    <a href="https://www.gigshost.net/affiliates.php">Affiliate TOS</a>
                    {if $acceptTOS}
                        <span class="gh-footer__legal-sep">|</span>
                        <a href="{$tosURL}" target="_blank">{lang key='ordertos'}</a>
                    {/if}
                </div>

                {* Copyright *}
                <div class="gh-footer__copyright">
                    Copyright &copy; {$date_year} GigsHost. All Rights Reserved. A Service by Dristi Technologies & IT Services Pvt. Ltd.
                </div>

            </div>{* /.gh-footer__bottom *}
        </div>{* /.gh-footer__container *}
    </footer>

    <div id="fullpage-overlay" class="w-hidden">
        <div class="outer-wrapper">
            <div class="inner-wrapper">
                <img src="{$WEB_ROOT}/assets/img/overlay-spinner.svg" alt="">
                <br>
                <span class="msg"></span>
            </div>
        </div>
    </div>

    <div class="modal system-modal fade" id="modalAjax" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title"></h5>
                    <button type="button" class="close" data-dismiss="modal">
                        <span aria-hidden="true">&times;</span>
                        <span class="sr-only">{lang key='close'}</span>
                    </button>
                </div>
                <div class="modal-body">
                    {lang key='loading'}
                </div>
                <div class="modal-footer">
                    <div class="float-left loader">
                        <i class="fas fa-circle-notch fa-spin"></i>
                        {lang key='loading'}
                    </div>
                    <button type="button" class="btn btn-default" data-dismiss="modal">
                        {lang key='close'}
                    </button>
                    <button type="button" class="btn btn-primary modal-submit">
                        {lang key='submit'}
                    </button>
                </div>
            </div>
        </div>
    </div>

    <form method="get" action="{$currentpagelinkback}">
        <div class="modal modal-localisation" id="modalChooseLanguage" tabindex="-1" role="dialog">
            <div class="modal-dialog modal-lg" role="document">
                <div class="modal-content">
                    <div class="modal-body">
                        <button type="button" class="close text-light" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>

                        {if $languagechangeenabled && count($locales) > 1}
                            <h5 class="h5 pt-5 pb-3">{lang key='chooselanguage'}</h5>
                            <div class="row item-selector">
                                <input type="hidden" name="language" data-current="{$language}" value="{$language}" />
                                {foreach $locales as $locale}
                                    <div class="col-4">
                                        <a href="#" class="item{if $language == $locale.language} active{/if}" data-value="{$locale.language}">
                                            {$locale.localisedName}
                                        </a>
                                    </div>
                                {/foreach}
                            </div>
                        {/if}
                        {if !$loggedin && $currencies}
                            <p class="h5 pt-5 pb-3">{lang key='choosecurrency'}</p>
                            <div class="row item-selector">
                                <input type="hidden" name="currency" data-current="{$activeCurrency.id}" value="">
                                {foreach $currencies as $selectCurrency}
                                    <div class="col-4">
                                        <a href="#" class="item{if $activeCurrency.id == $selectCurrency.id} active{/if}" data-value="{$selectCurrency.id}">
                                            {$selectCurrency.prefix} {$selectCurrency.code}
                                        </a>
                                    </div>
                                {/foreach}
                            </div>
                        {/if}
                    </div>
                    <div class="modal-footer">
                        <button type="submit" class="btn btn-default">{lang key='apply'}</button>
                    </div>
                </div>
            </div>
        </div>
    </form>

    {if !$loggedin && $adminLoggedIn}
        <a href="{$WEB_ROOT}/logout.php?returntoadmin=1" class="btn btn-return-to-admin" data-toggle="tooltip" data-placement="bottom" title="{if $adminMasqueradingAsClient}{lang key='adminmasqueradingasclient'} {lang key='logoutandreturntoadminarea'}{else}{lang key='adminloggedin'} {lang key='returntoadminarea'}{/if}">
            <i class="fas fa-redo-alt"></i>
            <span class="d-none d-md-inline-block">{lang key="admin.returnToAdmin"}</span>
        </a>
    {/if}

    {include file="$template/includes/generate-password.tpl"}

    {$footeroutput}

</body>
</html>
