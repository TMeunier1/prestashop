{debug}
{*
* 2007-2016 PrestaShop
*
* NOTICE OF LICENSE
*
* This source file is subject to the Academic Free License (AFL 3.0)
* that is bundled with this package in the file LICENSE.txt.
* It is also available through the world-wide-web at this URL:
* http://opensource.org/licenses/afl-3.0.php
* If you did not receive a copy of the license and are unable to
* obtain it through the world-wide-web, please send an email
* to license@prestashop.com so we can send you a copy immediately.
*
* DISCLAIMER
*
* Do not edit or add to this file if you wish to upgrade PrestaShop to newer
* versions in the future. If you wish to customize PrestaShop for your
* needs please refer to http://www.prestashop.com for more information.
*
*  @author PrestaShop SA <contact@prestashop.com>
*  @copyright  2007-2016 PrestaShop SA
*  @license    http://opensource.org/licenses/afl-3.0.php  Academic Free License (AFL 3.0)
*  International Registered Trademark & Property of PrestaShop SA
*}
{if isset($HOOK_HOME_TAB_CONTENT) && $HOOK_HOME_TAB_CONTENT|trim}
    {if isset($HOOK_HOME_TAB) && $HOOK_HOME_TAB|trim}
        <ul id="home-page-tabs" class="nav nav-tabs clearfix">
			{$HOOK_HOME_TAB}
		</ul>
	{/if}
	<div class="tab-content">{$HOOK_HOME_TAB_CONTENT}<h1>{$meta_title}</h1>
    {assign var="count" value= 5 - $cart_qties}
    {if $cart_qties >= 5}
        <h2>{l s="Congratulations, you benefit of a free shipping because you have more than 5 articles on your cart !"}</h2>
    {else}
    <h2>{l s="You can benefit of a free shipping if you buy at least %d more articles" sprintf=$count}</h2>
    {/if}
    </div>
    {l s='Hello World'}
    {l|truncate s="This is a text who have about 10-20 characters, maybe more now I don't know I didn't count, but it seems to be way more than 10-20 characters, 100 maybe ? Who knows, I'll ask Iandry to count the numbers of characters, that way I'll know."}
{/if}
{if isset($HOOK_HOME) && $HOOK_HOME|trim}
	<div class="clearfix">{$HOOK_HOME}</div>
{/if}
