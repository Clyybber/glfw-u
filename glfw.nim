
const GlfwLib = when defined(windows):
                  "glfw3.dll"
                elif defined(macosx):
                  "libglfw.3.dylib"
                else:
                  "libglfw.so.3"

type
  Monitor* = pointer
  Window* = pointer
  CursorHandle* = pointer

type
  VkInstance* = pointer
  VkPhysicalDevice* = pointer
  VkAllocationCallbacks* = pointer
  VkSurfaceKHR* = pointer
  VkResult* = cint


const
  VERSION_MAJOR* = 3


const
  VERSION_MINOR* = 3


const
  VERSION_REVISION* = 0


const
  TRUE* = 1


const
  FALSE* = 0


const
  RELEASE* = 0


const
  PRESS* = 1


const
  REPEAT* = 2


const
  HAT_CENTERED* = 0
  HAT_UP* = 1
  HAT_RIGHT* = 2
  HAT_DOWN* = 4
  HAT_LEFT* = 8
  HAT_RIGHT_UP* = (HAT_RIGHT or HAT_UP)
  HAT_RIGHT_DOWN* = (HAT_RIGHT or HAT_DOWN)
  HAT_LEFT_UP* = (HAT_LEFT or HAT_UP)
  HAT_LEFT_DOWN* = (HAT_LEFT or HAT_DOWN)


const
  KEY_UNKNOWN* = -1


const
  KEY_SPACE* = 32
  KEY_APOSTROPHE* = 39
  KEY_COMMA* = 44
  KEY_MINUS* = 45
  KEY_PERIOD* = 46
  KEY_SLASH* = 47
  KEY_0* = 48
  KEY_1* = 49
  KEY_2* = 50
  KEY_3* = 51
  KEY_4* = 52
  KEY_5* = 53
  KEY_6* = 54
  KEY_7* = 55
  KEY_8* = 56
  KEY_9* = 57
  KEY_SEMICOLON* = 59
  KEY_EQUAL* = 61
  KEY_A* = 65
  KEY_B* = 66
  KEY_C* = 67
  KEY_D* = 68
  KEY_E* = 69
  KEY_F* = 70
  KEY_G* = 71
  KEY_H* = 72
  KEY_I* = 73
  KEY_J* = 74
  KEY_K* = 75
  KEY_L* = 76
  KEY_M* = 77
  KEY_N* = 78
  KEY_O* = 79
  KEY_P* = 80
  KEY_Q* = 81
  KEY_R* = 82
  KEY_S* = 83
  KEY_T* = 84
  KEY_U* = 85
  KEY_V* = 86
  KEY_W* = 87
  KEY_X* = 88
  KEY_Y* = 89
  KEY_Z* = 90
  KEY_LEFT_BRACKET* = 91
  KEY_BACKSLASH* = 92
  KEY_RIGHT_BRACKET* = 93
  KEY_GRAVE_ACCENT* = 96
  KEY_WORLD_1* = 161
  KEY_WORLD_2* = 162


const
  KEY_ESCAPE* = 256
  KEY_ENTER* = 257
  KEY_TAB* = 258
  KEY_BACKSPACE* = 259
  KEY_INSERT* = 260
  KEY_DELETE* = 261
  KEY_RIGHT* = 262
  KEY_LEFT* = 263
  KEY_DOWN* = 264
  KEY_UP* = 265
  KEY_PAGE_UP* = 266
  KEY_PAGE_DOWN* = 267
  KEY_HOME* = 268
  KEY_END* = 269
  KEY_CAPS_LOCK* = 280
  KEY_SCROLL_LOCK* = 281
  KEY_NUM_LOCK* = 282
  KEY_PRINT_SCREEN* = 283
  KEY_PAUSE* = 284
  KEY_F1* = 290
  KEY_F2* = 291
  KEY_F3* = 292
  KEY_F4* = 293
  KEY_F5* = 294
  KEY_F6* = 295
  KEY_F7* = 296
  KEY_F8* = 297
  KEY_F9* = 298
  KEY_F10* = 299
  KEY_F11* = 300
  KEY_F12* = 301
  KEY_F13* = 302
  KEY_F14* = 303
  KEY_F15* = 304
  KEY_F16* = 305
  KEY_F17* = 306
  KEY_F18* = 307
  KEY_F19* = 308
  KEY_F20* = 309
  KEY_F21* = 310
  KEY_F22* = 311
  KEY_F23* = 312
  KEY_F24* = 313
  KEY_F25* = 314
  KEY_KP_0* = 320
  KEY_KP_1* = 321
  KEY_KP_2* = 322
  KEY_KP_3* = 323
  KEY_KP_4* = 324
  KEY_KP_5* = 325
  KEY_KP_6* = 326
  KEY_KP_7* = 327
  KEY_KP_8* = 328
  KEY_KP_9* = 329
  KEY_KP_DECIMAL* = 330
  KEY_KP_DIVIDE* = 331
  KEY_KP_MULTIPLY* = 332
  KEY_KP_SUBTRACT* = 333
  KEY_KP_ADD* = 334
  KEY_KP_ENTER* = 335
  KEY_KP_EQUAL* = 336
  KEY_LEFT_SHIFT* = 340
  KEY_LEFT_CONTROL* = 341
  KEY_LEFT_ALT* = 342
  KEY_LEFT_SUPER* = 343
  KEY_RIGHT_SHIFT* = 344
  KEY_RIGHT_CONTROL* = 345
  KEY_RIGHT_ALT* = 346
  KEY_RIGHT_SUPER* = 347
  KEY_MENU* = 348
  KEY_LAST* = KEY_MENU


