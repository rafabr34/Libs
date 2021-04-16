# NilUiLib Docs


- 1 \<Table\> NilUiLib.Window(\<Table\>) -- Creates A New Window
  <br/>
  <br/>
  <br/>
  * 1 NilUiLib.Window Table Options:
  <br/>
  
  - RoundSize \<Int\>  Defines How Rounded All The Guis Will Be
  - SizeX \<Int\>  Defines The X Size Of The Window
  - SizeY \<Int\>  Defines The Y Size Of The Window
  - SizeTweenEasingDirection \<Int\>  Defines The Easing Direction Off The Main Window Tween (0 1 2)
  - SizeTweenEasingStyle \<Int\>  Defines The Style Off The Main Window Tween (0 1 2 3 4 5 6 7 8 9 10)
  - SizeTweenTime \<Int\>  Defines The Style Off The Time Off The Main Window Tween
  - CanDrag \<Bool\>  Defines If The User Can Drag The Window
  - CanToggleGui \<Bool\>  Defines If The User Can Toggle The Window
  - SizeTween \<Bool\>  Defines If It Can Tween Size
  <br/>
  <br/>

  
  * 2 Effect \<Table\> Adds A Background Effect, Options:
  <br/>
  <br/>
  - {
  - Type \<String\> -- Defines The Effect Type ("Bubbles")
  - RandomColor \<Bool\>  Defines If The Effect Items Are Color Randomized
  - SpawnOnMouse \<Bool\>  Defines If A Effect Item Will Spawn/Follow Mouse
  - Spawner \<Bool\>  Defines If It Can Spawn Randomly
  - SpawnerSkipRate \<Int\>  Defines The Amount Off Frames It Will Skip Before Generating A Item 
  - MinSize \<Int\>  Defines The Min Size Off A Item
  - MaxSize \<Int\>  Defines The Max Size Off A Item
  - }
  <br/>
  
  * 3 NilUiLib.Window Functions
  - .ToggleShowGuiButton(\<Bool\>)  Defines If The Toggle Gui Button Will Be Visible
  - .SetCanDrag(\<Bool\>)  Defines If The User Can Drag The Gui
  - If Effect Setted To Bubbles: 
  - .ClearBubbles()  Clear All Bubbles
  - .SetBubbles(\<Bool\>)  Toggles The Spawning
  - .SetBubblesOptions(\<Table\>)  Changes All Options Except Type Option
  - .ToggleWindow(\<Bool\>)  Toggles The Main Gui
  - .NewTab(\<Table\>)  Creates A New Tab

- 1 Window.NewTab Table Options
  
