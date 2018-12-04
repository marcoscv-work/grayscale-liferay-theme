# grayscale-liferay-theme

![grayscale thumbnail](https://raw.githubusercontent.com/marcoscv-work/grayscale-liferay-theme/blob/master/src/images/thumbnail.png)

Grayscale liferay theme is a Liferay 7.1 / 7.2 theme based in the great bootstrap theme called [grayscale](https://github.com/BlackrockDigital/startbootstrap-grayscale) created by [Start Bootstrap](http://startbootstrap.com/). under the MIT license.

__The theme is under construction and in 'demo mode', soon I will migrate the contents to a site template inicializer__

The steps to move this bootstrap theme in liferay was:

- Copy the grayscale SCSS files to the `/css/vendor/crative-css-files` directory
- Load the SCSS individually from `_custom.scss`
- Locate the general components and wrape them inside the ID #main > `_custom.scss`
- Copy the plugin files to JS and CSS directories `/vendor/*`
- Load google fonts by URL from `portal_normal.ftl`
- Perform the loading of the JS individually from `portal_normal.ftl`
- Adapt new markup for `navigation.ftl` with the grayscale theme navbar
- Adapt marked as the `<sections>` to Liferay
- Create an SCSS file called `liferay_fixes` to correct conflicts, loaded the last of the scss files.
- Create example content with the theme markup until create a site template
- Add styles to avoid the main nav overlapping when you are a Liferay administrator and can see the control menu
- Use only the font awesome files needed to make it work
- Change the images src to an absolute URL from theme demo site


__To use the theme in a Liferay portal 7.1 / 7.2 please:__

- Clone the repo by `git clone https://github.com/marcoscv-work/grayscale-liferay-theme.git`
- Install dependencies `npm i`
- Configurate the deploy mode by provide bundle directory location `gulp init`
- Build and deploy the theme `gulp deploy`