const
  MOD_SHIFT* = 0x00000001


const
  MOD_CONTROL* = 0x00000002


const
  MOD_ALT* = 0x00000004


const
  MOD_SUPER* = 0x00000008


const
  MOD_CAPS_LOCK* = 0x00000010


const
  MOD_NUM_LOCK* = 0x00000020


const
  MOUSE_BUTTON_1* = 0
  MOUSE_BUTTON_2* = 1
  MOUSE_BUTTON_3* = 2
  MOUSE_BUTTON_4* = 3
  MOUSE_BUTTON_5* = 4
  MOUSE_BUTTON_6* = 5
  MOUSE_BUTTON_7* = 6
  MOUSE_BUTTON_8* = 7
  MOUSE_BUTTON_LAST* = MOUSE_BUTTON_8
  MOUSE_BUTTON_LEFT* = MOUSE_BUTTON_1
  MOUSE_BUTTON_RIGHT* = MOUSE_BUTTON_2
  MOUSE_BUTTON_MIDDLE* = MOUSE_BUTTON_3


const
  JOYSTICK_1* = 0
  JOYSTICK_2* = 1
  JOYSTICK_3* = 2
  JOYSTICK_4* = 3
  JOYSTICK_5* = 4
  JOYSTICK_6* = 5
  JOYSTICK_7* = 6
  JOYSTICK_8* = 7
  JOYSTICK_9* = 8
  JOYSTICK_10* = 9
  JOYSTICK_11* = 10
  JOYSTICK_12* = 11
  JOYSTICK_13* = 12
  JOYSTICK_14* = 13
  JOYSTICK_15* = 14
  JOYSTICK_16* = 15
  JOYSTICK_LAST* = JOYSTICK_16


const
  GAMEPAD_BUTTON_A* = 0
  GAMEPAD_BUTTON_B* = 1
  GAMEPAD_BUTTON_X* = 2
  GAMEPAD_BUTTON_Y* = 3
  GAMEPAD_BUTTON_LEFT_BUMPER* = 4
  GAMEPAD_BUTTON_RIGHT_BUMPER* = 5
  GAMEPAD_BUTTON_BACK* = 6
  GAMEPAD_BUTTON_START* = 7
  GAMEPAD_BUTTON_GUIDE* = 8
  GAMEPAD_BUTTON_LEFT_THUMB* = 9
  GAMEPAD_BUTTON_RIGHT_THUMB* = 10
  GAMEPAD_BUTTON_DPAD_UP* = 11
  GAMEPAD_BUTTON_DPAD_RIGHT* = 12
  GAMEPAD_BUTTON_DPAD_DOWN* = 13
  GAMEPAD_BUTTON_DPAD_LEFT* = 14
  GAMEPAD_BUTTON_LAST* = GAMEPAD_BUTTON_DPAD_LEFT
  GAMEPAD_BUTTON_CROSS* = GAMEPAD_BUTTON_A
  GAMEPAD_BUTTON_CIRCLE* = GAMEPAD_BUTTON_B
  GAMEPAD_BUTTON_SQUARE* = GAMEPAD_BUTTON_X
  GAMEPAD_BUTTON_TRIANGLE* = GAMEPAD_BUTTON_Y


