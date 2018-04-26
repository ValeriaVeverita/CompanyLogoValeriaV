local composer = require( "composer" )

--give the name to the scene
sceneName = "splash_screen"

--creating scene object 
local scene = composer.newScene(sceneName)


--------------------------------------------------------------------------------------
--LOCAL VARIABLES
--------------------------------------------------------------------------------------
--local variables for this scene
--company logo
local bkg
local companyLogo
local companyFire
local companyFire2
local companyFire3
local companyFire4
local companyFire5
local companyFire6
local companyFire7
local companyFire8
local companyFire9

--copany name
local name1
local name2
local name3
local name4
local name5
local name6
local name7
local name8
local name9

--sound variables
local bkgSound
local bkgChannel
local titleSound
local titleChannel

--letters
local vLetter
local gLetter
--------------------------------------------------------------------------------------
--LOCAL FUNCTIONS
--------------------------------------------------------------------------------------

local function setFire( )
    bkgChannel = audio.play(bkgSound)
   transition.to(gLetter, {alpha = 0, time = 1200})
   transition.to(vLetter, {alpha = 0, time = 1200})
   transition.to(companyFire, {alpha = 1, time = 1300})
   transition.to(companyFire2,{alpha = 1, time = 1700})
   transition.to(companyFire, {alpha = 0, time = 1700})
   transition.to(companyFire3, {alpha = 1, time = 1800})
   transition.to(companyFire2, {alpha = 0, time = 1800})
   transition.to(companyFire4, {alpha = 1, time = 1900})
   transition.to(companyFire3, {alpha = 0, time = 1900})
   transition.to(companyFire5, {alpha = 1, time = 1950})
   transition.to(companyFire4, {alpha = 0, time = 1950})
   transition.to(companyFire6, {alpha = 1, time = 2000})
   transition.to(companyFire5, {alpha = 0, time = 2000})
   transition.to(companyFire7, {alpha = 1, time = 2050})
   transition.to(companyFire6, {alpha = 0, time = 2050})
   transition.to(companyFire8, {alpha = 1, time = 2100})
   transition.to(companyFire7, {alpha = 0, time = 2100})
   transition.to(companyFire9, {alpha = 1, time = 2150})
   transition.to(companyFire8, {alpha = 0, time = 2150})
end

local function burnName( )
    transition.to(name, {alpha = 1, time = 1200})
    transition.to(name2, {alpha = 1, time = 1500})
    transition.to(name, {alpha = 0, time = 1500})
    transition.to(name3, {alpha = 1, time = 1800})
    transition.to(name2, {alpha = 0, time = 1800})
    transition.to(name4, {alpha = 1, time = 2100})
    transition.to(name3, {alpha = 0, time = 2100})
    transition.to(name5, {alpha = 1, time = 2300})
    transition.to(name4, {alpha = 0, time = 2300})
    transition.to(name6, {alpha = 1, time = 2500})
    transition.to(name5, {alpha = 0, time = 2500})
    transition.to(name7, {alpha = 1, time = 2600})
    transition.to(name6, {alpha = 0, time = 2600})
    transition.to(name8, {alpha = 1, time = 2700})
    transition.to(name7, {alpha = 0, time = 2700})
    transition.to(name9, {alpha = 1, time = 2800})
    transition.to(name8, {alpha = 0, time = 2800})
end

local function titlePlay( )
    titleChannel = audio.play(titleSound)
end

local function screenTransition( )
    composer.gotoScene("main_menu", {effect = "fade"})
end

local function moveLetters()
    transition.to(gLetter, {time = 1500, x = 510, y = 380})
    transition.to(vLetter, {time = 1500, x = 500, y = 400})
end
-- -----------------------------------------------------------------------------------
-- Scene event functions
-- -----------------------------------------------------------------------------------
 
