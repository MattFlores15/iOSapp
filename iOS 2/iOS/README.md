<script type="text/javascript">
tinymce.init({
    selector: "textarea",
    plugins: [
        "advlist autolink lists link image charmap print preview anchor",
        "searchreplace visualblocks code fullscreen",
        "insertdatetime media table contextmenu paste"
    ],
    toolbar: "insertfile undo redo | styleselect | bold italic | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | link image",
	formats: {
		alignleft: {selector: 'p,h1,h2,h3,h4,h5,h6,td,th,div,ul,ol,li,table,img', classes: 'myleft'},
		aligncenter: {selector: 'p,h1,h2,h3,h4,h5,h6,td,th,div,ul,ol,li,table,img', classes: 'mycenter'},
		alignright: {selector: 'p,h1,h2,h3,h4,h5,h6,td,th,div,ul,ol,li,table,img', classes: 'myright'},
		alignfull: {selector: 'p,h1,h2,h3,h4,h5,h6,td,th,div,ul,ol,li,table,img', classes: 'myfull'}
	},
	forced_root_block: false
});
</script>


<div align="center">
<h1 align="center">
  <br>
<img src="https://git.fhict.nl/I477203/section-3-game-guides-app/-/raw/main/gitmedia/applogo-upscaled.png" alt="Markr Logo" align="center" width="200"></img>
  <br>
  GuideMania - Video Game Guides App
  <br>
</h1>

<h4 align="center">Guide yourself to success</h4>
</div>
<br>


# Section 2 - GuideMania - VG guides app

A page for our IOS project
GuideMania
Guide yourself to success

## Download
Download the code to our project [here](https://git.fhict.nl/I477203/section-3-game-guides-app/-/raw/main/PoC.zip)

## Description
In this project, we designed and developed an IOS app tailored toward an older demographic of people that play video games.<br>
Videogames back in the day were very short because of the hardware limitation, which is also why old games from the nes era (1985-1995) were made to be difficult so that players wouldn't be able to finish the video game too quickly.<br>Nowadays however hardware limitations like that are no longer an issue, which is why games have gotten easier but much longer and more complex. <br>And the longer the game, the higher the chance that less experienced players can get stuck which will prevent them from progressing.
This is especially something that happens more often for people of an older demographic who still enjoy video games. <br>This is why we developed an app that is filled with guides specified for the older crowd to follow so that anyone can complete even the longest and most complicated of games.

## Visuals

<div>
<h4>
Prototype Showcase
</h4>

> Video might take a while to load
<br>
<img align="center" src="https://git.fhict.nl/I477203/section-3-game-guides-app/-/raw/main/gitmedia/FinalProtoGif.gif" alt="Prototype" width="300"/>


<h4 >
App Demo Showcase
</h4>

> Video might take a while to load
<br>
<img src="https://git.fhict.nl/I477203/section-3-game-guides-app/-/raw/main/gitmedia/FinalAppGif.gif" alt="Demo" width="300"/>
</div>




## Features

- Dark themed interface that's easy on the eyes
- Discover page that shows random guides to the user
https://git.fhict.nl/I477203/section-3-game-guides-app/-/blob/master/PoC/PoC/Screens/DiscoverView.swift#L53
- Guides are loaded from an api (currently hardcoded in the app)
https://git.fhict.nl/I477203/section-3-game-guides-app/-/blob/master/PoC/PoC/Services/MockService.swift#L5
``
https://git.fhict.nl/I477203/section-3-game-guides-app/-/blob/master/PoC/PoC/DataObjects/GuideDataObject.swift#L5
- Search engine to allow the user to look for games and guides in our app
https://git.fhict.nl/I477203/section-3-game-guides-app/-/blob/4d6bd0c1192ea78cfc7d593a776ea2c6dd8fb7eb/PoC/PoC/Search/SearchObservableObject.swift#L3
``
https://git.fhict.nl/I477203/section-3-game-guides-app/-/blob/master/PoC/PoC/Search/SearchView.swift#L12
- Results filtered in sections


## Authors and acknowledgment
 * Matias Flores

 * Tom van Weersch

## License
Fontys University of Applied Sciences - 2022