const
  GAMEPAD_AXIS_LEFT_X* = 0
  GAMEPAD_AXIS_LEFT_Y* = 1
  GAMEPAD_AXIS_RIGHT_X* = 2
  GAMEPAD_AXIS_RIGHT_Y* = 3
  GAMEPAD_AXIS_LEFT_TRIGGER* = 4
  GAMEPAD_AXIS_RIGHT_TRIGGER* = 5
  GAMEPAD_AXIS_LAST* = GAMEPAD_AXIS_RIGHT_TRIGGER


const
  NO_ERROR* = 0


const
  NOT_INITIALIZED* = 0x00010001


const
  NO_CURRENT_CONTEXT* = 0x00010002


const
  INVALID_ENUM* = 0x00010003


const
  INVALID_VALUE* = 0x00010004


const
  OUT_OF_MEMORY* = 0x00010005


const
  API_UNAVAILABLE* = 0x00010006


const
  VERSION_UNAVAILABLE* = 0x00010007


const
  PLATFORM_ERROR* = 0x00010008


const
  FORMAT_UNAVAILABLE* = 0x00010009


const
  NO_WINDOW_CONTEXT* = 0x0001000A


const
  FOCUSED* = 0x00020001


const
  ICONIFIED* = 0x00020002


const
  RESIZABLE* = 0x00020003


const
  VISIBLE* = 0x00020004


const
  DECORATED* = 0x00020005


const
  AUTO_ICONIFY* = 0x00020006


const
  FLOATING* = 0x00020007


const
  MAXIMIZED* = 0x00020008


const
  CENTER_CURSOR* = 0x00020009


const
  TRANSPARENT_FRAMEBUFFER* = 0x0002000A


const
  HOVERED* = 0x0002000B


const
  FOCUS_ON_SHOW* = 0x0002000C


const
  RED_BITS* = 0x00021001


const
  GREEN_BITS* = 0x00021002


const
  BLUE_BITS* = 0x00021003


const
  ALPHA_BITS* = 0x00021004


const
  DEPTH_BITS* = 0x00021005


const
  STENCIL_BITS* = 0x00021006


const
  ACCUM_RED_BITS* = 0x00021007


const
  ACCUM_GREEN_BITS* = 0x00021008


const
  ACCUM_BLUE_BITS* = 0x00021009


const
  ACCUM_ALPHA_BITS* = 0x0002100A


const
  AUX_BUFFERS* = 0x0002100B


const
  STEREO* = 0x0002100C


const
  SAMPLES* = 0x0002100D


const
  SRGB_CAPABLE* = 0x0002100E


const
  REFRESH_RATE* = 0x0002100F


const
  DOUBLEBUFFER* = 0x00021010


const
  CLIENT_API* = 0x00022001


const
  CONTEXT_VERSION_MAJOR* = 0x00022002


const
  CONTEXT_VERSION_MINOR* = 0x00022003


const
  CONTEXT_REVISION* = 0x00022004


const
  CONTEXT_ROBUSTNESS* = 0x00022005


const
  OPENGL_FORWARD_COMPAT* = 0x00022006


const
  OPENGL_DEBUG_CONTEXT* = 0x00022007


const
  OPENGL_PROFILE* = 0x00022008


const
  CONTEXT_RELEASE_BEHAVIOR* = 0x00022009


const
  CONTEXT_NO_ERROR* = 0x0002200A


const
  CONTEXT_CREATION_API* = 0x0002200B


const
  SCALE_TO_MONITOR* = 0x0002200C


const
  COCOA_RETINA_FRAMEBUFFER* = 0x00023001


const
  COCOA_FRAME_NAME* = 0x00023002


const
  COCOA_GRAPHICS_SWITCHING* = 0x00023003


const
  X11_CLASS_NAME* = 0x00024001


const
  X11_INSTANCE_NAME* = 0x00024002


const
  NO_API* = 0
  OPENGL_API* = 0x00030001
  OPENGL_ES_API* = 0x00030002
  NO_ROBUSTNESS* = 0
  NO_RESET_NOTIFICATION* = 0x00031001
  LOSE_CONTEXT_ON_RESET* = 0x00031002
  OPENGL_ANY_PROFILE* = 0
  OPENGL_CORE_PROFILE* = 0x00032001
  OPENGL_COMPAT_PROFILE* = 0x00032002
  CURSOR* = 0x00033001
  STICKY_KEYS* = 0x00033002
  STICKY_MOUSE_BUTTONS* = 0x00033003
  LOCK_KEY_MODS* = 0x00033004
  RAW_MOUSE_MOTION* = 0x00033005
  CURSOR_NORMAL* = 0x00034001
  CURSOR_HIDDEN* = 0x00034002
  CURSOR_DISABLED* = 0x00034003
  ANY_RELEASE_BEHAVIOR* = 0
  RELEASE_BEHAVIOR_FLUSH* = 0x00035001
  RELEASE_BEHAVIOR_NONE* = 0x00035002
  NATIVE_CONTEXT_API* = 0x00036001
  EGL_CONTEXT_API* = 0x00036002
  OSMESA_CONTEXT_API* = 0x00036003


