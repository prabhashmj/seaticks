<!DOCTYPE html>


<!--[if !IE]><!-->
<html lang="$ContentLocale">
<!--<![endif]-->
<!--[if IE 6 ]><html lang="$ContentLocale" class="ie ie6"><![endif]-->
<!--[if IE 7 ]><html lang="$ContentLocale" class="ie ie7"><![endif]-->
<!--[if IE 8 ]><html lang="$ContentLocale" class="ie ie8"><![endif]-->
<head>
	<% base_tag %>
	<title><% if $MetaTitle %>$MetaTitle<% else %>$Title<% end_if %> &raquo; $SiteConfig.Title</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	$MetaTags(false)
	<!--[if lt IE 9]>
	<script src="//html5shiv.googlecode.com/svn/trunk/html5.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
	<![endif]-->
	<% require themedCSS('bootstrap.min') %>
	<% require themedCSS('glyphicon') %>
	<% require themedCSS('photo-sphere-viewer.min') %>
	<% require themedCSS('markers') %>
	<% require themedCSS('style1') %>
	<% require themedCSS('reset') %>
	<% require themedCSS('typography') %>
	<% require themedCSS('form') %>
	<% require themedCSS('layout') %>
	<link rel="shortcut icon" href="$resourceURL('themes/seaticks/images/favicon1.ico')" />
</head>
<body class="$ClassName.ShortName<% if not $Menu(2) %> no-sidebar<% end_if %>" <% if $i18nScriptDirection %>dir="$i18nScriptDirection"<% end_if %>>

<div id="fb-root"></div>
<script async defer crossorigin="anonymous" src="https://connect.facebook.net/en_GB/sdk.js#xfbml=1&version=v7.0" nonce="tAi4N0Y5"></script>

<nav style="transition: 0.3s" class="navbar navbar-expand-md navbar-light bg-light">
    <div class="container-fluid">

        <a class="navbar-brand" href="/"><img src="$resourceURL('themes/seaticks/images/logo seatickscom.png')" style="max-height: 18vw"></a>
        <button style="margin-top: 40px; margin-left: 30px; max-height: 40px;" type="button" id="signUpButton" class="btn btn-outline-primary btn-md ">Sign In</button>

        <% include Header %>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive">

            <span class="navbar-toggler-icon">

            </span>
        </button>

        <div class="collapse navbar-collapse" id="navbarResponsive">


            <ul class="navbar-nav ml-auto" style="margin-top: 80px">
                <% loop $Menu(1) %>
                    <li style="padding-left: 20px">
                        <a href="$Link" title="Go to the $Title page" class="<% if $isCurrent %>current<% else_if $isSection %>section<% end_if %>">
                            $MenuTitle
                        </a>

                        <% if $isSection %>
                            <% if $Children %>
                                <ul class="secondary">
                                    <% loop $Children %>
                                        <li class="<% if $isCurrent %>current<% else_if $isSection %>section<% end_if %>"><a href="$Link">$MenuTitle</a></li>
                                    <% end_loop %>
                                </ul>
                            <% end_if %>
                        <% end_if %>
                    </li>
                <% end_loop %>
            </ul>
        </div>


    </div>
</nav>




<div>

	<div class="<% if $ClassName.ShortName != 'CanvasPage' %>inner<% end_if %> typography line">
		$Layout


	</div>
    <%--$form--%>
</div>
<% include Footer %>

<script src="$resourceURL('themes/seaticks/client/dist/bundle.js')"></script>

</body>
</html>

<% require javascript('//code.jquery.com/jquery-3.3.1.min.js') %>
<% require themedJavascript('script') %>
