{*
* 2013 Ha!*!*y
*
* NOTICE OF LICENSE
*
* This source file is subject to the Academic Free License (AFL 3.0)
* It is available through the world-wide-web at this URL:
* http://opensource.org/licenses/afl-3.0.php
*
* DISCLAIMER
* This code is provided as is without any warranty.
* No promise of being safe or secure
*
*  @author      Ha!*!*y 
*  @copyright   2013 Ha!*!*y
*  @license     http://opensource.org/licenses/afl-3.0.php  Academic Free License (AFL 3.0)
*}

{include file="$tpl_dir./errors.tpl"}

<br/>
{if $fbconnect_psb_status == 'error_1'}
	<div class="error">
		<p>{l s='The Facebook account is already linked to another account.' mod='fbconnect_psb'} {if isset($fbconnect_psb_fb_picture)}<br/><br/> <a href="{$fbconnect_psb_fb_link}" target="_blank"><img src="{$fbconnect_psb_fb_picture}"></a> <a href="{$fbconnect_psb_fb_link}" target="_blank">{$fbconnect_psb_fb_name}</a>{/if}</p>
	</div>
{else if $fbconnect_psb_status == 'error_2'}
	<div class="error">
		<p>{l s='Sorry, there was a error when we tried to link your account with Facebook. Our Site admin has been notified of error, once it\'s resolved you will be sent a email notice.' mod='fbconnect_psb'} {if isset($fbconnect_psb_fb_picture)}<br/><br/> <a href="{$fbconnect_psb_fb_link}" target="_blank"><img src="{$fbconnect_psb_fb_picture}"></a> <a href="{$fbconnect_psb_fb_link}" target="_blank">{$fbconnect_psb_fb_name}</a>{/if}</p>
	</div>    
{else if $fbconnect_psb_status == 'linked'}
	<div class="success">
		<p>{l s='The Facebook account is already linked to your account.' mod='fbconnect_psb'}<br/><br/> <a href="{$fbconnect_psb_fb_link}" target="_blank"><img src="{$fbconnect_psb_fb_picture}"></a> <a href="{$fbconnect_psb_fb_link}" target="_blank">{$fbconnect_psb_fb_name}</a></p>
	</div>
{else if $fbconnect_psb_status == 'conform'}
	<div class="success">
		<p>{l s='Your Facebook account has been linked to account.' mod='fbconnect_psb'}<br/><br/> <a href="{$fbconnect_psb_fb_link}" target="_blank"><img src="{$fbconnect_psb_fb_picture}"></a> <a href="{$fbconnect_psb_fb_link}" target="_blank">{$fbconnect_psb_fb_name}</a></p>
	</div>
{else if $fbconnect_psb_status == 'login'}
	<div class="error">
		<p>{$fbconnect_psb_massage}<br/><a href="{$fbconnect_psb_loginURL}">Log in to Facebook</a></p>
	</div>
{else}
	<div class="error">
		<p>{l s='Sorry, there was error with Facebook Profile Connect.' mod='fbconnect_psb'}</p>
	</div>
{/if}
<br/>