const
  ARROW_CURSOR* = 0x00036001


const
  IBEAM_CURSOR* = 0x00036002


const
  CROSSHAIR_CURSOR* = 0x00036003


const
  HAND_CURSOR* = 0x00036004


const
  HRESIZE_CURSOR* = 0x00036005


const
  VRESIZE_CURSOR* = 0x00036006


const
  CONNECTED* = 0x00040001
  DISCONNECTED* = 0x00040002


const
  JOYSTICK_HAT_BUTTONS* = 0x00050001


const
  COCOA_CHDIR_RESOURCES* = 0x00051001


const
  COCOA_MENUBAR* = 0x00051002


const
  DONT_CARE* = -1


type
  Glproc* = proc () {.cdecl.}


type
  Vkproc* = proc () {.cdecl.}








type
  Errorfun* = proc (a1: cint; a2: cstring) {.cdecl.}


type
  Windowposfun* = proc (a1: Window; a2: cint; a3: cint) {.cdecl.}


type
  Windowsizefun* = proc (a1: Window; a2: cint; a3: cint) {.cdecl.}


type
  Windowclosefun* = proc (a1: Window) {.cdecl.}


type
  Windowrefreshfun* = proc (a1: Window) {.cdecl.}


type
  Windowfocusfun* = proc (a1: Window; a2: cint) {.cdecl.}


type
  Windowiconifyfun* = proc (a1: Window; a2: cint) {.cdecl.}


type
  Windowmaximizefun* = proc (a1: Window; a2: cint) {.cdecl.}


type
  Framebuffersizefun* = proc (a1: Window; a2: cint; a3: cint) {.cdecl.}


type
  Windowcontentscalefun* = proc (a1: Window; a2: cfloat; a3: cfloat) {.cdecl.}


type
  Mousebuttonfun* = proc (a1: Window; a2: cint; a3: cint; a4: cint) {.cdecl.}


type
  Cursorposfun* = proc (a1: Window; a2: cdouble; a3: cdouble) {.cdecl.}


type
  Cursorenterfun* = proc (a1: Window; a2: cint) {.cdecl.}


type
  Scrollfun* = proc (a1: Window; a2: cdouble; a3: cdouble) {.cdecl.}


type
  Keyfun* = proc (a1: Window; a2: cint; a3: cint; a4: cint; a5: cint) {.cdecl.}


type
  Charfun* = proc (a1: Window; a2: cuint) {.cdecl.}


type
  Charmodsfun* = proc (a1: Window; a2: cuint; a3: cint) {.cdecl.}


type
  Dropfun* = proc (a1: Window; a2: cint; a3: cstringArray) {.cdecl.}


type
  Monitorfun* = proc (a1: Monitor; a2: cint) {.cdecl.}


type
  Joystickfun* = proc (a1: cint; a2: cint) {.cdecl.}


type
  Vidmode* {.bycopy.} = object
    width*: cint
    height*: cint
    redBits*: cint
    greenBits*: cint
    blueBits*: cint
    refreshRate*: cint



type
  Gammaramp* {.bycopy.} = object
    red*: ptr cushort
    green*: ptr cushort
    blue*: ptr cushort
    size*: cuint



type
  Image* {.bycopy.} = object
    width*: cint
    height*: cint
    pixels*: ptr cuchar



type
  Gamepadstate* {.bycopy.} = object
    buttons*: array[15, cuchar]
    axes*: array[6, cfloat]



proc Init*(): cint {.cdecl, importc: "Init", dynlib: GlfwLib.}

proc Terminate*() {.cdecl, importc: "Terminate", dynlib: GlfwLib.}

proc InitHint*(hint: cint; value: cint) {.cdecl, importc: "InitHint", dynlib: GlfwLib.}

proc GetVersion*(major: ptr cint; minor: ptr cint; rev: ptr cint) {.cdecl, importc: "GetVersion", dynlib: GlfwLib.}

proc GetVersionString*(): cstring {.cdecl, importc: "GetVersionString", dynlib: GlfwLib.}

proc GetError*(description: cstringArray): cint {.cdecl, importc: "GetError", dynlib: GlfwLib.}

