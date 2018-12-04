<!DOCTYPE html>

<#include init />

<html class="${root_css_class}" dir="<@liferay.language key="lang.dir" />" lang="${w3c_language_id}">

<head>
	<title>${the_title} - ${company_name}</title>

	<meta content="initial-scale=1.0, width=device-width" name="viewport" />

	<@liferay_util["include"] page=top_head_include />

    <link href="https://fonts.googleapis.com/css?family=Varela+Round" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
</head>

<body class="${css_class}">

<@liferay_util["include"] page=body_top_include />

<@liferay.control_menu />

<div class="pt-0" id="wrapper">
	<header id="banner" role="banner">
		<#if has_navigation || !is_signed_in>
			<#include "${full_templates_path}/navigation.ftl" />
		</#if>
	</header>

	<section class="pt-0" id="content">
		<#if show_example_content>
			<#include "${full_templates_path}/example_content.ftl" />
		</#if>

		<#if selectable>
			<div class="container-fluid">
				<@liferay_util["include"] page=content_include />
			</div>
		<#else>
			${portletDisplay.recycle()}

			${portletDisplay.setTitle(the_title)}

			<@liferay_theme["wrap-portlet"] page="portlet.ftl">
				<@liferay_util["include"] page=content_include />
			</@>
		</#if>

		<#if show_footer>
			<#include "${full_templates_path}/footer.ftl" />
		</#if>
	</section>
</div>

<script src="js/grayscale.min.js"></script>

<@liferay_util["include"] page=body_bottom_include />

<@liferay_util["include"] page=bottom_include />

<!-- Plugin JavaScript -->
<script src="${javascript_folder}/vendor/jquery-easing/jquery.easing.js"></script>

<!-- Custom scripts for this template -->
<script src="${javascript_folder}/vendor/grayscale.js"></script>

<!-- inject:js -->
<!-- endinject -->

</body>

</html>