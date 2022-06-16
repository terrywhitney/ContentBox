<cfoutput>
<head>
    <!--- charset --->
    <meta charset="utf-8" />
    <!--- IE Stuff --->
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!--- Robots --->
    <meta name="robots" content="noindex,nofollow" />
    <!--- SES --->
	<base href="#event.getHTMLBaseURL()#" />
    <!--- Title --->
    <cfif event.privateValueExists( "htmlTitle" )>
        <title>#prc.htmlTitle# &mdash; ContentBox Administrator</title>
    <cfelseif structKeyExists( prc, 'oCurrentSite' )>
        <title>#prc.oCurrentSite.getName()# &mdash; ContentBox Administrator</title>
    <cfelse>
        <title>ContentBox Administrator</title>
    </cfif>
    <!--- Description --->
    <meta name="description" content="ContentBox Modular CMS - Admin">
    <!--- Viewport for scaling --->
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <!--- ********************************************************************* --->
    <!---                           FAVICONS                                    --->
    <!--- ********************************************************************* --->
    <!--- Favicon --->
    <link href="#prc.cbroot#/includes/images/favicon.ico" rel="shortcut icon" type="image/x-icon" />
    <!--- For non-Retina iPhone, iPod Touch, and Android 2.2+ devices: --->
    <link href="#prc.cbroot#/includes/images/ContentBox-Circle-57.png" rel="apple-touch-icon"/>
    <!--- For first-generation iPad: --->
    <link href="#prc.cbroot#/includes/images/ContentBox-Circle-72.png" rel="apple-touch-icon" sizes="72x72"/>
    <!--- For iPhone 4 with high-resolution Retina display: --->
    <link href="#prc.cbroot#/includes/images/ContentBox-Circle-114.png" rel="apple-touch-icon" sizes="114x114"/>
    <!-- Favicon -->
    <link href="#prc.cbroot#/includes/images/favicon.ico" rel="shortcut icon" type="image/x-icon" />
    <!--- ********************************************************************* --->
    <!---                           CSS                                           --->
    <!--- ********************************************************************* --->
	<link rel="stylesheet" href="#html.elixirPath( fileName='modules/contentbox/modules/contentbox-admin/includes/css/contentbox.css', manifestRoot="#prc.cbroot#/includes" )#">
	<link rel="stylesheet" href="#html.elixirPath( fileName='modules/contentbox/modules/contentbox-admin/includes/css/theme.css', manifestRoot="#prc.cbroot#/includes" )#">
	<link href='https://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>

    <!--- ********************************************************************* --->
    <!---                           A-LA-CARTE                                  --->
    <!--- ********************************************************************* --->
    <cfloop list="#event.getValue( "cssAppendList", "", true )#" index="css">
        <cfset addAsset( elixirPath( fileName='modules/contentbox/modules/contentbox-admin/includes/css/#css#.css', manifestRoot="#prc.cbroot#/includes" ) )>
    </cfloop>
    <cfloop list="#event.getValue( "cssFullAppendList", "", true )#" index="css">
        <cfset addAsset( "#css#" )>
    </cfloop>

    <!--- ********************************************************************* --->
    <!---                           EVENTS                                      --->
    <!--- ********************************************************************* --->
    <!--- cbadmin Events --->
    <cfif event.getCurrentLayout() EQ 'simple'>
        #announce( "cbadmin_beforeLoginHeadEnd" )#
    <cfelse>
        #announce( "cbadmin_beforeHeadEnd" )#
    </cfif>

    <!--- ********************************************************************* --->
    <!---                            JS LIBRARIES                				--->
    <!--- ********************************************************************* --->
	<script defer src="#html.elixirPath( fileName='modules/contentbox/modules/contentbox-admin/includes/js/runtime.js', manifestRoot="#prc.cbroot#/includes" )#"></script>
	<script defer src="#html.elixirPath( fileName='modules/contentbox/modules/contentbox-admin/includes/js/vendor.js', manifestRoot="#prc.cbroot#/includes" )#"></script>
	<script defer src="#html.elixirPath( fileName='modules/contentbox/modules/contentbox-admin/includes/js/bootstrap.js', manifestRoot="#prc.cbroot#/includes" )#"></script>
	<script defer src="#html.elixirPath( fileName='modules/contentbox/modules/contentbox-admin/includes/js/admin.js', manifestRoot="#prc.cbroot#/includes" )#"></script>
	<script defer src="#html.elixirPath( fileName='modules/contentbox/modules/contentbox-admin/includes/js/app.js', manifestRoot="#prc.cbroot#/includes" )#"></script>

</head>
</cfoutput>