proc SetErrorCallback*(cbfun: Errorfun): Errorfun {.cdecl, importc: "SetErrorCallback", dynlib: GlfwLib.}

proc GetMonitors*(count: ptr cint): ptr Monitor {.cdecl, importc: "GetMonitors", dynlib: GlfwLib.}

proc GetPrimaryMonitor*(): Monitor {.cdecl, importc: "GetPrimaryMonitor", dynlib: GlfwLib.}

proc GetMonitorPos*(monitor: Monitor; xpos: ptr cint; ypos: ptr cint) {.cdecl, importc: "GetMonitorPos", dynlib: GlfwLib.}

proc GetMonitorWorkarea*(monitor: Monitor; xpos: ptr cint; ypos: ptr cint; width: ptr cint; height: ptr cint) {.cdecl, importc: "GetMonitorWorkarea", dynlib: GlfwLib.}

proc GetMonitorPhysicalSize*(monitor: Monitor; widthMM: ptr cint; heightMM: ptr cint) {.cdecl, importc: "GetMonitorPhysicalSize", dynlib: GlfwLib.}

proc GetMonitorContentScale*(monitor: Monitor; xscale: ptr cfloat; yscale: ptr cfloat) {.cdecl, importc: "GetMonitorContentScale", dynlib: GlfwLib.}

proc GetMonitorName*(monitor: Monitor): cstring {.cdecl, importc: "GetMonitorName", dynlib: GlfwLib.}

proc SetMonitorUserPointer*(monitor: Monitor; pointer: pointer) {.cdecl, importc: "SetMonitorUserPointer", dynlib: GlfwLib.}

proc GetMonitorUserPointer*(monitor: Monitor): pointer {.cdecl, importc: "GetMonitorUserPointer", dynlib: GlfwLib.}

proc SetMonitorCallback*(cbfun: Monitorfun): Monitorfun {.cdecl, importc: "SetMonitorCallback", dynlib: GlfwLib.}

proc GetVideoModes*(monitor: Monitor; count: ptr cint): ptr Vidmode {.cdecl, importc: "GetVideoModes", dynlib: GlfwLib.}

proc GetVideoMode*(monitor: Monitor): ptr Vidmode {.cdecl, importc: "GetVideoMode", dynlib: GlfwLib.}

proc SetGamma*(monitor: Monitor; gamma: cfloat) {.cdecl, importc: "SetGamma", dynlib: GlfwLib.}

proc GetGammaRamp*(monitor: Monitor): ptr Gammaramp {.cdecl, importc: "GetGammaRamp", dynlib: GlfwLib.}

proc SetGammaRamp*(monitor: Monitor; ramp: ptr Gammaramp) {.cdecl, importc: "SetGammaRamp", dynlib: GlfwLib.}

proc DefaultWindowHints*() {.cdecl, importc: "DefaultWindowHints", dynlib: GlfwLib.}

proc WindowHint*(hint: cint; value: cint) {.cdecl, importc: "WindowHint", dynlib: GlfwLib.}

proc WindowHintString*(hint: cint; value: cstring) {.cdecl, importc: "WindowHintString", dynlib: GlfwLib.}

proc CreateWindow*(width: cint; height: cint; title: cstring; monitor: Monitor; share: Window): Window {.cdecl, importc: "CreateWindow", dynlib: GlfwLib.}

proc DestroyWindow*(window: Window) {.cdecl, importc: "DestroyWindow", dynlib: GlfwLib.}

proc WindowShouldClose*(window: Window): cint {.cdecl, importc: "WindowShouldClose", dynlib: GlfwLib.}

proc SetWindowShouldClose*(window: Window; value: cint) {.cdecl, importc: "SetWindowShouldClose", dynlib: GlfwLib.}

proc SetWindowTitle*(window: Window; title: cstring) {.cdecl, importc: "SetWindowTitle", dynlib: GlfwLib.}

proc SetWindowIcon*(window: Window; count: cint; images: ptr Image) {.cdecl, importc: "SetWindowIcon", dynlib: GlfwLib.}

proc GetWindowPos*(window: Window; xpos: ptr cint; ypos: ptr cint) {.cdecl, importc: "GetWindowPos", dynlib: GlfwLib.}

proc SetWindowPos*(window: Window; xpos: cint; ypos: cint) {.cdecl, importc: "SetWindowPos", dynlib: GlfwLib.}

proc GetWindowSize*(window: Window; width: ptr cint; height: ptr cint) {.cdecl, importc: "GetWindowSize", dynlib: GlfwLib.}

