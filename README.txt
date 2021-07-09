# NilUiLib Docs

## Not Added Yet
### May Add



  <Table> NilUiLib.Window(<Table>) Creates A New Window



     NilUiLib.Window Table Options:

     RoundSize <Int>  {Defines How Rounded All The Guis Will Be}
     SizeX <Int>  {Defines The X Size Of The Window}
     SizeY <Int>  {Defines The Y Size Of The Window}
     SizeTweenEasingDirection <Int>  Defines The Easing Direction Off The Main Window Tween (0 1 2)
     SizeTweenEasingStyle <Int>  Defines The Style Off The Main Window Tween (0 1 2 3 4 5 6 7 8 9 10)
     SizeTweenTime <Int>  Defines The Style Off The Time Off The Main Window Tween
     CanDrag <Bool>  Defines If The User Can Drag The Window
     CanToggleGui <Bool>  Defines If The User Can Toggle The Window
     SizeTween <Bool>  Defines If It Can Tween Size



     Effect <Table> Adds A Background Effect, Options:

      Type <String>  Defines The Effect Type ("Bubbles")
      RandomColor <Bool>  Defines If The Effect Items Are Color Randomized
      SpawnOnMouse <Bool>  Defines If A Effect Item Will Spawn/Follow Mouse
      Spawner <Bool>  Defines If It Can Spawn Randomly
      SpawnerSkipRate <Int>  Defines The Amount Off Frames It Will Skip Before Generating A Item 
      MinSize <Int>  Defines The Min Size Off A Item
      MaxSize <Int>  Defines The Max Size Off A Item


      NilUiLib.Window Functions
       .ToggleShowGuiButton(<Bool>)  Defines If The Toggle Gui Button Will Be Visible
       .SetCanDrag(<Bool>)  Defines If The User Can Drag The Gui
       .ToggleWindow(<Bool>) Defines If The Window Is Visible
       <Table> .Notify(<Table>) Notify The User
       <Table> .NewTab(<Table>) Creates A New Tab

      IF Effect Setted To Bubbles: 
        .ClearBubbles()  Clear All Bubbles
        .SetBubbles(<Bool>)  Toggles The Spawning
        .SetBubblesOptions(<Table>)  Changes All Options Except Type Option



  Window.NewTab Table Options
   TabName <String> The Name Of The New Tab

  Window.NewTab Functions
   <Table> .Label(<Table>)
   <Table> .Button(<Table>)
   <Table> .Toggle(<Table>)
   <Table> .ViewportFrame(<Table>)
   <Table> .Dropdown(<Table>)
   <Table> .Slider(<Table>)
   <Table> .TextBox(<Table>)

  Label Options:
   Text <String>

  Label Functions:
   :UpdateText(<String>) Sets The Current Text
   <String> :GetText() Gets The Current Text
   :Toggle(<Bool>) Sets If The Label Is Visible


  Button Options:
    Text <String> 
    Callback <Function> Defines The Function It Will Use For Callback, Returns: <Void>

  Button Functions:
    :UpdateText(<String>) Sets A New Button Text
    :ForceFire() Fires The Connected Function
    :Disconnect() Desconnect The Function
    :Reconnect(<Function>) Connects A Function If The Main Function Was Disconnected
    <String> :GetText() Returns The Current Text
    :Toggle(<Bool>) Toggles If The Button Is Visible Or Not


  Toggle Options:
    Text <String> Defines The Text Off The Toggle
    Callback <Function> Defines The Function It Will Use For Callback, Returns: <Bool>

   Toggle Functions:
    :SetState(<Bool>) Sets The Toggled State
    :Toggle(<Bool>) Defines If The Toggle Button Will Be Visible Or Not
    :LockToggle(<Bool>) Locks The Toggle To Its Current State (SetState Can Still Be Used)
    :SetStateNoCallback(<Bool>) Sets The Toggled State But Without Callback
    :UpdateText(<String>) Sets The Toggle Text
    <String> :GetText() Returns The Current Text

  ViewportFrame Options:
    SizeY <Int> Defines The Y Size Off The ViewportFrame
    UserAbsoluteControl <Bool> Defines If The User Can Move The Camera
    Items <Table> Defines The Items That Will Be Showed In The ViewportFrame
    ShowZoomLabel <Bool> Defines If The Zoom Label Is Visible
    RotateCameraWhenIdle <Bool> Defines If The Camera Can Rotate When The User Mouse Is Outside The Frame

  ViewportFrame Functions:
    :Toggle(<Bool>) Defines If The ViewportFrame Will Be Visible Or Not
    :ClearModel() Clears All Items in The ViewPort
    :CloneAndSetItems(<Table>) Clones Set The Items In The Model
    :SetSensibility(<Int>) Sets The Move Arrows Sensibility
    :GetSensibility() Returns The Sensibility
    :GetZoom() Returns The Current Zoom
    :GetViewportFrameInstance() Returns The Actual ViewportFrame WARNING: If You Modify It, It Can Make An Exeption Or Stop Working
    :GetViewportModel() Returns The Model That All Cloned Intances Are Saved
    :SetZoom(<Int>) Sets The Current Zoom


  Dropdown Options:
    PlaceHolderText <String> Defines The Text When Nothing Is Selected
    Callback <Function> Defines The Function It Will Use For Callback, Returns: <String>
    Text <String> Defines The Text When Something Is Selected
    Options <Table> Sets The Options

  Dropdown Functions:
   :Update(<Table>) Updates All Items With the New Table
   :Add(<String>) Adds A Item
   :Clear() Clear All Items
   :UpdateText(<String>) Sets The Main Text (Wont Overwrite The "Text" Option)
   :GetText() Returns The Text
   :GetSelected() Returns The Current Text
   :Toggle(<Bool>) Defines If The Dropdown Will Be Visible Or Not


  Slider Options:
    Text <String> Defines The Text Of The Slider
    Min <Int> Defines The Min Value
    Max <Int> Defines The Max Value
    Callback <Function> Defines The Function It Will Use For Callback, Returns: <Number>

  Slider Functions:
    <String> :GetText() Returns The  Current Text
    :UpdateText(<String>) Sets The  Current Text
    <Number> :GetValue() Returns The  Current Value


  TextBox Options
    PlaceholderText <String> Defines The PlaceholderText
    Text <String> Defines The Text
    Callback <Function> Defines The Function It Will Use For Callback, Returns: <String>,<Bool>,<KeyInputInstance>
    
    
    
<Table> NilUiLib.Notify(<Table>) Notifys The User

  NilUiLib.Notify Table Options
  
    Title <String> The Notification Title
    Text <String> The Notification Description Or Text
    
    Timeout <Int> 
    0 For A Undefined Time Notification,
    -1 For A Non Time/Pending Animation/Behavior Notification,
    -10 For A Loading Type Based In Percentage (To Update Use The .UpdatePercentage(<Float> Current,<Float> Target) Function)
    
    OnTimeout <Function> The Function It Will Call On Timeout
    ##Button1 <Table> Button1 Used In Callback nil For None {Text <String>,Callback <Function>}
    ##Button2 <Table> Button2 Used In Callback nil For None {Text <String>,Callback <Function>}
    ##Button3 <Table> Button3 Used In Callback nil For None {Text <String>,Callback <Function>}
    ScreenSide <String> The Side Of The Screen The Notification Will Spawn ("BottomLeft","BottomRight","TopLeft","TopRight")
    ##OnOverload <Function> Defines A Function When The Notification Is Dumped

    
  NilUiLib.Notify Functions
    .StopAllAnimations()
    .SetPercentage(<Float> Current,<Float> Target)
    .ClearNotif()
    :UpdateText(<String>)
    :UpdateTitle(<String>)