-- create()
function scene:create( event )
 
    local sceneGroup = self.view
    -- Code here runs when the scene is first created but has not yet appeared on screen

    --create the background of the scene
    bkg = display.newImageRect("Images/background.png", display.contentWidth, display.contentHeight+30)
    --set the position
    bkg.x = 510
    bkg.y = 390
    --associating displayed objects to these scene
    sceneGroup:insert(bkg)
    --set the background image to back
    bkg:toBack()

    --create the sound
    --background sound
    bkgSound = audio.loadStream("Sounds/fire.mp3")
    --title sound
    titleSound = audio.loadStream("Sounds/title.mp3")


    --------------------------------------------------------------------------------------------
    --OBJECT CREATION
    --------------------------------------------------------------------------------------------

    --create the first layer of the fire image
    companyFire = display.newImage("Images/fireText (1).png")
    --set the position, the size and visibility
    companyFire.x = display.contentWidth/2
    companyFire.y = display.contentHeight/2
    companyFire:scale(0.68, 0.68)
    companyFire.alpha = 0
    sceneGroup:insert(companyFire)

    --create the first layer of the fire image
    companyFire2 = display.newImage("Images/fireText2.png")
    --set the position, the size and visibility
    companyFire2.x = display.contentWidth/2
    companyFire2.y = display.contentHeight/2
    companyFire2:scale(0.68, 0.68)
    companyFire2.alpha = 0
    sceneGroup:insert(companyFire2)

    --create the first layer of the fire image
    companyFire3 = display.newImage("Images/fireText3.png")
    --set the position, the size and visibility
    companyFire2.x = display.contentWidth/2
    companyFire3.y = display.contentHeight/2
    companyFire3:scale(0.68, 0.68)
    companyFire3.alpha = 0
    sceneGroup:insert(companyFire3)

    --create the first layer of the fire image
    companyFire4 = display.newImage("Images/fireText4.png")
    --set the position, the size and visibility
    companyFire4.x = display.contentWidth/2
    companyFire4.y = display.contentHeight/2
    companyFire4:scale(0.68, 0.68)
    companyFire4.alpha = 0
    sceneGroup:insert(companyFire4)

    --create the first layer of the fire image
    companyFire5 = display.newImage("Images/fireText5.png")
    --set the position, the size and visibility
    companyFire5.x = display.contentWidth/2
    companyFire5.y = display.contentHeight/2
    companyFire5:scale(0.68, 0.68)
    companyFire5.alpha = 0
    sceneGroup:insert(companyFire)

    --create the first layer of the fire image
    companyFire6 = display.newImage("Images/fireText6.png")
    --set the position, the size and visibility
    companyFire6.x = display.contentWidth/2
    companyFire6.y = display.contentHeight/2
    companyFire6:scale(0.68, 0.68)
    companyFire6.alpha = 0
    sceneGroup:insert(companyFire6)

    --create the first layer of the fire image
    companyFire7 = display.newImage("Images/fireText7.png")
    --set the position, the size and visibility
    companyFire7.x = display.contentWidth/2
    companyFire7.y = display.contentHeight/2
    companyFire7:scale(0.68, 0.68)
    companyFire7.alpha = 0
    sceneGroup:insert(companyFire7)

    --create the first layer of the fire image
    companyFire8 = display.newImage("Images/fireText8.png")
    --set the position, the size and visibility
    companyFire8.x = display.contentWidth/2
    companyFire8.y = display.contentHeight/2
    companyFire8:scale(0.68, 0.68)
    companyFire8.alpha = 0
    sceneGroup:insert(companyFire8)

    --create the first layer of the fire image
    companyFire9 = display.newImage("Images/fireText9.png")
    --set the position, the size and visibility
    companyFire9.x = display.contentWidth/2
    companyFire9.y = display.contentHeight/2
    companyFire9:scale(0.68, 0.68)
    companyFire9.alpha = 0
    sceneGroup:insert(companyFire9)

    -- CREATE THE NAME OF THE COMPANY
    --create the first layer
    name = display.newImage("Images/GameVille1.png")
    --set the position, size and visibility
    name.x = display.contentWidth/2+20
    name.y = 700
    name:scale(0.5, 0.5)
    name.alpha = 0
    sceneGroup:insert(name)

    --create the second layer
    name2 = display.newImage("Images/GameVille2.png")
    --set the position, size and visibility
    name2.x = display.contentWidth/2+20
    name2.y = 700
    name2:scale(0.5, 0.5)
    name2.alpha = 0
    sceneGroup:insert(name2)

    --create the third layer
    name3 = display.newImage("Images/GameVille3.png")
    --set the position, size and visibility
    name3.x = display.contentWidth/2+20
    name3.y = 700
    name3:scale(0.5, 0.5)
    name3.alpha = 0
    sceneGroup:insert(name3)
     
    --create the fourth layer
    name4 = display.newImage("Images/GameVille4.png")
    --set the position, size and visibility
    name4.x = display.contentWidth/2+20
    name4.y = 700
    name4:scale(0.5, 0.5)
    name4.alpha = 0
    sceneGroup:insert(name4)

    --create the fifth layer
    name5 = display.newImage("Images/GameVille5.png")
    --set the position, size and visibility
    name5.x = display.contentWidth/2+20
    name5.y = 700
    name5:scale(0.5, 0.5)
    name5.alpha = 0
    sceneGroup:insert(name5)

    --create the sixth layer
    name6 = display.newImage("Images/GameVille6.png")
    --set the position, size and visibility
    name6.x = display.contentWidth/2+20
    name6.y = 700
    name6:scale(0.5, 0.5)
    name6.alpha = 0
    sceneGroup:insert(name6)

    --create the seventh layer
    name7 = display.newImage("Images/GameVille7.png")
    --set the position, size and visibility
    name7.x = display.contentWidth/2+20
    name7.y = 700
    name7:scale(0.5, 0.5)
    name7.alpha = 0
    sceneGroup:insert(name7)

    --create the eighth layer
    name8 = display.newImage("Images/GameVille8.png")
    --set the position, size and visibility
    name8.x = display.contentWidth/2+20
    name8.y = 700
    name8:scale(0.5, 0.5)
    name8.alpha = 0
    sceneGroup:insert(name8)

    --create the nineth layer
    name9 = display.newImage("Images/GameVille9.png")
    --set the position, size and visibility
    name9.x = display.contentWidth/2+20
    name9.y = 700
    name9:scale(0.5, 0.5)
    name9.alpha = 0
    sceneGroup:insert(name9)

    ------------------------------------------------------------------------------
    --CREATE THE LETTERS
    ------------------------------------------------------------------------------

    vLetter = display.newImage("Images/V letter.png")
    --set the possition, size and visibility
    vLetter.x = 1000
    vLetter.y = 1100
    vLetter:scale(1.2, 1.2)
    sceneGroup:insert(vLetter)


    gLetter = display.newImage("Images/G letter.png")
    --set the possition, size and visibility
    gLetter.x = -200
    gLetter.y = -200
    gLetter:scale(1.2, 1.2)
    sceneGroup:insert(gLetter)

 
    ----------------------------------------------------------------------------------------------------
    --CALL THE FUNCTIONS
    ----------------------------------------------------------------------------------------------------
    moveLetters()
    timer.performWithDelay(1500, setFire)
    timer.performWithDelay(1500, burnName)
    timer.performWithDelay(3000, titlePlay)
    timer.performWithDelay(4000, screenTransition)
end
 
 
-- show()
function scene:show( event )
 
    local sceneGroup = self.view
    local phase = event.phase
 
    if ( phase == "will" ) then
        -- Code here runs when the scene is still off screen (but is about to come on screen)
 
    elseif ( phase == "did" ) then
        -- Code here runs when the scene is entirely on screen
 
    end
end
 
 
-- hide()
function scene:hide( event )
 
    local sceneGroup = self.view
    local phase = event.phase
 
    if ( phase == "will" ) then
        -- Code here runs when the scene is on screen (but is about to go off screen)
 
    elseif ( phase == "did" ) then
        -- Code here runs immediately after the scene goes entirely off screen
 
    end
end
 
 
-- destroy()
function scene:destroy( event )
 
    local sceneGroup = self.view
    -- Code here runs prior to the removal of scene's view
 
end
 
 
-- -----------------------------------------------------------------------------------
-- Scene event function listeners
-- -----------------------------------------------------------------------------------
scene:addEventListener( "create", scene )
scene:addEventListener( "show", scene )
scene:addEventListener( "hide", scene )
scene:addEventListener( "destroy", scene )
-- -----------------------------------------------------------------------------------
 
return scene