proc SetWindowSizeLimits*(window: Window; minwidth: cint; minheight: cint; maxwidth: cint; maxheight: cint) {.cdecl, importc: "SetWindowSizeLimits", dynlib: GlfwLib.}

proc SetWindowAspectRatio*(window: Window; numer: cint; denom: cint) {.cdecl, importc: "SetWindowAspectRatio", dynlib: GlfwLib.}

proc SetWindowSize*(window: Window; width: cint; height: cint) {.cdecl, importc: "SetWindowSize", dynlib: GlfwLib.}

proc GetFramebufferSize*(window: Window; width: ptr cint; height: ptr cint) {.cdecl, importc: "GetFramebufferSize", dynlib: GlfwLib.}

proc GetWindowFrameSize*(window: Window; left: ptr cint; top: ptr cint; right: ptr cint; bottom: ptr cint) {.cdecl, importc: "GetWindowFrameSize", dynlib: GlfwLib.}

proc GetWindowContentScale*(window: Window; xscale: ptr cfloat; yscale: ptr cfloat) {.cdecl, importc: "GetWindowContentScale", dynlib: GlfwLib.}

proc GetWindowOpacity*(window: Window): cfloat {.cdecl, importc: "GetWindowOpacity", dynlib: GlfwLib.}

proc SetWindowOpacity*(window: Window; opacity: cfloat) {.cdecl, importc: "SetWindowOpacity", dynlib: GlfwLib.}

proc IconifyWindow*(window: Window) {.cdecl, importc: "IconifyWindow", dynlib: GlfwLib.}

proc RestoreWindow*(window: Window) {.cdecl, importc: "RestoreWindow", dynlib: GlfwLib.}

proc MaximizeWindow*(window: Window) {.cdecl, importc: "MaximizeWindow", dynlib: GlfwLib.}

proc ShowWindow*(window: Window) {.cdecl, importc: "ShowWindow", dynlib: GlfwLib.}

proc HideWindow*(window: Window) {.cdecl, importc: "HideWindow", dynlib: GlfwLib.}

proc FocusWindow*(window: Window) {.cdecl, importc: "FocusWindow", dynlib: GlfwLib.}

proc RequestWindowAttention*(window: Window) {.cdecl, importc: "RequestWindowAttention", dynlib: GlfwLib.}

proc GetWindowMonitor*(window: Window): Monitor {.cdecl, importc: "GetWindowMonitor", dynlib: GlfwLib.}

proc SetWindowMonitor*(window: Window; monitor: Monitor; xpos: cint; ypos: cint; width: cint; height: cint; refreshRate: cint) {.cdecl, importc: "SetWindowMonitor", dynlib: GlfwLib.}

proc GetWindowAttrib*(window: Window; attrib: cint): cint {.cdecl, importc: "GetWindowAttrib", dynlib: GlfwLib.}

proc SetWindowAttrib*(window: Window; attrib: cint; value: cint) {.cdecl, importc: "SetWindowAttrib", dynlib: GlfwLib.}

proc SetWindowUserPointer*(window: Window; pointer: pointer) {.cdecl, importc: "SetWindowUserPointer", dynlib: GlfwLib.}

proc GetWindowUserPointer*(window: Window): pointer {.cdecl, importc: "GetWindowUserPointer", dynlib: GlfwLib.}

proc SetWindowPosCallback*(window: Window; cbfun: Windowposfun): Windowposfun {.cdecl, importc: "SetWindowPosCallback", dynlib: GlfwLib.}

proc SetWindowSizeCallback*(window: Window; cbfun: Windowsizefun): Windowsizefun {.cdecl, importc: "SetWindowSizeCallback", dynlib: GlfwLib.}

proc SetWindowCloseCallback*(window: Window; cbfun: Windowclosefun): Windowclosefun {.cdecl, importc: "SetWindowCloseCallback", dynlib: GlfwLib.}

proc SetWindowRefreshCallback*(window: Window; cbfun: Windowrefreshfun): Windowrefreshfun {.cdecl, importc: "SetWindowRefreshCallback", dynlib: GlfwLib.}

proc SetWindowFocusCallback*(window: Window; cbfun: Windowfocusfun): Windowfocusfun {.cdecl, importc: "SetWindowFocusCallback", dynlib: GlfwLib.}

proc SetWindowIconifyCallback*(window: Window; cbfun: Windowiconifyfun): Windowiconifyfun {.cdecl, importc: "SetWindowIconifyCallback", dynlib: GlfwLib.}

proc SetWindowMaximizeCallback*(window: Window; cbfun: Windowmaximizefun): Windowmaximizefun {.cdecl, importc: "SetWindowMaximizeCallback", dynlib: GlfwLib.}

proc SetFramebufferSizeCallback*(window: Window; cbfun: Framebuffersizefun): Framebuffersizefun {.cdecl, importc: "SetFramebufferSizeCallback", dynlib: GlfwLib.}

proc SetWindowContentScaleCallback*(window: Window; cbfun: Windowcontentscalefun): Windowcontentscalefun {.cdecl, importc: "SetWindowContentScaleCallback", dynlib: GlfwLib.}

proc PollEvents*() {.cdecl, importc: "PollEvents", dynlib: GlfwLib.}

proc WaitEvents*() {.cdecl, importc: "WaitEvents", dynlib: GlfwLib.}

proc WaitEventsTimeout*(timeout: cdouble) {.cdecl, importc: "WaitEventsTimeout", dynlib: GlfwLib.}

proc PostEmptyEvent*() {.cdecl, importc: "PostEmptyEvent", dynlib: GlfwLib.}

proc GetInputMode*(window: Window; mode: cint): cint {.cdecl, importc: "GetInputMode", dynlib: GlfwLib.}

proc SetInputMode*(window: Window; mode: cint; value: cint) {.cdecl, importc: "SetInputMode", dynlib: GlfwLib.}

proc RawMouseMotionSupported*(): cint {.cdecl, importc: "RawMouseMotionSupported", dynlib: GlfwLib.}

proc GetKeyName*(key: cint; scancode: cint): cstring {.cdecl, importc: "GetKeyName", dynlib: GlfwLib.}

proc GetKeyScancode*(key: cint): cint {.cdecl, importc: "GetKeyScancode", dynlib: GlfwLib.}

proc GetKey*(window: Window; key: cint): cint {.cdecl, importc: "GetKey", dynlib: GlfwLib.}

proc GetMouseButton*(window: Window; button: cint): cint {.cdecl, importc: "GetMouseButton", dynlib: GlfwLib.}

proc GetCursorPos*(window: Window; xpos: ptr cdouble; ypos: ptr cdouble) {.cdecl, importc: "GetCursorPos", dynlib: GlfwLib.}

proc SetCursorPos*(window: Window; xpos: cdouble; ypos: cdouble) {.cdecl, importc: "SetCursorPos", dynlib: GlfwLib.}

proc CreateCursor*(image: ptr Image; xhot: cint; yhot: cint): CursorHandle {.cdecl, importc: "CreateCursor", dynlib: GlfwLib.}

proc CreateStandardCursor*(shape: cint): CursorHandle {.cdecl, importc: "CreateStandardCursor", dynlib: GlfwLib.}

proc DestroyCursor*(cursor: CursorHandle) {.cdecl, importc: "DestroyCursor", dynlib: GlfwLib.}

proc SetCursor*(window: Window; cursor: CursorHandle) {.cdecl, importc: "SetCursor", dynlib: GlfwLib.}

proc SetKeyCallback*(window: Window; cbfun: Keyfun): Keyfun {.cdecl, importc: "SetKeyCallback", dynlib: GlfwLib.}

proc SetCharCallback*(window: Window; cbfun: Charfun): Charfun {.cdecl, importc: "SetCharCallback", dynlib: GlfwLib.}

proc SetCharModsCallback*(window: Window; cbfun: Charmodsfun): Charmodsfun {.cdecl, importc: "SetCharModsCallback", dynlib: GlfwLib.}

proc SetMouseButtonCallback*(window: Window; cbfun: Mousebuttonfun): Mousebuttonfun {.cdecl, importc: "SetMouseButtonCallback", dynlib: GlfwLib.}

proc SetCursorPosCallback*(window: Window; cbfun: Cursorposfun): Cursorposfun {.cdecl, importc: "SetCursorPosCallback", dynlib: GlfwLib.}

proc SetCursorEnterCallback*(window: Window; cbfun: Cursorenterfun): Cursorenterfun {.cdecl, importc: "SetCursorEnterCallback", dynlib: GlfwLib.}

proc SetScrollCallback*(window: Window; cbfun: Scrollfun): Scrollfun {.cdecl, importc: "SetScrollCallback", dynlib: GlfwLib.}

proc SetDropCallback*(window: Window; cbfun: Dropfun): Dropfun {.cdecl, importc: "SetDropCallback", dynlib: GlfwLib.}

proc JoystickPresent*(jid: cint): cint {.cdecl, importc: "JoystickPresent", dynlib: GlfwLib.}

proc GetJoystickAxes*(jid: cint; count: ptr cint): ptr cfloat {.cdecl, importc: "GetJoystickAxes", dynlib: GlfwLib.}

proc GetJoystickButtons*(jid: cint; count: ptr cint): ptr cuchar {.cdecl, importc: "GetJoystickButtons", dynlib: GlfwLib.}

proc GetJoystickHats*(jid: cint; count: ptr cint): ptr cuchar {.cdecl, importc: "GetJoystickHats", dynlib: GlfwLib.}

proc GetJoystickName*(jid: cint): cstring {.cdecl, importc: "GetJoystickName", dynlib: GlfwLib.}

proc GetJoystickGUID*(jid: cint): cstring {.cdecl, importc: "GetJoystickGUID", dynlib: GlfwLib.}

proc SetJoystickUserPointer*(jid: cint; pointer: pointer) {.cdecl, importc: "SetJoystickUserPointer", dynlib: GlfwLib.}

proc GetJoystickUserPointer*(jid: cint): pointer {.cdecl, importc: "GetJoystickUserPointer", dynlib: GlfwLib.}

proc JoystickIsGamepad*(jid: cint): cint {.cdecl, importc: "JoystickIsGamepad", dynlib: GlfwLib.}

proc SetJoystickCallback*(cbfun: Joystickfun): Joystickfun {.cdecl, importc: "SetJoystickCallback", dynlib: GlfwLib.}

proc UpdateGamepadMappings*(string: cstring): cint {.cdecl, importc: "UpdateGamepadMappings", dynlib: GlfwLib.}

proc GetGamepadName*(jid: cint): cstring {.cdecl, importc: "GetGamepadName", dynlib: GlfwLib.}

proc GetGamepadState*(jid: cint; state: ptr Gamepadstate): cint {.cdecl, importc: "GetGamepadState", dynlib: GlfwLib.}

proc SetClipboardString*(window: Window; string: cstring) {.cdecl, importc: "SetClipboardString", dynlib: GlfwLib.}

proc GetClipboardString*(window: Window): cstring {.cdecl, importc: "GetClipboardString", dynlib: GlfwLib.}

proc GetTime*(): cdouble {.cdecl, importc: "GetTime", dynlib: GlfwLib.}

proc SetTime*(time: cdouble) {.cdecl, importc: "SetTime", dynlib: GlfwLib.}

proc GetTimerValue*(): uint64 {.cdecl, importc: "GetTimerValue", dynlib: GlfwLib.}

proc GetTimerFrequency*(): uint64 {.cdecl, importc: "GetTimerFrequency", dynlib: GlfwLib.}

proc MakeContextCurrent*(window: Window) {.cdecl, importc: "MakeContextCurrent", dynlib: GlfwLib.}

proc GetCurrentContext*(): Window {.cdecl, importc: "GetCurrentContext", dynlib: GlfwLib.}

proc SwapBuffers*(window: Window) {.cdecl, importc: "SwapBuffers", dynlib: GlfwLib.}

proc SwapInterval*(interval: cint) {.cdecl, importc: "SwapInterval", dynlib: GlfwLib.}

proc ExtensionSupported*(extension: cstring): cint {.cdecl, importc: "ExtensionSupported", dynlib: GlfwLib.}

proc GetProcAddress*(procname: cstring): Glproc {.cdecl, importc: "GetProcAddress", dynlib: GlfwLib.}

proc VulkanSupported*(): cint {.cdecl, importc: "VulkanSupported", dynlib: GlfwLib.}

proc GetRequiredInstanceExtensions*(count: ptr uint32): cstringArray {.cdecl, importc: "GetRequiredInstanceExtensions", dynlib: GlfwLib.}
proc GetInstanceProcAddress*(instance: VkInstance; procname: cstring): Vkproc {.cdecl, importc: "GetInstanceProcAddress", dynlib: GlfwLib.}
proc GetPhysicalDevicePresentationSupport*(instance: VkInstance; device: VkPhysicalDevice; queuefamily: uint32): cint {.cdecl, importc: "GetPhysicalDevicePresentationSupport", dynlib: GlfwLib.}
proc CreateWindowSurface*(instance: VkInstance; window: Window; allocator: ptr VkAllocationCallbacks; surface: ptr VkSurfaceKHR): VkResult {.cdecl, importc: "CreateWindowSurface", dynlib: GlfwLib.}


