// /////////////
// // IMPORTANT: This is a subset
// // /////////
//
// const std = @import("std");
// const builtin = @import("builtin");
//
// pub const c = @cImport({
//     @cDefine("GLFW_INCLUDE_VULKAN", "1");
//     @cInclude("GLFW/glfw3.h");
// });
//
// pub const CLIENT_API: c_int = c.GLFW_CLIENT_API;
// pub const RESIZABLE: c_int = c.GLFW_RESIZABLE;
// pub const WAYLAND_APP_ID = c.GLFW_WAYLAND_APP_ID;
// pub const PLATFORM = c.GLFW_PLATFORM;
//
// pub const NO_API: c_int = c.GLFW_NO_API;
//
// pub const TRUE = c.GLFW_TRUE;
// pub const FALSE = c.GLFW_FALSE;
//
// pub const Window = ?*c.GLFWwindow;
// pub const Monitor = ?*c.GLFWmonitor;
//
// const VkInstance = c.VkInstance;
// const VkSurfaceKHR = c.VkSurfaceKHR;
// const VkAllocationCallbacks = c.VkAllocationCallbacks;
// const VkProc = c.GLFWvkproc;
// const VkResult = enum(i32) { _ };
//
// inline fn f(comptime name: []const u8, comptime T: type) *const T {
//     return @extern(*const T, .{ .name = name });
// }
//
// pub const init = f("glfwInit", fn () callconv(.c) c_int);
// pub const initHint = f("glfwInitHint", fn (hint: c_int, value: c_int) callconv(.c) void);
// pub const getError = f("glfwGetError", fn (description: ?*const [*:0]const u8) callconv(.c) c_int);
// pub const windowHint = f("glfwWindowHint", fn (hint: c_int, value: c_int) callconv(.c) void);
// pub const windowHintString = f("glfwWindowHintString", fn (hint: c_int, value: [*:0]const u8) callconv(.c) void);
// pub const createWindow = f("glfwCreateWindow", fn (width: c_int, height: c_int, title: [*:0]const u8, monitor: ?*Monitor, share: Window) callconv(.c) Window);
// pub const windowShouldClose = f("glfwWindowShouldClose", fn (window: Window) callconv(.c) c_int);
// pub const setWindowShouldClose = f("glfwSetWindowShouldClose", fn (window: Window, value: c_int) callconv(.c) void);
// pub const pollEvents = f("glfwPollEvents", fn () callconv(.c) void);
// pub const waitEvents = f("glfwWaitEvents", fn () callconv(.c) void);
// pub const setKeyCallback = f("glfwSetKeyCallback", fn (window: Window, callback: GLFWkeyfun) callconv(.c) GLFWkeyfun);
// pub const setFramebufferSizeCallback = f("glfwSetFramebufferSizeCallback", fn (window: Window, callback: GLFWframebuffersizefun) callconv(.c) GLFWframebuffersizefun);
// pub const setWindowRefreshCallback = f("glfwSetWindowRefreshCallback", fn (window: Window, callback: GLFWwindowrefreshfun) callconv(.c) GLFWwindowrefreshfun);
// pub const setWindowSizeCallback = f("glfwSetWindowSizeCallback", fn (window: Window, callback: GLFWwindowsizefun) callconv(.c) GLFWwindowsizefun);
// pub const destroyWindow = f("glfwDestroyWindow", fn (window: Window) callconv(.c) void);
// pub const terminate = f("glfwTerminate", fn () callconv(.c) void);
// pub const getFramebufferSize = f("glfwGetFramebufferSize", fn (window: Window, width: ?*c_int, height: ?*c_int) callconv(.c) void);
// pub const swapBuffers = f("glfwSwapBuffers", fn (window: Window) callconv(.c) void);
// pub const getKey = f("glfwGetKey", fn (window: Window, key: c_int) callconv(.c) c_int);
//
// pub const platformSupported = f("glfwPlatformSupported", fn (platform: Platform) callconv(.c) c_int);
// pub const getPlatform = f("glfwGetPlatform", fn () callconv(.c) Platform);
// pub const vulkanSupported = f("glfwVulkanSupported", fn () callconv(.c) c_int);
// pub const getRequiredInstanceExtensions = f("glfwGetRequiredInstanceExtensions", fn (count: *u32) callconv(.c) ?[*][*:0]const u8);
// pub const setWindowUserPointer = f("glfwSetWindowUserPointer", fn (window: Window, ptr: *anyopaque) callconv(.c) void);
// pub const getWindowUserPointer = f("glfwGetWindowUserPointer", fn (window: Window) callconv(.c) *anyopaque);
//
// pub const getInstanceProcAddress = f("glfwGetInstanceProcAddress", fn (instance: VkInstance, proc_name: [*:0]const u8) callconv(.c) VkProc);
// pub const createWindowSurface = f("glfwCreateWindowSurface", fn (instance: VkInstance, window: Window, allocator: ?*const VkAllocationCallbacks, surface: *VkSurfaceKHR) callconv(.c) VkResult);
//
// pub const GLFWkeyfun = *const fn (window: Window, key: c_int, scancode: c_int, action: Action, mods: c_int) callconv(.c) void;
// pub const GLFWframebuffersizefun = *const fn (window: Window, width: c_int, height: c_int) callconv(.c) void;
// pub const GLFWwindowrefreshfun = *const fn (window: Window) callconv(.c) void;
// pub const GLFWwindowsizefun = *const fn (window: Window, width: c_int, height: c_int) callconv(.c) void;
//
// pub const Platform = enum(c_int) {
//     ANY = 0x00060000,
//     WIN32 = 0x00060001,
//     COCOA = 0x00060002,
//     WAYLAND = 0x00060003,
//     X11 = 0x00060004,
//     NULL = 0x00060005,
// };
//
// pub const Action = enum(c_int) {
//     release = 0,
//     press = 1,
//     repeat = 2,
// };




































// newapistart

const VkResult = enum(i32) {};
const VkExtensionProperties = extern struct {
    extensionName: [256]u8,
    specVersion: u32,
};

const PFN_vkVoidFunction = *const fn() callconv(.c) void;
const PFN_vkGetInstanceProcAddr = *const fn(VkInstance, [*:0]const u8) callconv(.c) PFN_vkVoidFunction;
const PFN_vkEnumerateInstanceExtensionProperties = *const fn([*:0]const u8, *u32, [*]VkExtensionProperties) callconv(.c) VkResult;


// @name GLFW version macros
//  @{

/// @brief The major version number of the GLFW header.
///  The major version number of the GLFW header.  This is incremented when the
///  API is changed in non-compatible ways.
///  @ingroup init
pub const VERSION_MAJOR = 3;
/// @brief The minor version number of the GLFW header.
///
///  The minor version number of the GLFW header.  This is incremented when
///  features are added to the API but it remains backward-compatible.
///  @ingroup init
pub const VERSION_MINOR = 4;
///! @brief The revision number of the GLFW header.
///
///  The revision number of the GLFW header.  This is incremented when a bug fix
///  release is made that does not contain any API changes.
///  @ingroup init
pub const VERSION_REVISION = 0;
// @}

///! @brief One.
///
///  This is only semantic sugar for the number 1.  You can instead use `1` or
///  `true` or `_True` or `GL_TRUE` or `VK_TRUE` or anything else that is equal
///  to one.
///
///  @ingroup init
pub const TRUE = 1;
///! @brief Zero.
///
///  This is only semantic sugar for the number 0.  You can instead use `0` or
///  `false` or `_False` or `GL_FALSE` or `VK_FALSE` or anything else that is
///  equal to zero.
///
///  @ingroup init
pub const FALSE = 0;

///! @name Key and button actions
///  @{
///! @brief The key or mouse button was released.

///  The key or mouse button was released.
///
///  @ingroup input
pub const RELEASE = 0;
///! @brief The key or mouse button was pressed.
///
///  The key or mouse button was pressed.
///
///  @ingroup input
pub const PRESS = 1;
///! @brief The key was held down until it repeated.
///
///  The key was held down until it repeated.
///
///  @ingroup input
pub const REPEAT = 2;
// @}

// @defgroup hat_state Joystick hat states
// @brief Joystick hat states.
//
// See [joystick hat input](@ref joystick_hat) for how these are used.

// @ingroup input
// @{
pub const HAT_CENTERED = 0;
pub const HAT_UP = 1;
pub const HAT_RIGHT = 2;
pub const HAT_DOWN = 4;
pub const HAT_LEFT = 8;
pub const HAT_RIGHT_UP = (GLFW_HAT_RIGHT | GLFW_HAT_UP);
pub const HAT_RIGHT_DOWN = (GLFW_HAT_RIGHT | GLFW_HAT_DOWN);
pub const HAT_LEFT_UP = (GLFW_HAT_LEFT  | GLFW_HAT_UP);
pub const HAT_LEFT_DOWN = (GLFW_HAT_LEFT  | GLFW_HAT_DOWN);

// @ingroup input
pub const KEY_UNKNOWN = -1;
// @}

// @defgroup keys Keyboard key tokens
//  @brief Keyboard key tokens.
//
//  See [key input](@ref input_key) for how these are used.
//
//  These key codes are inspired by the _USB HID Usage Tables v1.12_ (p. 53-60),
//  but re-arranged to map to 7-bit ASCII for printable keys (function keys are
//  put in the 256+ range).
//
//  The naming of the key codes follow these rules:
//   - The US keyboard layout is used
//   - Names of printable alphanumeric characters are used (e.g. "A", "R",
//     "3", etc.)
//   - For non-alphanumeric characters, Unicode:ish names are used (e.g.
//     "COMMA", "LEFT_SQUARE_BRACKET", etc.). Note that some names do not
//     correspond to the Unicode standard (usually for brevity)
//   - Keys that lack a clear US mapping are named "WORLD_x"
//   - For non-printable keys, custom names are used (e.g. "F4",
//     "BACKSPACE", etc.)
//
//  @ingroup input
/  @{

/// Printable keys
pub const KEY_SPACE = 32;
/// /* ' */
pub const KEY_APOSTROPHE = 39;
/// /* , */
pub const KEY_COMMA = 44;
/// /* - */
pub const KEY_MINUS = 45;
/// /* . */
pub const KEY_PERIOD = 46;
/// /* / */
pub const KEY_SLASH = 47;
pub const KEY_0 = 48;
pub const KEY_1 = 49;
pub const KEY_2 = 50;
pub const KEY_3 = 51;
pub const KEY_4 = 52;
pub const KEY_5 = 53;
pub const KEY_6 = 54;
pub const KEY_7 = 55;
pub const KEY_8 = 56;
pub const KEY_9 = 57;
/// /* ; */
pub const KEY_SEMICOLON = 59;
/// /* = */
pub const KEY_EQUAL = 61;
pub const KEY_A = 65;
pub const KEY_B = 66;
pub const KEY_C = 67;
pub const KEY_D = 68;
pub const KEY_E = 69;
pub const KEY_F = 70;
pub const KEY_G = 71;
pub const KEY_H = 72;
pub const KEY_I = 73;
pub const KEY_J = 74;
pub const KEY_K = 75;
pub const KEY_L = 76;
pub const KEY_M = 77;
pub const KEY_N = 78;
pub const KEY_O = 79;
pub const KEY_P = 80;
pub const KEY_Q = 81;
pub const KEY_R = 82;
pub const KEY_S = 83;
pub const KEY_T = 84;
pub const KEY_U = 85;
pub const KEY_V = 86;
pub const KEY_W = 87;
pub const KEY_X = 88;
pub const KEY_Y = 89;
pub const KEY_Z = 90;
/// /* [ */
pub const KEY_LEFT_BRACKET = 91;
/// /* \ */
pub const KEY_BACKSLASH = 92;
/// /* ] */
pub const KEY_RIGHT_BRACKET = 93;
/// /* ` */
pub const KEY_GRAVE_ACCENT = 96;
////* non-US #1 */
pub const KEY_WORLD_1 = 161;
////* non-US #2 */
pub const KEY_WORLD_2 = 162;

// Function keys
pub const KEY_ESCAPE = 256;
pub const KEY_ENTER = 257;
pub const KEY_TAB = 258;
pub const KEY_BACKSPACE = 259;
pub const KEY_INSERT = 260;
pub const KEY_DELETE = 261;
pub const KEY_RIGHT = 262;
pub const KEY_LEFT = 263;
pub const KEY_DOWN = 264;
pub const KEY_UP = 265;
pub const KEY_PAGE_UP = 266;
pub const KEY_PAGE_DOWN = 267;
pub const KEY_HOME = 268;
pub const KEY_END = 269;
pub const KEY_CAPS_LOCK = 280;
pub const KEY_SCROLL_LOCK = 281;
pub const KEY_NUM_LOCK = 282;
pub const KEY_PRINT_SCREEN = 283;
pub const KEY_PAUSE = 284;
pub const KEY_F1 = 290;
pub const KEY_F2 = 291;
pub const KEY_F3 = 292;
pub const KEY_F4 = 293;
pub const KEY_F5 = 294;
pub const KEY_F6 = 295;
pub const KEY_F7 = 296;
pub const KEY_F8 = 297;
pub const KEY_F9 = 298;
pub const KEY_F10 = 299;
pub const KEY_F11 = 300;
pub const KEY_F12 = 301;
pub const KEY_F13 = 302;
pub const KEY_F14 = 303;
pub const KEY_F15 = 304;
pub const KEY_F16 = 305;
pub const KEY_F17 = 306;
pub const KEY_F18 = 307;
pub const KEY_F19 = 308;
pub const KEY_F20 = 309;
pub const KEY_F21 = 310;
pub const KEY_F22 = 311;
pub const KEY_F23 = 312;
pub const KEY_F24 = 313;
pub const KEY_F25 = 314;
pub const KEY_KP_0 = 320;
pub const KEY_KP_1 = 321;
pub const KEY_KP_2 = 322;
pub const KEY_KP_3 = 323;
pub const KEY_KP_4 = 324;
pub const KEY_KP_5 = 325;
pub const KEY_KP_6 = 326;
pub const KEY_KP_7 = 327;
pub const KEY_KP_8 = 328;
pub const KEY_KP_9 = 329;
pub const KEY_KP_DECIMAL = 330;
pub const KEY_KP_DIVIDE = 331;
pub const KEY_KP_MULTIPLY = 332;
pub const KEY_KP_SUBTRACT = 333;
pub const KEY_KP_ADD = 334;
pub const KEY_KP_ENTER = 335;
pub const KEY_KP_EQUAL = 336;
pub const KEY_LEFT_SHIFT = 340;
pub const KEY_LEFT_CONTROL = 341;
pub const KEY_LEFT_ALT = 342;
pub const KEY_LEFT_SUPER = 343;
pub const KEY_RIGHT_SHIFT = 344;
pub const KEY_RIGHT_CONTROL = 345;
pub const KEY_RIGHT_ALT = 346;
pub const KEY_RIGHT_SUPER = 347;
pub const KEY_MENU = 348;

pub const KEY_LAST = GLFW_KEY_MENU;

// @}

// @defgroup mods Modifier key flags
// @brief Modifier key flags.
//
// See [key input](@ref input_key) for how these are used.

// @ingroup input
// @{

///! @brief If this bit is set one or more Shift keys were held down.
///
///  If this bit is set one or more Shift keys were held down.
pub const MOD_SHIFT = 0x0001;
///! @brief If this bit is set one or more Control keys were held down.
///
///  If this bit is set one or more Control keys were held down.
pub const MOD_CONTROL = 0x0002;
///! @brief If this bit is set one or more Alt keys were held down.
///
///  If this bit is set one or more Alt keys were held down.
pub const MOD_ALT = 0x0004;
///! @brief If this bit is set one or more Super keys were held down.
///
///  If this bit is set one or more Super keys were held down.
pub const MOD_SUPER = 0x0008;
///! @brief If this bit is set the Caps Lock key is enabled.
///
///  If this bit is set the Caps Lock key is enabled and the @ref
///  GLFW_LOCK_KEY_MODS input mode is set.
pub const MOD_CAPS_LOCK = 0x0010;
///! @brief If this bit is set the Num Lock key is enabled.
///
///  If this bit is set the Num Lock key is enabled and the @ref
///  GLFW_LOCK_KEY_MODS input mode is set.
pub const MOD_NUM_LOCK = 0x0020;

// @}

// @defgroup buttons Mouse buttons
// @brief Mouse button IDs.
//
// See [mouse button input](@ref input_mouse_button) for how these are used.

// @ingroup input
// @{
pub const MOUSE_BUTTON_1 = 0;
pub const MOUSE_BUTTON_2 = 1;
pub const MOUSE_BUTTON_3 = 2;
pub const MOUSE_BUTTON_4 = 3;
pub const MOUSE_BUTTON_5 = 4;
pub const MOUSE_BUTTON_6 = 5;
pub const MOUSE_BUTTON_7 = 6;
pub const MOUSE_BUTTON_8 = 7;
pub const MOUSE_BUTTON_LAST = GLFW_MOUSE_BUTTON_8;
pub const MOUSE_BUTTON_LEFT = GLFW_MOUSE_BUTTON_1;
pub const MOUSE_BUTTON_RIGHT = GLFW_MOUSE_BUTTON_2;
pub const MOUSE_BUTTON_MIDDLE = GLFW_MOUSE_BUTTON_3;
// @}

// @defgroup joysticks Joysticks
// @brief Joystick IDs.
//
// See [joystick input](@ref joystick) for how these are used.

// @ingroup input
// @{

pub const JOYSTICK_1 = 0;
pub const JOYSTICK_2 = 1;
pub const JOYSTICK_3 = 2;
pub const JOYSTICK_4 = 3;
pub const JOYSTICK_5 = 4;
pub const JOYSTICK_6 = 5;
pub const JOYSTICK_7 = 6;
pub const JOYSTICK_8 = 7;
pub const JOYSTICK_9 = 8;
pub const JOYSTICK_10 = 9;
pub const JOYSTICK_11 = 10;
pub const JOYSTICK_12 = 11;
pub const JOYSTICK_13 = 12;
pub const JOYSTICK_14 = 13;
pub const JOYSTICK_15 = 14;
pub const JOYSTICK_16 = 15;
pub const JOYSTICK_LAST = GLFW_JOYSTICK_16;
// @}

// @defgroup gamepad_buttons Gamepad buttons
// @brief Gamepad buttons.
//
// See @ref gamepad for how these are used.

// @ingroup input
// @{
pub const GAMEPAD_BUTTON_A = 0;
pub const GAMEPAD_BUTTON_B = 1;
pub const GAMEPAD_BUTTON_X = 2;
pub const GAMEPAD_BUTTON_Y = 3;
pub const GAMEPAD_BUTTON_LEFT_BUMPER = 4;
pub const GAMEPAD_BUTTON_RIGHT_BUMPER = 5;
pub const GAMEPAD_BUTTON_BACK = 6;
pub const GAMEPAD_BUTTON_START = 7;
pub const GAMEPAD_BUTTON_GUIDE = 8;
pub const GAMEPAD_BUTTON_LEFT_THUMB = 9;
pub const GAMEPAD_BUTTON_RIGHT_THUMB = 10;
pub const GAMEPAD_BUTTON_DPAD_UP = 11;
pub const GAMEPAD_BUTTON_DPAD_RIGHT = 12;
pub const GAMEPAD_BUTTON_DPAD_DOWN = 13;
pub const GAMEPAD_BUTTON_DPAD_LEFT = 14;
pub const GAMEPAD_BUTTON_LAST = GLFW_GAMEPAD_BUTTON_DPAD_LEFT;

pub const GAMEPAD_BUTTON_CROSS = GLFW_GAMEPAD_BUTTON_A;
pub const GAMEPAD_BUTTON_CIRCLE = GLFW_GAMEPAD_BUTTON_B;
pub const GAMEPAD_BUTTON_SQUARE = GLFW_GAMEPAD_BUTTON_X;
pub const GAMEPAD_BUTTON_TRIANGLE = GLFW_GAMEPAD_BUTTON_Y;
// @}

// @defgroup gamepad_axes Gamepad axes
// @brief Gamepad axes.
//
// See @ref gamepad for how these are used.

// @ingroup input
// @{
pub const GAMEPAD_AXIS_LEFT_X = 0;
pub const GAMEPAD_AXIS_LEFT_Y = 1;
pub const GAMEPAD_AXIS_RIGHT_X = 2;
pub const GAMEPAD_AXIS_RIGHT_Y = 3;
pub const GAMEPAD_AXIS_LEFT_TRIGGER = 4;
pub const GAMEPAD_AXIS_RIGHT_TRIGGER = 5;
pub const GAMEPAD_AXIS_LAST = GLFW_GAMEPAD_AXIS_RIGHT_TRIGGER;
// @}

//! @defgroup errors Error codes
//  @brief Error codes.
//
//  See [error handling](@ref error_handling) for how these are used.
//
//  @ingroup init
//  @{

///! @brief No error has occurred.
///
///  No error has occurred.
///
///  @analysis Yay.
pub const NO_ERROR = 0;
///! @brief GLFW has not been initialized.
///
///  This occurs if a GLFW function was called that must not be called unless the
///  library is [initialized](@ref intro_init).
///
///  @analysis Application programmer error.  Initialize GLFW before calling any
///  function that requires initialization.
pub const NOT_INITIALIZED = 0x00010001;
///! @brief No context is current for this thread.
///
///  This occurs if a GLFW function was called that needs and operates on the
///  current OpenGL or OpenGL ES context but no context is current on the calling
///  thread.  One such function is @ref glfwSwapInterval.
///
///  @analysis Application programmer error.  Ensure a context is current before
///  calling functions that require a current context.
pub const NO_CURRENT_CONTEXT = 0x00010002;
///! @brief One of the arguments to the function was an invalid enum value.
///
///  One of the arguments to the function was an invalid enum value, for example
///  requesting @ref GLFW_RED_BITS with @ref glfwGetWindowAttrib.
///
///  @analysis Application programmer error.  Fix the offending call.
pub const INVALID_ENUM = 0x00010003;
///! @brief One of the arguments to the function was an invalid value.
///
///  One of the arguments to the function was an invalid value, for example
///  requesting a non-existent OpenGL or OpenGL ES version like 2.7.
///
///  Requesting a valid but unavailable OpenGL or OpenGL ES version will instead
///  result in a @ref GLFW_VERSION_UNAVAILABLE error.
///
///  @analysis Application programmer error.  Fix the offending call.
pub const INVALID_VALUE = 0x00010004;
///! @brief A memory allocation failed.
///
///  A memory allocation failed.
///
///  @analysis A bug in GLFW or the underlying operating system.  Report the bug
///  to our [issue tracker](https://github.com/glfw/glfw/issues).
pub const OUT_OF_MEMORY = 0x00010005;
///! @brief GLFW could not find support for the requested API on the system.
///
///  GLFW could not find support for the requested API on the system.
///
///  @analysis The installed graphics driver does not support the requested
///  API, or does not support it via the chosen context creation API.
///  Below are a few examples.
///
///  @par
///  Some pre-installed Windows graphics drivers do not support OpenGL.  AMD only
///  supports OpenGL ES via EGL, while Nvidia and Intel only support it via
///  a WGL or GLX extension.  macOS does not provide OpenGL ES at all.  The Mesa
///  EGL, OpenGL and OpenGL ES libraries do not interface with the Nvidia binary
///  driver.  Older graphics drivers do not support Vulkan.
pub const API_UNAVAILABLE = 0x00010006;
///! @brief The requested OpenGL or OpenGL ES version is not available.
///
///  The requested OpenGL or OpenGL ES version (including any requested context
///  or framebuffer hints) is not available on this machine.
///
///  @analysis The machine does not support your requirements.  If your
///  application is sufficiently flexible, downgrade your requirements and try
///  again.  Otherwise, inform the user that their machine does not match your
///  requirements.
///
///  @par
///  Future invalid OpenGL and OpenGL ES versions, for example OpenGL 4.8 if 5.0
///  comes out before the 4.x series gets that far, also fail with this error and
///  not @ref GLFW_INVALID_VALUE, because GLFW cannot know what future versions
///  will exist.
pub const VERSION_UNAVAILABLE = 0x00010007;
///! @brief A platform-specific error occurred that does not match any of the
///  more specific categories.
///
///  A platform-specific error occurred that does not match any of the more
///  specific categories.
///
///  @analysis A bug or configuration error in GLFW, the underlying operating
///  system or its drivers, or a lack of required resources.  Report the issue to
///  our [issue tracker](https://github.com/glfw/glfw/issues).
///b const PLATFORM_ERROR = 0x00010008;
///! @brief The requested format is not supported or available.
///
///  If emitted during window creation, the requested pixel format is not
///  supported.
///
///  If emitted when querying the clipboard, the contents of the clipboard could
///  not be converted to the requested format.
///
///  @analysis If emitted during window creation, one or more
///  [hard constraints](@ref window_hints_hard) did not match any of the
///  available pixel formats.  If your application is sufficiently flexible,
///  downgrade your requirements and try again.  Otherwise, inform the user that
///  their machine does not match your requirements.
///
///  @par
///  If emitted when querying the clipboard, ignore the error or report it to
///  the user, as appropriate.
pub const FORMAT_UNAVAILABLE = 0x00010009;
///! @brief The specified window does not have an OpenGL or OpenGL ES context.
///
///  A window that does not have an OpenGL or OpenGL ES context was passed to
///  a function that requires it to have one.
///
///  @analysis Application programmer error.  Fix the offending call.
pub const NO_WINDOW_CONTEXT = 0x0001000A;
///! @brief The specified cursor shape is not available.
///
///  The specified standard cursor shape is not available, either because the
///  current platform cursor theme does not provide it or because it is not
///  available on the platform.
///
///  @analysis Platform or system settings limitation.  Pick another
///  [standard cursor shape](@ref shapes) or create a
///  [custom cursor](@ref cursor_custom).
pub const CURSOR_UNAVAILABLE = 0x0001000B;
///! @brief The requested feature is not provided by the platform.
///
///  The requested feature is not provided by the platform, so GLFW is unable to
///  implement it.  The documentation for each function notes if it could emit
///  this error.
///
///  @analysis Platform or platform version limitation.  The error can be ignored
///  unless the feature is critical to the application.
///
///  @par
///  A function call that emits this error has no effect other than the error and
///  updating any existing out parameters.
pub const FEATURE_UNAVAILABLE = 0x0001000C;
///! @brief The requested feature is not implemented for the platform.
///
///  The requested feature has not yet been implemented in GLFW for this platform.
///
///  @analysis An incomplete implementation of GLFW for this platform, hopefully
///  fixed in a future release.  The error can be ignored unless the feature is
///  critical to the application.
///
///  @par
///  A function call that emits this error has no effect other than the error and
///  updating any existing out parameters.
pub const FEATURE_UNIMPLEMENTED = 0x0001000D;
///! @brief Platform unavailable or no matching platform was found.
///
///  If emitted during initialization, no matching platform was found.  If the @ref
///  GLFW_PLATFORM init hint was set to `GLFW_ANY_PLATFORM`, GLFW could not detect any of
///  the platforms supported by this library binary, except for the Null platform.  If the
///  init hint was set to a specific platform, it is either not supported by this library
///  binary or GLFW was not able to detect it.
///
///  If emitted by a native access function, GLFW was initialized for a different platform
///  than the function is for.
///
///  @analysis Failure to detect any platform usually only happens on non-macOS Unix
///  systems, either when no window system is running or the program was run from
///  a terminal that does not have the necessary environment variables.  Fall back to
///  a different platform if possible or notify the user that no usable platform was
///  detected.
///
///  Failure to detect a specific platform may have the same cause as above or be because
///  support for that platform was not compiled in.  Call @ref glfwPlatformSupported to
///  check whether a specific platform is supported by a library binary.
pub const PLATFORM_UNAVAILABLE = 0x0001000E;
// @}

//! @addtogroup window
//  @{

///! @brief Input focus window hint and attribute
///
///  Input focus [window hint](@ref GLFW_FOCUSED_hint) or
///  [window attribute](@ref GLFW_FOCUSED_attrib).
pub const FOCUSED = 0x00020001;
///! @brief Window iconification window attribute
///
///  Window iconification [window attribute](@ref GLFW_ICONIFIED_attrib).
pub const ICONIFIED = 0x00020002;
///! @brief Window resize-ability window hint and attribute
///
///  Window resize-ability [window hint](@ref GLFW_RESIZABLE_hint) and
///  [window attribute](@ref GLFW_RESIZABLE_attrib).
pub const RESIZABLE = 0x00020003;
///! @brief Window visibility window hint and attribute
///
///  Window visibility [window hint](@ref GLFW_VISIBLE_hint) and
///  [window attribute](@ref GLFW_VISIBLE_attrib).
pub const VISIBLE = 0x00020004;
///! @brief Window decoration window hint and attribute
///
///  Window decoration [window hint](@ref GLFW_DECORATED_hint) and
///  [window attribute](@ref GLFW_DECORATED_attrib).
pub const DECORATED = 0x00020005;
///! @brief Window auto-iconification window hint and attribute
///
///  Window auto-iconification [window hint](@ref GLFW_AUTO_ICONIFY_hint) and
///  [window attribute](@ref GLFW_AUTO_ICONIFY_attrib).
pub const AUTO_ICONIFY = 0x00020006;
///! @brief Window decoration window hint and attribute
///
///  Window decoration [window hint](@ref GLFW_FLOATING_hint) and
///  [window attribute](@ref GLFW_FLOATING_attrib).
pub const FLOATING = 0x00020007;
///! @brief Window maximization window hint and attribute
///
///  Window maximization [window hint](@ref GLFW_MAXIMIZED_hint) and
///  [window attribute](@ref GLFW_MAXIMIZED_attrib).
pub const MAXIMIZED = 0x00020008;
///! @brief Cursor centering window hint
///
///  Cursor centering [window hint](@ref GLFW_CENTER_CURSOR_hint).
pub const CENTER_CURSOR = 0x00020009;
///! @brief Window framebuffer transparency hint and attribute
///
///  Window framebuffer transparency
///  [window hint](@ref GLFW_TRANSPARENT_FRAMEBUFFER_hint) and
///  [window attribute](@ref GLFW_TRANSPARENT_FRAMEBUFFER_attrib).
pub const TRANSPARENT_FRAMEBUFFER = 0x0002000A;
///! @brief Mouse cursor hover window attribute.
///
///  Mouse cursor hover [window attribute](@ref GLFW_HOVERED_attrib).
pub const HOVERED = 0x0002000B;
///! @brief Input focus on calling show window hint and attribute
///
///  Input focus [window hint](@ref GLFW_FOCUS_ON_SHOW_hint) or
///  [window attribute](@ref GLFW_FOCUS_ON_SHOW_attrib).
pub const FOCUS_ON_SHOW = 0x0002000C;

///! @brief Mouse input transparency window hint and attribute
///
///  Mouse input transparency [window hint](@ref GLFW_MOUSE_PASSTHROUGH_hint) or
///  [window attribute](@ref GLFW_MOUSE_PASSTHROUGH_attrib).
pub const MOUSE_PASSTHROUGH = 0x0002000D;

///! @brief Initial position x-coordinate window hint.
///
///  Initial position x-coordinate [window hint](@ref GLFW_POSITION_X).
pub const POSITION_X = 0x0002000E;

///! @brief Initial position y-coordinate window hint.
///
///  Initial position y-coordinate [window hint](@ref GLFW_POSITION_Y).
pub const POSITION_Y = 0x0002000F;

///! @brief Framebuffer bit depth hint.
///
///  Framebuffer bit depth [hint](@ref GLFW_RED_BITS).
pub const RED_BITS = 0x00021001;
///! @brief Framebuffer bit depth hint.
///
///  Framebuffer bit depth [hint](@ref GLFW_GREEN_BITS).
pub const GREEN_BITS = 0x00021002;
///! @brief Framebuffer bit depth hint.
///
///  Framebuffer bit depth [hint](@ref GLFW_BLUE_BITS).
pub const BLUE_BITS = 0x00021003;
///! @brief Framebuffer bit depth hint.
///
///  Framebuffer bit depth [hint](@ref GLFW_ALPHA_BITS).
pub const ALPHA_BITS = 0x00021004;
///! @brief Framebuffer bit depth hint.
///
///  Framebuffer bit depth [hint](@ref GLFW_DEPTH_BITS).
pub const DEPTH_BITS = 0x00021005;
///! @brief Framebuffer bit depth hint.
///
///  Framebuffer bit depth [hint](@ref GLFW_STENCIL_BITS).
pub const STENCIL_BITS = 0x00021006;
///! @brief Framebuffer bit depth hint.
///
///  Framebuffer bit depth [hint](@ref GLFW_ACCUM_RED_BITS).
pub const ACCUM_RED_BITS = 0x00021007;
///! @brief Framebuffer bit depth hint.
///
///  Framebuffer bit depth [hint](@ref GLFW_ACCUM_GREEN_BITS).
pub const ACCUM_GREEN_BITS = 0x00021008;
///! @brief Framebuffer bit depth hint.
///
///  Framebuffer bit depth [hint](@ref GLFW_ACCUM_BLUE_BITS).
pub const ACCUM_BLUE_BITS = 0x00021009;
///! @brief Framebuffer bit depth hint.
///
///  Framebuffer bit depth [hint](@ref GLFW_ACCUM_ALPHA_BITS).
pub const ACCUM_ALPHA_BITS = 0x0002100A;
///! @brief Framebuffer auxiliary buffer hint.
///
///  Framebuffer auxiliary buffer [hint](@ref GLFW_AUX_BUFFERS).
pub const AUX_BUFFERS = 0x0002100B;
///! @brief OpenGL stereoscopic rendering hint.
///
///  OpenGL stereoscopic rendering [hint](@ref GLFW_STEREO).
pub const STEREO = 0x0002100C;
///! @brief Framebuffer MSAA samples hint.
///
///  Framebuffer MSAA samples [hint](@ref GLFW_SAMPLES).
pub const SAMPLES = 0x0002100D;
///! @brief Framebuffer sRGB hint.
///
///  Framebuffer sRGB [hint](@ref GLFW_SRGB_CAPABLE).
pub const SRGB_CAPABLE = 0x0002100E;
///! @brief Monitor refresh rate hint.
///
///  Monitor refresh rate [hint](@ref GLFW_REFRESH_RATE).
pub const REFRESH_RATE = 0x0002100F;
///! @brief Framebuffer double buffering hint and attribute.
///
///  Framebuffer double buffering [hint](@ref GLFW_DOUBLEBUFFER_hint) and
///  [attribute](@ref GLFW_DOUBLEBUFFER_attrib).
pub const DOUBLEBUFFER = 0x00021010;

///! @brief Context client API hint and attribute.
///
///  Context client API [hint](@ref GLFW_CLIENT_API_hint) and
///  [attribute](@ref GLFW_CLIENT_API_attrib).
pub const CLIENT_API = 0x00022001;
///! @brief Context client API major version hint and attribute.
///
///  Context client API major version [hint](@ref GLFW_CONTEXT_VERSION_MAJOR_hint)
///  and [attribute](@ref GLFW_CONTEXT_VERSION_MAJOR_attrib).
pub const CONTEXT_VERSION_MAJOR = 0x00022002;
///! @brief Context client API minor version hint and attribute.
///
///  Context client API minor version [hint](@ref GLFW_CONTEXT_VERSION_MINOR_hint)
///  and [attribute](@ref GLFW_CONTEXT_VERSION_MINOR_attrib).
pub const CONTEXT_VERSION_MINOR = 0x00022003;
///! @brief Context client API revision number attribute.
///
///  Context client API revision number
///  [attribute](@ref GLFW_CONTEXT_REVISION_attrib).
pub const CONTEXT_REVISION = 0x00022004;
///! @brief Context robustness hint and attribute.
///
///  Context client API revision number [hint](@ref GLFW_CONTEXT_ROBUSTNESS_hint)
///  and [attribute](@ref GLFW_CONTEXT_ROBUSTNESS_attrib).
pub const CONTEXT_ROBUSTNESS = 0x00022005;
///! @brief OpenGL forward-compatibility hint and attribute.
///
///  OpenGL forward-compatibility [hint](@ref GLFW_OPENGL_FORWARD_COMPAT_hint)
///  and [attribute](@ref GLFW_OPENGL_FORWARD_COMPAT_attrib).
pub const OPENGL_FORWARD_COMPAT = 0x00022006;
///! @brief Debug mode context hint and attribute.
///
///  Debug mode context [hint](@ref GLFW_CONTEXT_DEBUG_hint) and
///  [attribute](@ref GLFW_CONTEXT_DEBUG_attrib).
pub const CONTEXT_DEBUG = 0x00022007;
///! @brief Legacy name for compatibility.
///
///  This is an alias for compatibility with earlier versions.
pub const OPENGL_DEBUG_CONTEXT = GLFW_CONTEXT_DEBUG;
///! @brief OpenGL profile hint and attribute.
///
///  OpenGL profile [hint](@ref GLFW_OPENGL_PROFILE_hint) and
///  [attribute](@ref GLFW_OPENGL_PROFILE_attrib).
pub const OPENGL_PROFILE = 0x00022008;
///! @brief Context flush-on-release hint and attribute.
///
///  Context flush-on-release [hint](@ref GLFW_CONTEXT_RELEASE_BEHAVIOR_hint) and
///  [attribute](@ref GLFW_CONTEXT_RELEASE_BEHAVIOR_attrib).
pub const CONTEXT_RELEASE_BEHAVIOR = 0x00022009;
///! @brief Context error suppression hint and attribute.
///
///  Context error suppression [hint](@ref GLFW_CONTEXT_NO_ERROR_hint) and
///  [attribute](@ref GLFW_CONTEXT_NO_ERROR_attrib).
pub const CONTEXT_NO_ERROR = 0x0002200A;
///! @brief Context creation API hint and attribute.
///
///  Context creation API [hint](@ref GLFW_CONTEXT_CREATION_API_hint) and
///  [attribute](@ref GLFW_CONTEXT_CREATION_API_attrib).
pub const CONTEXT_CREATION_API = 0x0002200B;
///! @brief Window content area scaling window
///  [window hint](@ref GLFW_SCALE_TO_MONITOR).
pub const SCALE_TO_MONITOR = 0x0002200C;
///! @brief Window framebuffer scaling
///  [window hint](@ref GLFW_SCALE_FRAMEBUFFER_hint).
pub const SCALE_FRAMEBUFFER = 0x0002200D;
///! @brief Legacy name for compatibility.
///
///  This is an alias for the
///  [GLFW_SCALE_FRAMEBUFFER](@ref GLFW_SCALE_FRAMEBUFFER_hint) window hint for
///  compatibility with earlier versions.
pub const COCOA_RETINA_FRAMEBUFFER = 0x00023001;
///! @brief macOS specific
///  [window hint](@ref GLFW_COCOA_FRAME_NAME_hint).
pub const COCOA_FRAME_NAME = 0x00023002;
///! @brief macOS specific
///  [window hint](@ref GLFW_COCOA_GRAPHICS_SWITCHING_hint).
pub const COCOA_GRAPHICS_SWITCHING = 0x00023003;
///! @brief X11 specific
///  [window hint](@ref GLFW_X11_CLASS_NAME_hint).
pub const X11_CLASS_NAME = 0x00024001;
///! @brief X11 specific
///  [window hint](@ref GLFW_X11_CLASS_NAME_hint).
pub const X11_INSTANCE_NAME = 0x00024002;
///efine GLFW_WIN32_KEYBOARD_MENU    0x00025001
///! @brief Win32 specific [window hint](@ref GLFW_WIN32_SHOWDEFAULT_hint).
pub const WIN32_SHOWDEFAULT = 0x00025002;
///! @brief Wayland specific
///  [window hint](@ref GLFW_WAYLAND_APP_ID_hint).
///  
///  Allows specification of the Wayland app_id.
pub const WAYLAND_APP_ID = 0x00026001;
// @}

pub const NO_API = 0;
pub const OPENGL_API = 0x00030001;
pub const OPENGL_ES_API = 0x00030002;

pub const NO_ROBUSTNESS = 0;
pub const NO_RESET_NOTIFICATION = 0x00031001;
pub const LOSE_CONTEXT_ON_RESET = 0x00031002;

pub const OPENGL_ANY_PROFILE = 0;
pub const OPENGL_CORE_PROFILE = 0x00032001;
pub const OPENGL_COMPAT_PROFILE = 0x00032002;

pub const CURSOR = 0x00033001;
pub const STICKY_KEYS = 0x00033002;
pub const STICKY_MOUSE_BUTTONS = 0x00033003;
pub const LOCK_KEY_MODS = 0x00033004;
pub const RAW_MOUSE_MOTION = 0x00033005;

pub const CURSOR_NORMAL = 0x00034001;
pub const CURSOR_HIDDEN = 0x00034002;
pub const CURSOR_DISABLED = 0x00034003;
pub const CURSOR_CAPTURED = 0x00034004;

pub const ANY_RELEASE_BEHAVIOR = 0;
pub const RELEASE_BEHAVIOR_FLUSH = 0x00035001;
pub const RELEASE_BEHAVIOR_NONE = 0x00035002;

pub const NATIVE_CONTEXT_API = 0x00036001;
pub const EGL_CONTEXT_API = 0x00036002;
pub const OSMESA_CONTEXT_API = 0x00036003;

pub const ANGLE_PLATFORM_TYPE_NONE = 0x00037001;
pub const ANGLE_PLATFORM_TYPE_OPENGL = 0x00037002;
pub const ANGLE_PLATFORM_TYPE_OPENGLES = 0x00037003;
pub const ANGLE_PLATFORM_TYPE_D3D9 = 0x00037004;
pub const ANGLE_PLATFORM_TYPE_D3D11 = 0x00037005;
pub const ANGLE_PLATFORM_TYPE_VULKAN = 0x00037007;
pub const ANGLE_PLATFORM_TYPE_METAL = 0x00037008;

pub const WAYLAND_PREFER_LIBDECOR = 0x00038001;
pub const WAYLAND_DISABLE_LIBDECOR = 0x00038002;

pub const ANY_POSITION = 0x80000000;

// @defgroup shapes Standard cursor shapes
// @brief Standard system cursor shapes.
//
// These are the [standard cursor shapes](@ref cursor_standard) that can be
// requested from the platform (window system).
//
// @ingroup input
// @{

///! @brief The regular arrow cursor shape.
///
///  The regular arrow cursor shape.
pub const ARROW_CURSOR = 0x00036001;
///! @brief The text input I-beam cursor shape.
///
///  The text input I-beam cursor shape.
pub const IBEAM_CURSOR = 0x00036002;
///! @brief The crosshair cursor shape.
///
///  The crosshair cursor shape.
pub const CROSSHAIR_CURSOR = 0x00036003;
///! @brief The pointing hand cursor shape.
///
///  The pointing hand cursor shape.
pub const POINTING_HAND_CURSOR = 0x00036004;
///! @brief The horizontal resize/move arrow shape.
///
///  The horizontal resize/move arrow shape.  This is usually a horizontal
///  double-headed arrow.
pub const RESIZE_EW_CURSOR = 0x00036005;
///! @brief The vertical resize/move arrow shape.
///
///  The vertical resize/move shape.  This is usually a vertical double-headed
///  arrow.
pub const RESIZE_NS_CURSOR = 0x00036006;
///! @brief The top-left to bottom-right diagonal resize/move arrow shape.
///
///  The top-left to bottom-right diagonal resize/move shape.  This is usually
///  a diagonal double-headed arrow.
///
///  @note @macos This shape is provided by a private system API and may fail
///  with @ref GLFW_CURSOR_UNAVAILABLE in the future.
///
///  @note @wayland This shape is provided by a newer standard not supported by
///  all cursor themes.
///
///  @note @x11 This shape is provided by a newer standard not supported by all
///  cursor themes.
pub const RESIZE_NWSE_CURSOR = 0x00036007;
///! @brief The top-right to bottom-left diagonal resize/move arrow shape.
///
///  The top-right to bottom-left diagonal resize/move shape.  This is usually
///  a diagonal double-headed arrow.
///
///  @note @macos This shape is provided by a private system API and may fail
///  with @ref GLFW_CURSOR_UNAVAILABLE in the future.
///
///  @note @wayland This shape is provided by a newer standard not supported by
///  all cursor themes.
///
///  @note @x11 This shape is provided by a newer standard not supported by all
///  cursor themes.
pub const RESIZE_NESW_CURSOR = 0x00036008;
///! @brief The omni-directional resize/move cursor shape.
///
///  The omni-directional resize cursor/move shape.  This is usually either
///  a combined horizontal and vertical double-headed arrow or a grabbing hand.
pub const RESIZE_ALL_CURSOR = 0x00036009;
///! @brief The operation-not-allowed shape.
///
///  The operation-not-allowed shape.  This is usually a circle with a diagonal
///  line through it.
///
///  @note @wayland This shape is provided by a newer standard not supported by
///  all cursor themes.
///
///  @note @x11 This shape is provided by a newer standard not supported by all
///  cursor themes.
pub const NOT_ALLOWED_CURSOR = 0x0003600A;
///! @brief Legacy name for compatibility.
///
///  This is an alias for compatibility with earlier versions.
pub const HRESIZE_CURSOR = GLFW_RESIZE_EW_CURSOR;
///! @brief Legacy name for compatibility.
///
///  This is an alias for compatibility with earlier versions.
pub const VRESIZE_CURSOR = GLFW_RESIZE_NS_CURSOR;
///! @brief Legacy name for compatibility.
///
///  This is an alias for compatibility with earlier versions.
pub const HAND_CURSOR = GLFW_POINTING_HAND_CURSOR;
// @}

pub const CONNECTED = 0x00040001;
pub const DISCONNECTED = 0x00040002;

// @addtogroup init
// @{

///! @brief Joystick hat buttons init hint.
///
///  Joystick hat buttons [init hint](@ref GLFW_JOYSTICK_HAT_BUTTONS).
pub const JOYSTICK_HAT_BUTTONS = 0x00050001;
///! @brief ANGLE rendering backend init hint.
///
///  ANGLE rendering backend [init hint](@ref GLFW_ANGLE_PLATFORM_TYPE_hint).
pub const ANGLE_PLATFORM_TYPE = 0x00050002;
///! @brief Platform selection init hint.
///
///  Platform selection [init hint](@ref GLFW_PLATFORM).
pub const PLATFORM = 0x00050003;
///! @brief macOS specific init hint.
///
///  macOS specific [init hint](@ref GLFW_COCOA_CHDIR_RESOURCES_hint).
pub const COCOA_CHDIR_RESOURCES = 0x00051001;
///! @brief macOS specific init hint.
///
///  macOS specific [init hint](@ref GLFW_COCOA_MENUBAR_hint).
pub const COCOA_MENUBAR = 0x00051002;
///! @brief X11 specific init hint.
///
///  X11 specific [init hint](@ref GLFW_X11_XCB_VULKAN_SURFACE_hint).
pub const X11_XCB_VULKAN_SURFACE = 0x00052001;
///! @brief Wayland specific init hint.
///
///  Wayland specific [init hint](@ref GLFW_WAYLAND_LIBDECOR_hint).
pub const WAYLAND_LIBDECOR = 0x00053001;
// @}

// @addtogroup init
// @{

// @brief Hint value that enables automatic platform selection.
//
// Hint value for @ref GLFW_PLATFORM that enables automatic platform selection.
//
pub const ANY_PLATFORM = 0x00060000;
pub const PLATFORM_WIN32 = 0x00060001;
pub const PLATFORM_COCOA = 0x00060002;
pub const PLATFORM_WAYLAND = 0x00060003;
pub const PLATFORM_X11 = 0x00060004;
pub const PLATFORM_NULL = 0x00060005;
/// @}

pub const DONT_CARE = -1;


//*************************************************************************
//* GLFW API types
//*************************************************************************

///! @brief Client API function pointer type.
///
///  Generic function pointer used for returning client API function pointers
///  without forcing a cast from a regular pointer.
///
///  @sa @ref context_glext
///  @sa @ref glfwGetProcAddress
///
///  @since Added in version 3.0.
///
///  @ingroup context
pub const GlProc = *const fn () callconv(.c) void;

///! @brief Vulkan API function pointer type.
///
///  Generic function pointer used for returning Vulkan API function pointers
///  without forcing a cast from a regular pointer.
///
///  @sa @ref vulkan_proc
///  @sa @ref glfwGetInstanceProcAddress
///
///  @since Added in version 3.2.
///
///  @ingroup vulkan
pub const VkProc = *const fn () callconv(.c) void;

///! @brief Opaque monitor object.
///
///  Opaque monitor object.
///
///  @see @ref monitor_object
///
///  @since Added in version 3.0.
///
///  @ingroup monitor
pub const Monitor = opaque {};

///! @brief Opaque window object.
///
///  Opaque window object.
///
///  @see @ref window_object
///
///  @since Added in version 3.0.
///
///  @ingroup window
pub const Window = opaque {};

///! @brief Opaque cursor object.
///
///  Opaque cursor object.
///
///  @see @ref cursor_object
///
///  @since Added in version 3.1.
///
///  @ingroup input
pub const Cursor = opaque {};

/// @brief The function pointer type for memory allocation callbacks.
///
/// This is the function pointer type for memory allocation callbacks.  A memory
/// allocation callback function has the following signature:
/// @code
/// void* function_name(size_t size, void* user)
/// @endcode
///
/// This function must return either a memory block at least `size` bytes long,
/// or `NULL` if allocation failed.  Note that not all parts of GLFW handle allocation
/// failures gracefully yet.
///
/// This function must support being called during @ref glfwInit but before the library is
/// flagged as initialized, as well as during @ref glfwTerminate after the library is no
/// longer flagged as initialized.
///
/// Any memory allocated via this function will be deallocated via the same allocator
/// during library termination or earlier.
///
/// Any memory allocated via this function must be suitably aligned for any object type.
/// If you are using C99 or earlier, this alignment is platform-dependent but will be the
/// same as what `malloc` provides.  If you are using C11 or later, this is the value of
/// `alignof(max_align_t)`.
///
/// The size will always be greater than zero.  Allocations of size zero are filtered out
/// before reaching the custom allocator.
///
/// If this function returns `NULL`, GLFW will emit @ref GLFW_OUT_OF_MEMORY.
///
/// This function must not call any GLFW function.
///
/// @param[in] size The minimum size, in bytes, of the memory block.
/// @param[in] user The user-defined pointer from the allocator.
/// @return The address of the newly allocated memory block, or `NULL` if an
/// error occurred.
///
/// @pointer_lifetime The returned memory block must be valid at least until it
/// is deallocated.
///
/// @reentrancy This function should not call any GLFW function.
///
/// @thread_safety This function must support being called from any thread that calls GLFW
/// functions.
///
/// @sa @ref init_allocator
/// @sa @ref GLFWallocator
///
/// @since Added in version 3.4.
///
/// @ingroup init
pub const AllocateFun = *const fn(size: usize, user: *anyopaque) callconv(.c) *anyopaque;

///! @brief The function pointer type for memory reallocation callbacks.
///
///  This is the function pointer type for memory reallocation callbacks.
///  A memory reallocation callback function has the following signature:
///  @code
///  void* function_name(void* block, size_t size, void* user)
///  @endcode
///
///  This function must return a memory block at least `size` bytes long, or
///  `NULL` if allocation failed.  Note that not all parts of GLFW handle allocation
///  failures gracefully yet.
///
///  This function must support being called during @ref glfwInit but before the library is
///  flagged as initialized, as well as during @ref glfwTerminate after the library is no
///  longer flagged as initialized.
///
///  Any memory allocated via this function will be deallocated via the same allocator
///  during library termination or earlier.
///
///  Any memory allocated via this function must be suitably aligned for any object type.
///  If you are using C99 or earlier, this alignment is platform-dependent but will be the
///  same as what `realloc` provides.  If you are using C11 or later, this is the value of
///  `alignof(max_align_t)`.
///
///  The block address will never be `NULL` and the size will always be greater than zero.
///  Reallocations of a block to size zero are converted into deallocations before reaching
///  the custom allocator.  Reallocations of `NULL` to a non-zero size are converted into
///  regular allocations before reaching the custom allocator.
///
///  If this function returns `NULL`, GLFW will emit @ref GLFW_OUT_OF_MEMORY.
///
///  This function must not call any GLFW function.
///
///  @param[in] block The address of the memory block to reallocate.
///  @param[in] size The new minimum size, in bytes, of the memory block.
///  @param[in] user The user-defined pointer from the allocator.
///  @return The address of the newly allocated or resized memory block, or
///  `NULL` if an error occurred.
///
///  @pointer_lifetime The returned memory block must be valid at least until it
///  is deallocated.
///
///  @reentrancy This function should not call any GLFW function.
///
///  @thread_safety This function must support being called from any thread that calls GLFW
///  functions.
///
///  @sa @ref init_allocator
///  @sa @ref GLFWallocator
///
///  @since Added in version 3.4.
///
///  @ingroup init
pub const ReallocateFun = *const fn(block: *anyopaque, size: usize, user: *anyopaque) callconv(.c) *anyopaque;

///! @brief The function pointer type for memory deallocation callbacks.
///
///  This is the function pointer type for memory deallocation callbacks.
///  A memory deallocation callback function has the following signature:
///  @code
///  void function_name(void* block, void* user)
///  @endcode
///
///  This function may deallocate the specified memory block.  This memory block
///  will have been allocated with the same allocator.
///
///  This function must support being called during @ref glfwInit but before the library is
///  flagged as initialized, as well as during @ref glfwTerminate after the library is no
///  longer flagged as initialized.
///
///  The block address will never be `NULL`.  Deallocations of `NULL` are filtered out
///  before reaching the custom allocator.
///
///  If this function returns `NULL`, GLFW will emit @ref GLFW_OUT_OF_MEMORY.
///
///  This function must not call any GLFW function.
///
///  @param[in] block The address of the memory block to deallocate.
///  @param[in] user The user-defined pointer from the allocator.
///
///  @pointer_lifetime The specified memory block will not be accessed by GLFW
///  after this function is called.
///
///  @reentrancy This function should not call any GLFW function.
///
///  @thread_safety This function must support being called from any thread that calls GLFW
///  functions.
///
///  @sa @ref init_allocator
///  @sa @ref GLFWallocator
///
///  @since Added in version 3.4.
///
///  @ingroup init
pub cosnt DeallocateFun = *const fn(block: *anyopaque, user: *anyopaque) callconv(.c) void;

///! @brief The function pointer type for error callbacks.
///
///  This is the function pointer type for error callbacks.  An error callback
///  function has the following signature:
///  @code
///  void callback_name(int error_code, const char* description)
///  @endcode
///
///  @param[in] error_code An [error code](@ref errors).  Future releases may add
///  more error codes.
///  @param[in] description A UTF-8 encoded string describing the error.
///
///  @pointer_lifetime The error description string is valid until the callback
///  function returns.
///
///  @sa @ref error_handling
///  @sa @ref glfwSetErrorCallback
///
///  @since Added in version 3.0.
///
///  @ingroup init
pub const ErrorFun = *const fn(error_code: c_int, description: [*:0]const u8) callconv(.c) void;

///! @brief The function pointer type for window position callbacks.
///
///  This is the function pointer type for window position callbacks.  A window
///  position callback function has the following signature:
///  @code
///  void callback_name(GLFWwindow* window, int xpos, int ypos)
///  @endcode
///
///  @param[in] window The window that was moved.
///  @param[in] xpos The new x-coordinate, in screen coordinates, of the
///  upper-left corner of the content area of the window.
///  @param[in] ypos The new y-coordinate, in screen coordinates, of the
///  upper-left corner of the content area of the window.
///
///  @sa @ref window_pos
///  @sa @ref glfwSetWindowPosCallback
///
///  @since Added in version 3.0.
///
///  @ingroup window
pub const WindowPosFun = *const fn(window: *Window, xpos: c_int, ypos: c_int) callconv(.c) void;

///! @brief The function pointer type for window size callbacks.
///
///  This is the function pointer type for window size callbacks.  A window size
///  callback function has the following signature:
///  @code
///  void callback_name(GLFWwindow* window, int width, int height)
///  @endcode
///
///  @param[in] window The window that was resized.
///  @param[in] width The new width, in screen coordinates, of the window.
///  @param[in] height The new height, in screen coordinates, of the window.
///
///  @sa @ref window_size
///  @sa @ref glfwSetWindowSizeCallback
///
///  @since Added in version 1.0.
///  @glfw3 Added window handle parameter.
///
///  @ingroup window
pub const WindowSizeFun = *const fn(window: *Window, width: c_int, height: c_int) callconv(.c) void;

///! @brief The function pointer type for window close callbacks.
///
///  This is the function pointer type for window close callbacks.  A window
///  close callback function has the following signature:
///  @code
///  void function_name(GLFWwindow* window)
///  @endcode
///
///  @param[in] window The window that the user attempted to close.
///
///  @sa @ref window_close
///  @sa @ref glfwSetWindowCloseCallback
///
///  @since Added in version 2.5.
///  @glfw3 Added window handle parameter.
///
///  @ingroup window
pub const WindowCloseFun = *const fn(window: *Window) callconv(.c) void;

///! @brief The function pointer type for window content refresh callbacks.
///
///  This is the function pointer type for window content refresh callbacks.
///  A window content refresh callback function has the following signature:
///  @code
///  void function_name(GLFWwindow* window);
///  @endcode
///
///  @param[in] window The window whose content needs to be refreshed.
///
///  @sa @ref window_refresh
///  @sa @ref glfwSetWindowRefreshCallback
///
///  @since Added in version 2.5.
///  @glfw3 Added window handle parameter.
///
///  @ingroup window
pub const WindowRefreshFun = *const fn(window: *Window) callconv(.c) callconv(.c) void;

///! @brief The function pointer type for window focus callbacks.
///
///  This is the function pointer type for window focus callbacks.  A window
///  focus callback function has the following signature:
///  @code
///  void function_name(GLFWwindow* window, int focused)
///  @endcode
///
///  @param[in] window The window that gained or lost input focus.
///  @param[in] focused `GLFW_TRUE` if the window was given input focus, or
///  `GLFW_FALSE` if it lost it.
///
///  @sa @ref window_focus
///  @sa @ref glfwSetWindowFocusCallback
///
///  @since Added in version 3.0.
///
///  @ingroup window
pub const WindowFocusFun = *const fn(window: *Window, focused: c_int) callconv(.c) void;

///! @brief The function pointer type for window iconify callbacks.
///
///  This is the function pointer type for window iconify callbacks.  A window
///  iconify callback function has the following signature:
///  @code
///  void function_name(GLFWwindow* window, int iconified)
///  @endcode
///
///  @param[in] window The window that was iconified or restored.
///  @param[in] iconified `GLFW_TRUE` if the window was iconified, or
///  `GLFW_FALSE` if it was restored.
///
///  @sa @ref window_iconify
///  @sa @ref glfwSetWindowIconifyCallback
///
///  @since Added in version 3.0.
///
///  @ingroup window
pub const WindowIconifyFun = *const fn(window: *Window, iconified: c_int) callconv(.c) void;

///! @brief The function pointer type for window maximize callbacks.
///
///  This is the function pointer type for window maximize callbacks.  A window
///  maximize callback function has the following signature:
///  @code
///  void function_name(GLFWwindow* window, int maximized)
///  @endcode
///
///  @param[in] window The window that was maximized or restored.
///  @param[in] maximized `GLFW_TRUE` if the window was maximized, or
///  `GLFW_FALSE` if it was restored.
///
///  @sa @ref window_maximize
///  @sa glfwSetWindowMaximizeCallback
///
///  @since Added in version 3.3.
///
///  @ingroup window
pub const WindowmaximizeFun = *const fn(window: *Window, maximized: c_int) callconv(.c) void;

///! @brief The function pointer type for framebuffer size callbacks.
///
///  This is the function pointer type for framebuffer size callbacks.
///  A framebuffer size callback function has the following signature:
///  @code
///  void function_name(GLFWwindow* window, int width, int height)
///  @endcode
///
///  @param[in] window The window whose framebuffer was resized.
///  @param[in] width The new width, in pixels, of the framebuffer.
///  @param[in] height The new height, in pixels, of the framebuffer.
///
///  @sa @ref window_fbsize
///  @sa @ref glfwSetFramebufferSizeCallback
///
///  @since Added in version 3.0.
///
///  @ingroup window
pub const FramebufferSizeFun = *const fn(window: *Window, width: c_int, height: c_int) callconv(.c) void;

///! @brief The function pointer type for window content scale callbacks.
///
///  This is the function pointer type for window content scale callbacks.
///  A window content scale callback function has the following signature:
///  @code
///  void function_name(GLFWwindow* window, float xscale, float yscale)
///  @endcode
///
///  @param[in] window The window whose content scale changed.
///  @param[in] xscale The new x-axis content scale of the window.
///  @param[in] yscale The new y-axis content scale of the window.
///
///  @sa @ref window_scale
///  @sa @ref glfwSetWindowContentScaleCallback
///
///  @since Added in version 3.3.
///
///  @ingroup window
pub const WindowContentScaleFun = *const fn(window: *Window, xscale: f32, yscale: f32) callconv(.c) void;

///! @brief The function pointer type for mouse button callbacks.
///
///  This is the function pointer type for mouse button callback functions.
///  A mouse button callback function has the following signature:
///  @code
///  void function_name(GLFWwindow* window, int button, int action, int mods)
///  @endcode
///
///  @param[in] window The window that received the event.
///  @param[in] button The [mouse button](@ref buttons) that was pressed or
///  released.
///  @param[in] action One of `GLFW_PRESS` or `GLFW_RELEASE`.  Future releases
///  may add more actions.
///  @param[in] mods Bit field describing which [modifier keys](@ref mods) were
///  held down.
///
///  @sa @ref input_mouse_button
///  @sa @ref glfwSetMouseButtonCallback
///
///  @since Added in version 1.0.
///  @glfw3 Added window handle and modifier mask parameters.
///
///  @ingroup input
pub const MouseButtonFun = *const fn(window: *Window, button: c_int, action: c_int, mods: c_int) callconv(.c) void;

///! @brief The function pointer type for cursor position callbacks.
///
///  This is the function pointer type for cursor position callbacks.  A cursor
///  position callback function has the following signature:
///  @code
///  void function_name(GLFWwindow* window, double xpos, double ypos);
///  @endcode
///
///  @param[in] window The window that received the event.
///  @param[in] xpos The new cursor x-coordinate, relative to the left edge of
///  the content area.
///  @param[in] ypos The new cursor y-coordinate, relative to the top edge of the
///  content area.
///
///  @sa @ref cursor_pos
///  @sa @ref glfwSetCursorPosCallback
///
///  @since Added in version 3.0.  Replaces `GLFWmouseposfun`.
///
///  @ingroup input
pub const CursorPosFun = *const fn(window: *Window, xpos: f64, ypos: f64) callconv(.c) void;

///! @brief The function pointer type for cursor enter/leave callbacks.
///
///  This is the function pointer type for cursor enter/leave callbacks.
///  A cursor enter/leave callback function has the following signature:
///  @code
///  void function_name(GLFWwindow* window, int entered)
///  @endcode
///
///  @param[in] window The window that received the event.
///  @param[in] entered `GLFW_TRUE` if the cursor entered the window's content
///  area, or `GLFW_FALSE` if it left it.
///
///  @sa @ref cursor_enter
///  @sa @ref glfwSetCursorEnterCallback
///
///  @since Added in version 3.0.
///
///  @ingroup input
pub const CursorEnterFun = *const fn(window: *Window, entered: c_int) callconv(.c) void;

///! @brief The function pointer type for scroll callbacks.
///
///  This is the function pointer type for scroll callbacks.  A scroll callback
///  function has the following signature:
///  @code
///  void function_name(GLFWwindow* window, double xoffset, double yoffset)
///  @endcode
///
///  @param[in] window The window that received the event.
///  @param[in] xoffset The scroll offset along the x-axis.
///  @param[in] yoffset The scroll offset along the y-axis.
///
///  @sa @ref scrolling
///  @sa @ref glfwSetScrollCallback
///
///  @since Added in version 3.0.  Replaces `GLFWmousewheelfun`.
///
///  @ingroup input
pub const ScrollFun = *const fn (window: *Window, xoffset: f64, yoffset: f64) callconv(.c) void;

///! @brief The function pointer type for keyboard key callbacks.
///
///  This is the function pointer type for keyboard key callbacks.  A keyboard
///  key callback function has the following signature:
///  @code
///  void function_name(GLFWwindow* window, int key, int scancode, int action, int mods)
///  @endcode
///
///  @param[in] window The window that received the event.
///  @param[in] key The [keyboard key](@ref keys) that was pressed or released.
///  @param[in] scancode The platform-specific scancode of the key.
///  @param[in] action `GLFW_PRESS`, `GLFW_RELEASE` or `GLFW_REPEAT`.  Future
///  releases may add more actions.
///  @param[in] mods Bit field describing which [modifier keys](@ref mods) were
///  held down.
///
///  @sa @ref input_key
///  @sa @ref glfwSetKeyCallback
///
///  @since Added in version 1.0.
///  @glfw3 Added window handle, scancode and modifier mask parameters.
///
///  @ingroup input
pub const KeyFun = *const fn(window: *Window, key: c_int, scancode: c_int, action: c_int, mods: c_int) callconv(.c) void;

///! @brief The function pointer type for Unicode character callbacks.
///
///  This is the function pointer type for Unicode character callbacks.
///  A Unicode character callback function has the following signature:
///  @code
///  void function_name(GLFWwindow* window, unsigned int codepoint)
///  @endcode
///
///  @param[in] window The window that received the event.
///  @param[in] codepoint The Unicode code point of the character.
///
///  @sa @ref input_char
///  @sa @ref glfwSetCharCallback
///
///  @since Added in version 2.4.
///  @glfw3 Added window handle parameter.
///
///  @ingroup input
pub const CharFun = *const fn(window: *Window, codepoint: c_uint) callconv(.c) void;

///! @brief The function pointer type for Unicode character with modifiers
///  callbacks.
///
///  This is the function pointer type for Unicode character with modifiers
///  callbacks.  It is called for each input character, regardless of what
///  modifier keys are held down.  A Unicode character with modifiers callback
///  function has the following signature:
///  @code
///  void function_name(GLFWwindow* window, unsigned int codepoint, int mods)
///  @endcode
///
///  @param[in] window The window that received the event.
///  @param[in] codepoint The Unicode code point of the character.
///  @param[in] mods Bit field describing which [modifier keys](@ref mods) were
///  held down.
///
///  @sa @ref input_char
///  @sa @ref glfwSetCharModsCallback
///
///  @deprecated Scheduled for removal in version 4.0.
///
///  @since Added in version 3.1.
///
///  @ingroup input
pub const CharModsFun = *const fn(window: *Window, codepoint: c_uint, mods: c_int) callconv(.c) void;

///! @brief The function pointer type for path drop callbacks.
///
///  This is the function pointer type for path drop callbacks.  A path drop
///  callback function has the following signature:
///  @code
///  void function_name(GLFWwindow* window, int path_count, const char* paths[])
///  @endcode
///
///  @param[in] window The window that received the event.
///  @param[in] path_count The number of dropped paths.
///  @param[in] paths The UTF-8 encoded file and/or directory path names.
///
///  @pointer_lifetime The path array and its strings are valid until the
///  callback function returns.
///
///  @sa @ref path_drop
///  @sa @ref glfwSetDropCallback
///
///  @since Added in version 3.1.
///
///  @ingroup input
pub const DropFun = *const fn(window: *WIndow, path_count: c_int, paths: [*][*:0]const u8) callconv(.c) void;

///! @brief The function pointer type for monitor configuration callbacks.
///
///  This is the function pointer type for monitor configuration callbacks.
///  A monitor callback function has the following signature:
///  @code
///  void function_name(GLFWmonitor* monitor, int event)
///  @endcode
///
///  @param[in] monitor The monitor that was connected or disconnected.
///  @param[in] event One of `GLFW_CONNECTED` or `GLFW_DISCONNECTED`.  Future
///  releases may add more events.
///
///  @sa @ref monitor_event
///  @sa @ref glfwSetMonitorCallback
///
///  @since Added in version 3.0.
///
///  @ingroup monitor
pub const MonitorFun = *const fn(monitor: *Monitor, event: c_int) callconv(.c) void;

///! @brief The function pointer type for joystick configuration callbacks.
///
///  This is the function pointer type for joystick configuration callbacks.
///  A joystick configuration callback function has the following signature:
///  @code
///  void function_name(int jid, int event)
///  @endcode
///
///  @param[in] jid The joystick that was connected or disconnected.
///  @param[in] event One of `GLFW_CONNECTED` or `GLFW_DISCONNECTED`.  Future
///  releases may add more events.
///
///  @sa @ref joystick_event
///  @sa @ref glfwSetJoystickCallback
///
///  @since Added in version 3.2.
///
///  @ingroup input
pub const JoystickFun = *const fn(jid: c_int, event: c_int) callconv(.c) void;

///! @brief Video mode type.
///
///  This describes a single video mode.
///
///  @sa @ref monitor_modes
///  @sa @ref glfwGetVideoMode
///  @sa @ref glfwGetVideoModes
///
///  @since Added in version 1.0.
///  @glfw3 Added refresh rate member.
///
///  @ingroup monitor
pub const VidMode = extern struct {
    /// The width, in screen coordinates, of the video mode.
    width: c_int,
    /// The height, in screen coordinates, of the video mode.
    height: c_int,
    /// The bit depth of the red channel of the video mode.
    redBits: c_int,
    /// The bit depth of the green channel of the video mode.
    greenBits: c_int,
    /// The bit depth of the blue channel of the video mode.
    blueBits: c_int,
    /// The refresh rate, in Hz, of the video mode.
    refreshRate: c_int,
};

///! @brief Gamma ramp.
///
///  This describes the gamma ramp for a monitor.
///
///  @sa @ref monitor_gamma
///  @sa @ref glfwGetGammaRamp
///  @sa @ref glfwSetGammaRamp
///
///  @since Added in version 3.0.
///
///  @ingroup monitor
pub const GammaRamp = extern struct {
    /// An array of value describing the response of the red channel.
    red: *c_ushort,
    /// An array of value describing the response of the green channel.
    green: *c_ushort,
    /// An array of value describing the response of the blue channel.
    blue: *c_ushort,
    /// The number of elements in each array.
    size: c_uint,
};

///! @brief Image data.
///
///  This describes a single 2D image.  See the documentation for each related
///  function what the expected pixel format is.
///
///  @sa @ref cursor_custom
///  @sa @ref window_icon
///
///  @since Added in version 2.1.
///  @glfw3 Removed format and bytes-per-pixel members.
///
///  @ingroup window
pub const Image = extern struct {
    /// The width, in pixels, of this image.
    width: c_int,
    // The height, in pixels, of this image.
    height: c_int,
    /// The pixel data of this image, arranged lef-to-right, top-to-bottom.
    pixels: [*]u8,
};

///! @brief Gamepad input state
///
///  This describes the input state of a gamepad.
///
///  @sa @ref gamepad
///  @sa @ref glfwGetGamepadState
///
///  @since Added in version 3.3.
///
///  @ingroup input
pub const GamepadState = extern struct {
    /// The states of each [gamepad button](@ref gamepad_buttons), `GLFW_PRESS`
    /// or `GLFW_RELEASE`.
    buttons: [15]u8,
    /// The states of each [gamepad axis](@ref gamepad_axes), in the range -1.0
    /// to 1.0 inclusive.
    axes: [6]f32,
};

///! @brief Custom heap memory allocator.
///
///  This describes a custom heap memory allocator for GLFW.  To set an allocator, pass it
///  to @ref glfwInitAllocator before initializing the library.
///
///  @sa @ref init_allocator
///  @sa @ref glfwInitAllocator
///
///  @since Added in version 3.4.
///
///  @ingroup init
pub const Allocator = extern struct {
    /// The memory allocation function.  See @ref GLFWallocatefun for details about
    /// allocation function.
    allocate: AllocateFun,
    /// The memory reallocation function.  See @ref GLFWreallocatefun for details about
    /// reallocation function.
    reallocate: ReallocateFun,
    /// The memory deallocation function.  See @ref GLFWdeallocatefun for details about
    /// deallocation function.
    deallocate: DeallocateFun,
    /// The user pointer for this custom allocator.  This value will be passed to the
    /// allocator functions.
    user: *anyopaque,
};


//*************************************************************************
//* GLFW API functions
//*************************************************************************

///! @brief Initializes the GLFW library.
///
///  This function initializes the GLFW library.  Before most GLFW functions can
///  be used, GLFW must be initialized, and before an application terminates GLFW
///  should be terminated in order to free any resources allocated during or
///  after initialization.
///
///  If this function fails, it calls @ref glfwTerminate before returning.  If it
///  succeeds, you should call @ref glfwTerminate before the application exits.
///
///  Additional calls to this function after successful initialization but before
///  termination will return `GLFW_TRUE` immediately.
///
///  The @ref GLFW_PLATFORM init hint controls which platforms are considered during
///  initialization.  This also depends on which platforms the library was compiled to
///  support.
///
///  @return `GLFW_TRUE` if successful, or `GLFW_FALSE` if an
///  [error](@ref error_handling) occurred.
///
///  @errors Possible errors include @ref GLFW_PLATFORM_UNAVAILABLE and @ref
///  GLFW_PLATFORM_ERROR.
///
///  @remark @macos This function will change the current directory of the
///  application to the `Contents/Resources` subdirectory of the application's
///  bundle, if present.  This can be disabled with the @ref
///  GLFW_COCOA_CHDIR_RESOURCES init hint.
///
///  @remark @macos This function will create the main menu and dock icon for the
///  application.  If GLFW finds a `MainMenu.nib` it is loaded and assumed to
///  contain a menu bar.  Otherwise a minimal menu bar is created manually with
///  common commands like Hide, Quit and About.  The About entry opens a minimal
///  about dialog with information from the application's bundle.  The menu bar
///  and dock icon can be disabled entirely with the @ref GLFW_COCOA_MENUBAR init
///  hint.
///
///  @remark __Wayland, X11:__ If the library was compiled with support for both
///  Wayland and X11, and the @ref GLFW_PLATFORM init hint is set to
///  `GLFW_ANY_PLATFORM`, the `XDG_SESSION_TYPE` environment variable affects
///  which platform is picked.  If the environment variable is not set, or is set
///  to something other than `wayland` or `x11`, the regular detection mechanism
///  will be used instead.
///
///  @remark @x11 This function will set the `LC_CTYPE` category of the
///  application locale according to the current environment if that category is
///  still "C".  This is because the "C" locale breaks Unicode text input.
///
///  @thread_safety This function must only be called from the main thread.
///
///  @sa @ref intro_init
///  @sa @ref glfwInitHint
///  @sa @ref glfwInitAllocator
///  @sa @ref glfwTerminate
///
///  @since Added in version 1.0.
///
///  @ingroup init
pub const init = f("glfwInit", fn() callconv(.c) c_int);

///! @brief Terminates the GLFW library.
///
///  This function destroys all remaining windows and cursors, restores any
///  modified gamma ramps and frees any other allocated resources.  Once this
///  function is called, you must again call @ref glfwInit successfully before
///  you will be able to use most GLFW functions.
///
///  If GLFW has been successfully initialized, this function should be called
///  before the application exits.  If initialization fails, there is no need to
///  call this function, as it is called by @ref glfwInit before it returns
///  failure.
///
///  This function has no effect if GLFW is not initialized.
///
///  @errors Possible errors include @ref GLFW_PLATFORM_ERROR.
///
///  @remark This function may be called before @ref glfwInit.
///
///  @warning The contexts of any remaining windows must not be current on any
///  other thread when this function is called.
///
///  @reentrancy This function must not be called from a callback.
///
///  @thread_safety This function must only be called from the main thread.
///
///  @sa @ref intro_init
///  @sa @ref glfwInit
///
///  @since Added in version 1.0.
///
///  @ingroup init
pub const terminate = f("glfwTerminate", fn() callonv(.c) void);

///! @brief Sets the specified init hint to the desired value.
///
///  This function sets hints for the next initialization of GLFW.
///
///  The values you set hints to are never reset by GLFW, but they only take
///  effect during initialization.  Once GLFW has been initialized, any values
///  you set will be ignored until the library is terminated and initialized
///  again.
///
///  Some hints are platform specific.  These may be set on any platform but they
///  will only affect their specific platform.  Other platforms will ignore them.
///  Setting these hints requires no platform specific headers or functions.
///
///  @param[in] hint The [init hint](@ref init_hints) to set.
///  @param[in] value The new value of the init hint.
///
///  @errors Possible errors include @ref GLFW_INVALID_ENUM and @ref
///  GLFW_INVALID_VALUE.
///
///  @remarks This function may be called before @ref glfwInit.
///
///  @thread_safety This function must only be called from the main thread.
///
///  @sa init_hints
///  @sa glfwInit
///
///  @since Added in version 3.3.
///
///  @ingroup init
pub const initHint = f("glfwInitHint", fn(hint: c_int, value: c_int) callconv(.c) void);

///! @brief Sets the init allocator to the desired value.
///
///  To use the default allocator, call this function with a `NULL` argument.
///
///  If you specify an allocator struct, every member must be a valid function
///  pointer.  If any member is `NULL`, this function will emit @ref
///  GLFW_INVALID_VALUE and the init allocator will be unchanged.
///
///  The functions in the allocator must fulfil a number of requirements.  See the
///  documentation for @ref GLFWallocatefun, @ref GLFWreallocatefun and @ref
///  GLFWdeallocatefun for details.
///
///  @param[in] allocator The allocator to use at the next initialization, or
///  `NULL` to use the default one.
///
///  @errors Possible errors include @ref GLFW_INVALID_VALUE.
///
///  @pointer_lifetime The specified allocator is copied before this function
///  returns.
///
///  @thread_safety This function must only be called from the main thread.
///
///  @sa @ref init_allocator
///  @sa @ref glfwInit
///
///  @since Added in version 3.4.
///
///  @ingroup init
pub const initAllocator = f("glfwInitAllocator", fn(allocator: *Allocator) callconv(.c) void);

// #if defined(VK_VERSION_1_0)

///! @brief Sets the desired Vulkan `vkGetInstanceProcAddr` function.
///
///  This function sets the `vkGetInstanceProcAddr` function that GLFW will use for all
///  Vulkan related entry point queries.
///
///  This feature is mostly useful on macOS, if your copy of the Vulkan loader is in
///  a location where GLFW cannot find it through dynamic loading, or if you are still
///  using the static library version of the loader.
///
///  If set to `NULL`, GLFW will try to load the Vulkan loader dynamically by its standard
///  name and get this function from there.  This is the default behavior.
///
///  The standard name of the loader is `vulkan-1.dll` on Windows, `libvulkan.so.1` on
///  Linux and other Unix-like systems and `libvulkan.1.dylib` on macOS.  If your code is
///  also loading it via these names then you probably don't need to use this function.
///
///  The function address you set is never reset by GLFW, but it only takes effect during
///  initialization.  Once GLFW has been initialized, any updates will be ignored until the
///  library is terminated and initialized again.
///
///  @param[in] loader The address of the function to use, or `NULL`.
///
///  @par Loader function signature
///  @code
///  PFN_vkVoidFunction vkGetInstanceProcAddr(VkInstance instance, const char* name)
///  @endcode
///  For more information about this function, see the
///  [Vulkan Registry](https://www.khronos.org/registry/vulkan/).
///
///  @errors None.
///
///  @remark This function may be called before @ref glfwInit.
///
///  @thread_safety This function must only be called from the main thread.
///
///  @sa @ref vulkan_loader
///  @sa @ref glfwInit
///
///  @since Added in version 3.4.
///
///  @ingroup init
pub const initVulkanLoader = f("glfwInitVulkanLoader", fn(loader: PFN_vkGetInstanceProcAddr) callconv(.c) void);

// #endif /*VK_VERSION_1_0*/

///! @brief Retrieves the version of the GLFW library.
///
///  This function retrieves the major, minor and revision numbers of the GLFW
///  library.  It is intended for when you are using GLFW as a shared library and
///  want to ensure that you are using the minimum required version.
///
///  Any or all of the version arguments may be `NULL`.
///
///  @param[out] major Where to store the major version number, or `NULL`.
///  @param[out] minor Where to store the minor version number, or `NULL`.
///  @param[out] rev Where to store the revision number, or `NULL`.
///
///  @errors None.
///
///  @remark This function may be called before @ref glfwInit.
///
///  @thread_safety This function may be called from any thread.
///
///  @sa @ref intro_version
///  @sa @ref glfwGetVersionString
///
///  @since Added in version 1.0.
///
///  @ingroup init
pub const getVersion = f("glfwGetVersion", fn(major: *c_int, minor: *c_int, rev: *c_int) callconv(.c) void);

///! @brief Returns a string describing the compile-time configuration.
///
///  This function returns the compile-time generated
///  [version string](@ref intro_version_string) of the GLFW library binary.  It describes
///  the version, platforms, compiler and any platform or operating system specific
///  compile-time options.  It should not be confused with the OpenGL or OpenGL ES version
///  string, queried with `glGetString`.
///
///  __Do not use the version string__ to parse the GLFW library version.  The
///  @ref glfwGetVersion function provides the version of the running library
///  binary in numerical format.
///
///  __Do not use the version string__ to parse what platforms are supported.  The @ref
///  glfwPlatformSupported function lets you query platform support.
///
///  @return The ASCII encoded GLFW version string.
///
///  @errors None.
///
///  @remark This function may be called before @ref glfwInit.
///
///  @pointer_lifetime The returned string is static and compile-time generated.
///
///  @thread_safety This function may be called from any thread.
///
///  @sa @ref intro_version
///  @sa @ref glfwGetVersion
///
///  @since Added in version 3.0.
///
///  @ingroup init
pub const getVersionString = f("glfwGetVersionString", fn() callconv(.c) [*:0]const u8);

///! @brief Returns and clears the last error for the calling thread.
///
///  This function returns and clears the [error code](@ref errors) of the last
///  error that occurred on the calling thread, and optionally a UTF-8 encoded
///  human-readable description of it.  If no error has occurred since the last
///  call, it returns @ref GLFW_NO_ERROR (zero) and the description pointer is
///  set to `NULL`.
///
///  @param[in] description Where to store the error description pointer, or `NULL`.
///  @return The last error code for the calling thread, or @ref GLFW_NO_ERROR
///  (zero).
///
///  @errors None.
///
///  @pointer_lifetime The returned string is allocated and freed by GLFW.  You
///  should not free it yourself.  It is guaranteed to be valid only until the
///  next error occurs or the library is terminated.
///
///  @remark This function may be called before @ref glfwInit.
///
///  @thread_safety This function may be called from any thread.
///
///  @sa @ref error_handling
///  @sa @ref glfwSetErrorCallback
///
///  @since Added in version 3.3.
///
///  @ingroup init
pub const getError = f("glfwGetError", fn(description: *[*:0]const u8) callconv(.c) c_int);

///! @brief Sets the error callback.
///
///  This function sets the error callback, which is called with an error code
///  and a human-readable description each time a GLFW error occurs.
///
///  The error code is set before the callback is called.  Calling @ref
///  glfwGetError from the error callback will return the same value as the error
///  code argument.
///
///  The error callback is called on the thread where the error occurred.  If you
///  are using GLFW from multiple threads, your error callback needs to be
///  written accordingly.
///
///  Because the description string may have been generated specifically for that
///  error, it is not guaranteed to be valid after the callback has returned.  If
///  you wish to use it after the callback returns, you need to make a copy.
///
///  Once set, the error callback remains set even after the library has been
///  terminated.
///
///  @param[in] callback The new callback, or `NULL` to remove the currently set
///  callback.
///  @return The previously set callback, or `NULL` if no callback was set.
///
///  @callback_signature
///  @code
///  void callback_name(int error_code, const char* description)
///  @endcode
///  For more information about the callback parameters, see the
///  [callback pointer type](@ref GLFWerrorfun).
///
///  @errors None.
///
///  @remark This function may be called before @ref glfwInit.
///
///  @thread_safety This function must only be called from the main thread.
///
///  @sa @ref error_handling
///  @sa @ref glfwGetError
///
///  @since Added in version 3.0.
///
///  @ingroup init
pub const setErrorCallback = f("glfwSetErrorCallback", fn(callback: ErrorFun) callconv(.c) ErrorFun);

///! @brief Returns the currently selected platform.
///
///  This function returns the platform that was selected during initialization.  The
///  returned value will be one of `GLFW_PLATFORM_WIN32`, `GLFW_PLATFORM_COCOA`,
///  `GLFW_PLATFORM_WAYLAND`, `GLFW_PLATFORM_X11` or `GLFW_PLATFORM_NULL`.
///
///  @return The currently selected platform, or zero if an error occurred.
///
///  @errors Possible errors include @ref GLFW_NOT_INITIALIZED.
///
///  @thread_safety This function may be called from any thread.
///
///  @sa @ref platform
///  @sa @ref glfwPlatformSupported
///
///  @since Added in version 3.4.
///
///  @ingroup init
pub const getPlatform = f("glfwGetPlatform", fn() callconv(.c) c_int);

///! @brief Returns whether the library includes support for the specified platform.
///
///  This function returns whether the library was compiled with support for the specified
///  platform.  The platform must be one of `GLFW_PLATFORM_WIN32`, `GLFW_PLATFORM_COCOA`,
///  `GLFW_PLATFORM_WAYLAND`, `GLFW_PLATFORM_X11` or `GLFW_PLATFORM_NULL`.
///
///  @param[in] platform The platform to query.
///  @return `GLFW_TRUE` if the platform is supported, or `GLFW_FALSE` otherwise.
///
///  @errors Possible errors include @ref GLFW_INVALID_ENUM.
///
///  @remark This function may be called before @ref glfwInit.
///
///  @thread_safety This function may be called from any thread.
///
///  @sa @ref platform
///  @sa @ref glfwGetPlatform
///
///  @since Added in version 3.4.
///
///  @ingroup init
pub const platformSupported = f("glfwPlatformSupported", fn(platform: c_int) callconv(.c) c_int);

///! @brief Returns the currently connected monitors.
///
///  This function returns an array of handles for all currently connected
///  monitors.  The primary monitor is always first in the returned array.  If no
///  monitors were found, this function returns `NULL`.
///
///  @param[out] count Where to store the number of monitors in the returned
///  array.  This is set to zero if an error occurred.
///  @return An array of monitor handles, or `NULL` if no monitors were found or
///  if an [error](@ref error_handling) occurred.
///
///  @errors Possible errors include @ref GLFW_NOT_INITIALIZED.
///
///  @pointer_lifetime The returned array is allocated and freed by GLFW.  You
///  should not free it yourself.  It is guaranteed to be valid only until the
///  monitor configuration changes or the library is terminated.
///
///  @thread_safety This function must only be called from the main thread.
///
///  @sa @ref monitor_monitors
///  @sa @ref monitor_event
///  @sa @ref glfwGetPrimaryMonitor
///
///  @since Added in version 3.0.
///
///  @ingroup monitor
pub const getMonitors = f("glfwGetMonitors", fn(count: *c_int) callconv(.c) [*]*Monitor);

///! @brief Returns the primary monitor.
///
///  This function returns the primary monitor.  This is usually the monitor
///  where elements like the task bar or global menu bar are located.
///
///  @return The primary monitor, or `NULL` if no monitors were found or if an
///  [error](@ref error_handling) occurred.
///
///  @errors Possible errors include @ref GLFW_NOT_INITIALIZED.
///
///  @thread_safety This function must only be called from the main thread.
///
///  @remark The primary monitor is always first in the array returned by @ref
///  glfwGetMonitors.
///
///  @sa @ref monitor_monitors
///  @sa @ref glfwGetMonitors
///
///  @since Added in version 3.0.
///
///  @ingroup monitor
pub const getPrimaryMonitor = f("glfwGetPrimaryMonitor", fn() callconv(.c) *Monitor);

///! @brief Returns the position of the monitor's viewport on the virtual screen.
///
///  This function returns the position, in screen coordinates, of the upper-left
///  corner of the specified monitor.
///
///  Any or all of the position arguments may be `NULL`.  If an error occurs, all
///  non-`NULL` position arguments will be set to zero.
///
///  @param[in] monitor The monitor to query.
///  @param[out] xpos Where to store the monitor x-coordinate, or `NULL`.
///  @param[out] ypos Where to store the monitor y-coordinate, or `NULL`.
///
///  @errors Possible errors include @ref GLFW_NOT_INITIALIZED and @ref
///  GLFW_PLATFORM_ERROR.
///
///  @thread_safety This function must only be called from the main thread.
///
///  @sa @ref monitor_properties
///
///  @since Added in version 3.0.
///
///  @ingroup monitor
pub const getMonitorPos = f("glfwGetMonitorPos", fn(monitor: *Monitor, xpos: *c_int, ypos: *c_int) callconv(.c) void);

///! @brief Retrieves the work area of the monitor.
///
///  This function returns the position, in screen coordinates, of the upper-left
///  corner of the work area of the specified monitor along with the work area
///  size in screen coordinates. The work area is defined as the area of the
///  monitor not occluded by the window system task bar where present. If no
///  task bar exists then the work area is the monitor resolution in screen
///  coordinates.
///
///  Any or all of the position and size arguments may be `NULL`.  If an error
///  occurs, all non-`NULL` position and size arguments will be set to zero.
///
///  @param[in] monitor The monitor to query.
///  @param[out] xpos Where to store the monitor x-coordinate, or `NULL`.
///  @param[out] ypos Where to store the monitor y-coordinate, or `NULL`.
///  @param[out] width Where to store the monitor width, or `NULL`.
///  @param[out] height Where to store the monitor height, or `NULL`.
///
///  @errors Possible errors include @ref GLFW_NOT_INITIALIZED and @ref
///  GLFW_PLATFORM_ERROR.
///
///  @thread_safety This function must only be called from the main thread.
///
///  @sa @ref monitor_workarea
///
///  @since Added in version 3.3.
///
///  @ingroup monitor
pub const getMonitorWorkarea = f("glfwGetMonitorWorkarea", fn(monitor: *Monitor, xpos: *c_int, ypos: *c_int, width: *c_int, height: *c_int) callconv(.c) void);

///! @brief Returns the physical size of the monitor.
///
///  This function returns the size, in millimetres, of the display area of the
///  specified monitor.
///
///  Some platforms do not provide accurate monitor size information, either
///  because the monitor [EDID][] data is incorrect or because the driver does
///  not report it accurately.
///
///  [EDID]: https://en.wikipedia.org/wiki/Extended_display_identification_data
///
///  Any or all of the size arguments may be `NULL`.  If an error occurs, all
///  non-`NULL` size arguments will be set to zero.
///
///  @param[in] monitor The monitor to query.
///  @param[out] widthMM Where to store the width, in millimetres, of the
///  monitor's display area, or `NULL`.
///  @param[out] heightMM Where to store the height, in millimetres, of the
///  monitor's display area, or `NULL`.
///
///  @errors Possible errors include @ref GLFW_NOT_INITIALIZED.
///
///  @remark @win32 On Windows 8 and earlier the physical size is calculated from
///  the current resolution and system DPI instead of querying the monitor EDID data.
///
///  @thread_safety This function must only be called from the main thread.
///
///  @sa @ref monitor_properties
///
///  @since Added in version 3.0.
///
///  @ingroup monitor
pub const getMonitorPhysicalSize = f("glfwGetMonitorPhysicalSize", fn(monitor: *Monitor, widthMM: *c_int, heightMM: *c_int) callconv(.c) void);

///! @brief Retrieves the content scale for the specified monitor.
///
///  This function retrieves the content scale for the specified monitor.  The
///  content scale is the ratio between the current DPI and the platform's
///  default DPI.  This is especially important for text and any UI elements.  If
///  the pixel dimensions of your UI scaled by this look appropriate on your
///  machine then it should appear at a reasonable size on other machines
///  regardless of their DPI and scaling settings.  This relies on the system DPI
///  and scaling settings being somewhat correct.
///
///  The content scale may depend on both the monitor resolution and pixel
///  density and on user settings.  It may be very different from the raw DPI
///  calculated from the physical size and current resolution.
///
///  @param[in] monitor The monitor to query.
///  @param[out] xscale Where to store the x-axis content scale, or `NULL`.
///  @param[out] yscale Where to store the y-axis content scale, or `NULL`.
///
///  @errors Possible errors include @ref GLFW_NOT_INITIALIZED and @ref
///  GLFW_PLATFORM_ERROR.
///
///  @remark @wayland Fractional scaling information is not yet available for
///  monitors, so this function only returns integer content scales.
///
///  @thread_safety This function must only be called from the main thread.
///
///  @sa @ref monitor_scale
///  @sa @ref glfwGetWindowContentScale
///
///  @since Added in version 3.3.
///
///  @ingroup monitor
pub const getMonitorContentScale = f("glfwGetMonitorContentScale", fn(monitor: *Monitor, xscale: *f32, yscale: *f32) callconv(.c) void);

///! @brief Returns the name of the specified monitor.
///
///  This function returns a human-readable name, encoded as UTF-8, of the
///  specified monitor.  The name typically reflects the make and model of the
///  monitor and is not guaranteed to be unique among the connected monitors.
///
///  @param[in] monitor The monitor to query.
///  @return The UTF-8 encoded name of the monitor, or `NULL` if an
///  [error](@ref error_handling) occurred.
///
///  @errors Possible errors include @ref GLFW_NOT_INITIALIZED.
///
///  @pointer_lifetime The returned string is allocated and freed by GLFW.  You
///  should not free it yourself.  It is valid until the specified monitor is
///  disconnected or the library is terminated.
///
///  @thread_safety This function must only be called from the main thread.
///
///  @sa @ref monitor_properties
///
///  @since Added in version 3.0.
///
///  @ingroup monitor
pub const getMonitorName = f("glfwGetMonitorName", fn(monitor: *Monitor) callconv(.c) [*:0]const u8);

///! @brief Sets the user pointer of the specified monitor.
///
///  This function sets the user-defined pointer of the specified monitor.  The
///  current value is retained until the monitor is disconnected.  The initial
///  value is `NULL`.
///
///  This function may be called from the monitor callback, even for a monitor
///  that is being disconnected.
///
///  @param[in] monitor The monitor whose pointer to set.
///  @param[in] pointer The new value.
///
///  @errors Possible errors include @ref GLFW_NOT_INITIALIZED.
///
///  @thread_safety This function may be called from any thread.  Access is not
///  synchronized.
///
///  @sa @ref monitor_userptr
///  @sa @ref glfwGetMonitorUserPointer
///
///  @since Added in version 3.3.
///
///  @ingroup monitor
pub const setMonitorUserPointer = f("glfwSetMonitorUserPointer", fn(monitor: *Monitor, pointer: *anyopaque) callconv(.c) void);

///! @brief Returns the user pointer of the specified monitor.
///
///  This function returns the current value of the user-defined pointer of the
///  specified monitor.  The initial value is `NULL`.
///
///  This function may be called from the monitor callback, even for a monitor
///  that is being disconnected.
///
///  @param[in] monitor The monitor whose pointer to return.
///
///  @errors Possible errors include @ref GLFW_NOT_INITIALIZED.
///
///  @thread_safety This function may be called from any thread.  Access is not
///  synchronized.
///
///  @sa @ref monitor_userptr
///  @sa @ref glfwSetMonitorUserPointer
///
///  @since Added in version 3.3.
///
///  @ingroup monitor
pub const getMonitorUserPointer = f("glfwGetMonitorUserPointer", fn(monitor: *Monitor) callconv(.c) *anyopaque);

///! @brief Sets the monitor configuration callback.
///
///  This function sets the monitor configuration callback, or removes the
///  currently set callback.  This is called when a monitor is connected to or
///  disconnected from the system.
///
///  @param[in] callback The new callback, or `NULL` to remove the currently set
///  callback.
///  @return The previously set callback, or `NULL` if no callback was set or the
///  library had not been [initialized](@ref intro_init).
///
///  @callback_signature
///  @code
///  void function_name(GLFWmonitor* monitor, int event)
///  @endcode
///  For more information about the callback parameters, see the
///  [function pointer type](@ref GLFWmonitorfun).
///
///  @errors Possible errors include @ref GLFW_NOT_INITIALIZED.
///
///  @thread_safety This function must only be called from the main thread.
///
///  @sa @ref monitor_event
///
///  @since Added in version 3.0.
///
///  @ingroup monitor
pub const setMonitorCallback = f("glfwSetMonitorCallback", fn(callback: MonitorFun) callconv(.c) MonitorFun);

///! @brief Returns the available video modes for the specified monitor.
///
///  This function returns an array of all video modes supported by the specified
///  monitor.  The returned array is sorted in ascending order, first by color
///  bit depth (the sum of all channel depths), then by resolution area (the
///  product of width and height), then resolution width and finally by refresh
///  rate.
///
///  @param[in] monitor The monitor to query.
///  @param[out] count Where to store the number of video modes in the returned
///  array.  This is set to zero if an error occurred.
///  @return An array of video modes, or `NULL` if an
///  [error](@ref error_handling) occurred.
///
///  @errors Possible errors include @ref GLFW_NOT_INITIALIZED and @ref
///  GLFW_PLATFORM_ERROR.
///
///  @pointer_lifetime The returned array is allocated and freed by GLFW.  You
///  should not free it yourself.  It is valid until the specified monitor is
///  disconnected, this function is called again for that monitor or the library
///  is terminated.
///
///  @thread_safety This function must only be called from the main thread.
///
///  @sa @ref monitor_modes
///  @sa @ref glfwGetVideoMode
///
///  @since Added in version 1.0.
///  @glfw3 Changed to return an array of modes for a specific monitor.
///
///  @ingroup monitor
pub const getVideoModes = f("glfwGetVideoModes", fn(monitor: *Monitor, count: *c_int) callconv(.c) [*]const VidMode);

///! @brief Returns the current mode of the specified monitor.
///
///  This function returns the current video mode of the specified monitor.  If
///  you have created a full screen window for that monitor, the return value
///  will depend on whether that window is iconified.
///
///  @param[in] monitor The monitor to query.
///  @return The current mode of the monitor, or `NULL` if an
///  [error](@ref error_handling) occurred.
///
///  @errors Possible errors include @ref GLFW_NOT_INITIALIZED and @ref
///  GLFW_PLATFORM_ERROR.
///
///  @pointer_lifetime The returned array is allocated and freed by GLFW.  You
///  should not free it yourself.  It is valid until the specified monitor is
///  disconnected or the library is terminated.
///
///  @thread_safety This function must only be called from the main thread.
///
///  @sa @ref monitor_modes
///  @sa @ref glfwGetVideoModes
///
///  @since Added in version 3.0.  Replaces `glfwGetDesktopMode`.
///
///  @ingroup monitor
pub const getVideoMode = f("glfwGetVideoMode", fn(monitor: *Monitor) callconv(.c) *const VidMode);

///! @brief Generates a gamma ramp and sets it for the specified monitor.
///
///  This function generates an appropriately sized gamma ramp from the specified
///  exponent and then calls @ref glfwSetGammaRamp with it.  The value must be
///  a finite number greater than zero.
///
///  The software controlled gamma ramp is applied _in addition_ to the hardware
///  gamma correction, which today is usually an approximation of sRGB gamma.
///  This means that setting a perfectly linear ramp, or gamma 1.0, will produce
///  the default (usually sRGB-like) behavior.
///
///  For gamma correct rendering with OpenGL or OpenGL ES, see the @ref
///  GLFW_SRGB_CAPABLE hint.
///
///  @param[in] monitor The monitor whose gamma ramp to set.
///  @param[in] gamma The desired exponent.
///
///  @errors Possible errors include @ref GLFW_NOT_INITIALIZED, @ref GLFW_INVALID_VALUE,
///  @ref GLFW_PLATFORM_ERROR and @ref GLFW_FEATURE_UNAVAILABLE (see remarks).
///
///  @remark @wayland Gamma handling is a privileged protocol, this function
///  will thus never be implemented and emits @ref GLFW_FEATURE_UNAVAILABLE.
///
///  @thread_safety This function must only be called from the main thread.
///
///  @sa @ref monitor_gamma
///
///  @since Added in version 3.0.
///
///  @ingroup monitor
pub const setGamma = f("glfwSetGamma", fn(monitor: *Monitor, gamma: f32) callconv(.c) void);

///! @brief Returns the current gamma ramp for the specified monitor.
///
///  This function returns the current gamma ramp of the specified monitor.
///
///  @param[in] monitor The monitor to query.
///  @return The current gamma ramp, or `NULL` if an
///  [error](@ref error_handling) occurred.
///
///  @errors Possible errors include @ref GLFW_NOT_INITIALIZED, @ref GLFW_PLATFORM_ERROR
///  and @ref GLFW_FEATURE_UNAVAILABLE (see remarks).
///
///  @remark @wayland Gamma handling is a privileged protocol, this function
///  will thus never be implemented and emits @ref GLFW_FEATURE_UNAVAILABLE while
///  returning `NULL`.
///
///  @pointer_lifetime The returned structure and its arrays are allocated and
///  freed by GLFW.  You should not free them yourself.  They are valid until the
///  specified monitor is disconnected, this function is called again for that
///  monitor or the library is terminated.
///
///  @thread_safety This function must only be called from the main thread.
///
///  @sa @ref monitor_gamma
///
///  @since Added in version 3.0.
///
///  @ingroup monitor
pub const getGammaRamp = f("glfwGetGammaRamp", fn(monitor: *Monitor) callconv(.c) *const GammaRamp);

///! @brief Sets the current gamma ramp for the specified monitor.
///
///  This function sets the current gamma ramp for the specified monitor.  The
///  original gamma ramp for that monitor is saved by GLFW the first time this
///  function is called and is restored by @ref glfwTerminate.
///
///  The software controlled gamma ramp is applied _in addition_ to the hardware
///  gamma correction, which today is usually an approximation of sRGB gamma.
///  This means that setting a perfectly linear ramp, or gamma 1.0, will produce
///  the default (usually sRGB-like) behavior.
///
///  For gamma correct rendering with OpenGL or OpenGL ES, see the @ref
///  GLFW_SRGB_CAPABLE hint.
///
///  @param[in] monitor The monitor whose gamma ramp to set.
///  @param[in] ramp The gamma ramp to use.
///
///  @errors Possible errors include @ref GLFW_NOT_INITIALIZED, @ref GLFW_PLATFORM_ERROR
///  and @ref GLFW_FEATURE_UNAVAILABLE (see remarks).
///
///  @remark The size of the specified gamma ramp should match the size of the
///  current ramp for that monitor.
///
///  @remark @win32 The gamma ramp size must be 256.
///
///  @remark @wayland Gamma handling is a privileged protocol, this function
///  will thus never be implemented and emits @ref GLFW_FEATURE_UNAVAILABLE.
///
///  @pointer_lifetime The specified gamma ramp is copied before this function
///  returns.
///
///  @thread_safety This function must only be called from the main thread.
///
///  @sa @ref monitor_gamma
///
///  @since Added in version 3.0.
///
///  @ingroup monitor
pub const setGammaRamp = f("glfwSetGammaRamp", fn(monitor: *Monitor, ramp: *const GammaRamp) callconv(.c) void);

///! @brief Resets all window hints to their default values.
///
///  This function resets all window hints to their
///  [default values](@ref window_hints_values).
///
///  @errors Possible errors include @ref GLFW_NOT_INITIALIZED.
///
///  @thread_safety This function must only be called from the main thread.
///
///  @sa @ref window_hints
///  @sa @ref glfwWindowHint
///  @sa @ref glfwWindowHintString
///
///  @since Added in version 3.0.
///
///  @ingroup window
pub const defaultWindowHints = f("glfwDefaultWindowHints", fn() callconv(.c) void);

///! @brief Sets the specified window hint to the desired value.
///
///  This function sets hints for the next call to @ref glfwCreateWindow.  The
///  hints, once set, retain their values until changed by a call to this
///  function or @ref glfwDefaultWindowHints, or until the library is terminated.
///
///  Only integer value hints can be set with this function.  String value hints
///  are set with @ref glfwWindowHintString.
///
///  This function does not check whether the specified hint values are valid.
///  If you set hints to invalid values this will instead be reported by the next
///  call to @ref glfwCreateWindow.
///
///  Some hints are platform specific.  These may be set on any platform but they
///  will only affect their specific platform.  Other platforms will ignore them.
///  Setting these hints requires no platform specific headers or functions.
///
///  @param[in] hint The [window hint](@ref window_hints) to set.
///  @param[in] value The new value of the window hint.
///
///  @errors Possible errors include @ref GLFW_NOT_INITIALIZED and @ref
///  GLFW_INVALID_ENUM.
///
///  @thread_safety This function must only be called from the main thread.
///
///  @sa @ref window_hints
///  @sa @ref glfwWindowHintString
///  @sa @ref glfwDefaultWindowHints
///
///  @since Added in version 3.0.  Replaces `glfwOpenWindowHint`.
///
///  @ingroup window
pub const windowHint = f("glfwWindowHint", fn(hint: c_int, value: c_int) callconv(.c) void);

///! @brief Sets the specified window hint to the desired value.
///
///  This function sets hints for the next call to @ref glfwCreateWindow.  The
///  hints, once set, retain their values until changed by a call to this
///  function or @ref glfwDefaultWindowHints, or until the library is terminated.
///
///  Only string type hints can be set with this function.  Integer value hints
///  are set with @ref glfwWindowHint.
///
///  This function does not check whether the specified hint values are valid.
///  If you set hints to invalid values this will instead be reported by the next
///  call to @ref glfwCreateWindow.
///
///  Some hints are platform specific.  These may be set on any platform but they
///  will only affect their specific platform.  Other platforms will ignore them.
///  Setting these hints requires no platform specific headers or functions.
///
///  @param[in] hint The [window hint](@ref window_hints) to set.
///  @param[in] value The new value of the window hint.
///
///  @errors Possible errors include @ref GLFW_NOT_INITIALIZED and @ref
///  GLFW_INVALID_ENUM.
///
///  @pointer_lifetime The specified string is copied before this function
///  returns.
///
///  @thread_safety This function must only be called from the main thread.
///
///  @sa @ref window_hints
///  @sa @ref glfwWindowHint
///  @sa @ref glfwDefaultWindowHints
///
///  @since Added in version 3.3.
///
///  @ingroup window
pub const windowHintString = f("glfwWindowHintString", fn(hint: c_int, value: [*:0]const u8) callconv(.c) void);

///! @brief Creates a window and its associated context.
///
///  This function creates a window and its associated OpenGL or OpenGL ES
///  context.  Most of the options controlling how the window and its context
///  should be created are specified with [window hints](@ref window_hints).
///
///  Successful creation does not change which context is current.  Before you
///  can use the newly created context, you need to
///  [make it current](@ref context_current).  For information about the `share`
///  parameter, see @ref context_sharing.
///
///  The created window, framebuffer and context may differ from what you
///  requested, as not all parameters and hints are
///  [hard constraints](@ref window_hints_hard).  This includes the size of the
///  window, especially for full screen windows.  To query the actual attributes
///  of the created window, framebuffer and context, see @ref
///  glfwGetWindowAttrib, @ref glfwGetWindowSize and @ref glfwGetFramebufferSize.
///
///  To create a full screen window, you need to specify the monitor the window
///  will cover.  If no monitor is specified, the window will be windowed mode.
///  Unless you have a way for the user to choose a specific monitor, it is
///  recommended that you pick the primary monitor.  For more information on how
///  to query connected monitors, see @ref monitor_monitors.
///
///  For full screen windows, the specified size becomes the resolution of the
///  window's _desired video mode_.  As long as a full screen window is not
///  iconified, the supported video mode most closely matching the desired video
///  mode is set for the specified monitor.  For more information about full
///  screen windows, including the creation of so called _windowed full screen_
///  or _borderless full screen_ windows, see @ref window_windowed_full_screen.
///
///  Once you have created the window, you can switch it between windowed and
///  full screen mode with @ref glfwSetWindowMonitor.  This will not affect its
///  OpenGL or OpenGL ES context.
///
///  By default, newly created windows use the placement recommended by the
///  window system.  To create the window at a specific position, set the @ref
///  GLFW_POSITION_X and @ref GLFW_POSITION_Y window hints before creation.  To
///  restore the default behavior, set either or both hints back to
///  `GLFW_ANY_POSITION`.
///
///  As long as at least one full screen window is not iconified, the screensaver
///  is prohibited from starting.
///
///  Window systems put limits on window sizes.  Very large or very small window
///  dimensions may be overridden by the window system on creation.  Check the
///  actual [size](@ref window_size) after creation.
///
///  The [swap interval](@ref buffer_swap) is not set during window creation and
///  the initial value may vary depending on driver settings and defaults.
///
///  @param[in] width The desired width, in screen coordinates, of the window.
///  This must be greater than zero.
///  @param[in] height The desired height, in screen coordinates, of the window.
///  This must be greater than zero.
///  @param[in] title The initial, UTF-8 encoded window title.
///  @param[in] monitor The monitor to use for full screen mode, or `NULL` for
///  windowed mode.
///  @param[in] share The window whose context to share resources with, or `NULL`
///  to not share resources.
///  @return The handle of the created window, or `NULL` if an
///  [error](@ref error_handling) occurred.
///
///  @errors Possible errors include @ref GLFW_NOT_INITIALIZED, @ref
///  GLFW_INVALID_ENUM, @ref GLFW_INVALID_VALUE, @ref GLFW_API_UNAVAILABLE, @ref
///  GLFW_VERSION_UNAVAILABLE, @ref GLFW_FORMAT_UNAVAILABLE, @ref
///  GLFW_NO_WINDOW_CONTEXT and @ref GLFW_PLATFORM_ERROR.
///
///  @remark @win32 Window creation will fail if the Microsoft GDI software
///  OpenGL implementation is the only one available.
///
///  @remark @win32 If the executable has an icon resource named `GLFW_ICON,` it
///  will be set as the initial icon for the window.  If no such icon is present,
///  the `IDI_APPLICATION` icon will be used instead.  To set a different icon,
///  see @ref glfwSetWindowIcon.
///
///  @remark @win32 The context to share resources with must not be current on
///  any other thread.
///
///  @remark @macos The OS only supports core profile contexts for OpenGL
///  versions 3.2 and later.  Before creating an OpenGL context of version 3.2 or
///  later you must set the [GLFW_OPENGL_PROFILE](@ref GLFW_OPENGL_PROFILE_hint)
///  hint accordingly.  OpenGL 3.0 and 3.1 contexts are not supported at all
///  on macOS.
///
///  @remark @macos The GLFW window has no icon, as it is not a document
///  window, but the dock icon will be the same as the application bundle's icon.
///  For more information on bundles, see the
///  [Bundle Programming Guide][bundle-guide] in the Mac Developer Library.
///
///  [bundle-guide]: https://developer.apple.com/library/mac/documentation/CoreFoundation/Conceptual/CFBundles/
///
///  @remark @macos On OS X 10.10 and later the window frame will not be rendered
///  at full resolution on Retina displays unless the
///  [GLFW_SCALE_FRAMEBUFFER](@ref GLFW_SCALE_FRAMEBUFFER_hint)
///  hint is `GLFW_TRUE` and the `NSHighResolutionCapable` key is enabled in the
///  application bundle's `Info.plist`.  For more information, see
///  [High Resolution Guidelines for OS X][hidpi-guide] in the Mac Developer
///  Library.  The GLFW test and example programs use a custom `Info.plist`
///  template for this, which can be found as `CMake/Info.plist.in` in the source
///  tree.
///
///  [hidpi-guide]: https://developer.apple.com/library/mac/documentation/GraphicsAnimation/Conceptual/HighResolutionOSX/Explained/Explained.html
///
///  @remark @macos When activating frame autosaving with
///  [GLFW_COCOA_FRAME_NAME](@ref GLFW_COCOA_FRAME_NAME_hint), the specified
///  window size and position may be overridden by previously saved values.
///
///  @remark @wayland GLFW uses [libdecor][] where available to create its window
///  decorations.  This in turn uses server-side XDG decorations where available
///  and provides high quality client-side decorations on compositors like GNOME.
///  If both XDG decorations and libdecor are unavailable, GLFW falls back to
///  a very simple set of window decorations that only support moving, resizing
///  and the window manager's right-click menu.
///
///  [libdecor]: https://gitlab.freedesktop.org/libdecor/libdecor
///
///  @remark @x11 Some window managers will not respect the placement of
///  initially hidden windows.
///
///  @remark @x11 Due to the asynchronous nature of X11, it may take a moment for
///  a window to reach its requested state.  This means you may not be able to
///  query the final size, position or other attributes directly after window
///  creation.
///
///  @remark @x11 The class part of the `WM_CLASS` window property will by
///  default be set to the window title passed to this function.  The instance
///  part will use the contents of the `RESOURCE_NAME` environment variable, if
///  present and not empty, or fall back to the window title.  Set the
///  [GLFW_X11_CLASS_NAME](@ref GLFW_X11_CLASS_NAME_hint) and
///  [GLFW_X11_INSTANCE_NAME](@ref GLFW_X11_INSTANCE_NAME_hint) window hints to
///  override this.
///
///  @thread_safety This function must only be called from the main thread.
///
///  @sa @ref window_creation
///  @sa @ref glfwDestroyWindow
///
///  @since Added in version 3.0.  Replaces `glfwOpenWindow`.
///
///  @ingroup window
pub const createWindow = f("glfwCreateWindow", fn(width: c_int, height: c_int, title: [*:0]const u8, monitor: ?*Monitor, share: ?*Window) callconv(.c) *Window);

///! @brief Destroys the specified window and its context.
///
///  This function destroys the specified window and its context.  On calling
///  this function, no further callbacks will be called for that window.
///
///  If the context of the specified window is current on the main thread, it is
///  detached before being destroyed.
///
///  @param[in] window The window to destroy.
///
///  @errors Possible errors include @ref GLFW_NOT_INITIALIZED and @ref
///  GLFW_PLATFORM_ERROR.
///
///  @note The context of the specified window must not be current on any other
///  thread when this function is called.
///
///  @reentrancy This function must not be called from a callback.
///
///  @thread_safety This function must only be called from the main thread.
///
///  @sa @ref window_creation
///  @sa @ref glfwCreateWindow
///
///  @since Added in version 3.0.  Replaces `glfwCloseWindow`.
///
///  @ingroup window
pub const destroyWindow = f("glfwDestroyWindow", fn(window: *Window) callconv(.c) void);

///! @brief Checks the close flag of the specified window.
///
///  This function returns the value of the close flag of the specified window.
///
///  @param[in] window The window to query.
///  @return The value of the close flag.
///
///  @errors Possible errors include @ref GLFW_NOT_INITIALIZED.
///
///  @thread_safety This function may be called from any thread.  Access is not
///  synchronized.
///
///  @sa @ref window_close
///
///  @since Added in version 3.0.
///
///  @ingroup window
pub const windowShouldClose = f("glfwWindowShouldClose", fn(window: *Window) callconv(.c) void);

///! @brief Sets the close flag of the specified window.
///
///  This function sets the value of the close flag of the specified window.
///  This can be used to override the user's attempt to close the window, or
///  to signal that it should be closed.
///
///  @param[in] window The window whose flag to change.
///  @param[in] value The new value.
///
///  @errors Possible errors include @ref GLFW_NOT_INITIALIZED.
///
///  @thread_safety This function may be called from any thread.  Access is not
///  synchronized.
///
///  @sa @ref window_close
///
///  @since Added in version 3.0.
///
///  @ingroup window
pub const setWindowShouldClose = f("glfwSetWindowShouldClose", fn(window: *Window, value: c_int) callconv(.c) void);

///! @brief Returns the title of the specified window.
///
///  This function returns the window title, encoded as UTF-8, of the specified
///  window.  This is the title set previously by @ref glfwCreateWindow
///  or @ref glfwSetWindowTitle.
///
///  @param[in] window The window to query.
///  @return The UTF-8 encoded window title, or `NULL` if an
///  [error](@ref error_handling) occurred.
///
///  @errors Possible errors include @ref GLFW_NOT_INITIALIZED.
///
///  @remark The returned title is currently a copy of the title last set by @ref
///  glfwCreateWindow or @ref glfwSetWindowTitle.  It does not include any
///  additional text which may be appended by the platform or another program.
///
///  @pointer_lifetime The returned string is allocated and freed by GLFW.  You
///  should not free it yourself.  It is valid until the next call to @ref
///  glfwGetWindowTitle or @ref glfwSetWindowTitle, or until the library is
///  terminated.
///
///  @thread_safety This function must only be called from the main thread.
///
///  @sa @ref window_title
///  @sa @ref glfwSetWindowTitle
///
///  @since Added in version 3.4.
///
///  @ingroup window
pub const getWindowTitle = f("glfwGetWindowTitle", fn(window: *Window) callconv(.c) [*:0]const u8);

///! @brief Sets the title of the specified window.
///
///  This function sets the window title, encoded as UTF-8, of the specified
///  window.
///
///  @param[in] window The window whose title to change.
///  @param[in] title The UTF-8 encoded window title.
///
///  @errors Possible errors include @ref GLFW_NOT_INITIALIZED and @ref
///  GLFW_PLATFORM_ERROR.
///
///  @remark @macos The window title will not be updated until the next time you
///  process events.
///
///  @thread_safety This function must only be called from the main thread.
///
///  @sa @ref window_title
///  @sa @ref glfwGetWindowTitle
///
///  @since Added in version 1.0.
///  @glfw3 Added window handle parameter.
///
///  @ingroup window
pub const setWindowTitle = f("glfwSetWindowTitle", fn(window: *Window, title: [*:0]const u8) callconv(.c) void);

///! @brief Sets the icon for the specified window.
///
///  This function sets the icon of the specified window.  If passed an array of
///  candidate images, those of or closest to the sizes desired by the system are
///  selected.  If no images are specified, the window reverts to its default
///  icon.
///
///  The pixels are 32-bit, little-endian, non-premultiplied RGBA, i.e. eight
///  bits per channel with the red channel first.  They are arranged canonically
///  as packed sequential rows, starting from the top-left corner.
///
///  The desired image sizes varies depending on platform and system settings.
///  The selected images will be rescaled as needed.  Good sizes include 16x16,
///  32x32 and 48x48.
///
///  @param[in] window The window whose icon to set.
///  @param[in] count The number of images in the specified array, or zero to
///  revert to the default window icon.
///  @param[in] images The images to create the icon from.  This is ignored if
///  count is zero.
///
///  @errors Possible errors include @ref GLFW_NOT_INITIALIZED, @ref
///  GLFW_INVALID_VALUE, @ref GLFW_PLATFORM_ERROR and @ref
///  GLFW_FEATURE_UNAVAILABLE (see remarks).
///
///  @pointer_lifetime The specified image data is copied before this function
///  returns.
///
///  @remark @macos Regular windows do not have icons on macOS.  This function
///  will emit @ref GLFW_FEATURE_UNAVAILABLE.  The dock icon will be the same as
///  the application bundle's icon.  For more information on bundles, see the
///  [Bundle Programming Guide][bundle-guide] in the Mac Developer Library.
///
///  [bundle-guide]: https://developer.apple.com/library/mac/documentation/CoreFoundation/Conceptual/CFBundles/
///
///  @remark @wayland There is no existing protocol to change an icon, the
///  window will thus inherit the one defined in the application's desktop file.
///  This function will emit @ref GLFW_FEATURE_UNAVAILABLE.
///
///  @thread_safety This function must only be called from the main thread.
///
///  @sa @ref window_icon
///
///  @since Added in version 3.2.
///
///  @ingroup window
pub const setWindowIcon = f("glfwSetWindowIcon", fn(window: *Window, count: c_int, images: [*]const Image) callconv(.c) void);

///! @brief Retrieves the position of the content area of the specified window.
///
///  This function retrieves the position, in screen coordinates, of the
///  upper-left corner of the content area of the specified window.
///
///  Any or all of the position arguments may be `NULL`.  If an error occurs, all
///  non-`NULL` position arguments will be set to zero.
///
///  @param[in] window The window to query.
///  @param[out] xpos Where to store the x-coordinate of the upper-left corner of
///  the content area, or `NULL`.
///  @param[out] ypos Where to store the y-coordinate of the upper-left corner of
///  the content area, or `NULL`.
///
///  @errors Possible errors include @ref GLFW_NOT_INITIALIZED, @ref
///  GLFW_PLATFORM_ERROR and @ref GLFW_FEATURE_UNAVAILABLE (see remarks).
///
///  @remark @wayland There is no way for an application to retrieve the global
///  position of its windows.  This function will emit @ref
///  GLFW_FEATURE_UNAVAILABLE.
///
///  @thread_safety This function must only be called from the main thread.
///
///  @sa @ref window_pos
///  @sa @ref glfwSetWindowPos
///
///  @since Added in version 3.0.
///
///  @ingroup window
pub conset getWindowPos = f("glfwGetWindowPos", fn(window: *Window, xpos: *c_int, ypos: *c_int) callconv(.c) void);

///! @brief Sets the position of the content area of the specified window.
///
///  This function sets the position, in screen coordinates, of the upper-left
///  corner of the content area of the specified windowed mode window.  If the
///  window is a full screen window, this function does nothing.
///
///  __Do not use this function__ to move an already visible window unless you
///  have very good reasons for doing so, as it will confuse and annoy the user.
///
///  The window manager may put limits on what positions are allowed.  GLFW
///  cannot and should not override these limits.
///
///  @param[in] window The window to query.
///  @param[in] xpos The x-coordinate of the upper-left corner of the content area.
///  @param[in] ypos The y-coordinate of the upper-left corner of the content area.
///
///  @errors Possible errors include @ref GLFW_NOT_INITIALIZED, @ref
///  GLFW_PLATFORM_ERROR and @ref GLFW_FEATURE_UNAVAILABLE (see remarks).
///
///  @remark @wayland There is no way for an application to set the global
///  position of its windows.  This function will emit @ref
///  GLFW_FEATURE_UNAVAILABLE.
///
///  @thread_safety This function must only be called from the main thread.
///
///  @sa @ref window_pos
///  @sa @ref glfwGetWindowPos
///
///  @since Added in version 1.0.
///  @glfw3 Added window handle parameter.
///
///  @ingroup window
pub const setWindowPos = f("glfwSetWindowPos", fn(window: *Window, xpos: c_int, ypos: c_int) callconv(.c) void);

///! @brief Retrieves the size of the content area of the specified window.
///
///  This function retrieves the size, in screen coordinates, of the content area
///  of the specified window.  If you wish to retrieve the size of the
///  framebuffer of the window in pixels, see @ref glfwGetFramebufferSize.
///
///  Any or all of the size arguments may be `NULL`.  If an error occurs, all
///  non-`NULL` size arguments will be set to zero.
///
///  @param[in] window The window whose size to retrieve.
///  @param[out] width Where to store the width, in screen coordinates, of the
///  content area, or `NULL`.
///  @param[out] height Where to store the height, in screen coordinates, of the
///  content area, or `NULL`.
///
///  @errors Possible errors include @ref GLFW_NOT_INITIALIZED and @ref
///  GLFW_PLATFORM_ERROR.
///
///  @thread_safety This function must only be called from the main thread.
///
///  @sa @ref window_size
///  @sa @ref glfwSetWindowSize
///
///  @since Added in version 1.0.
///  @glfw3 Added window handle parameter.
///
///  @ingroup window
pub const getWindowSize = f("glfwGetWindowSize", fn(window: *Window, width: *c_int, height: *c_int) callconv(.c) void);

///! @brief Sets the size limits of the specified window.
///
///  This function sets the size limits of the content area of the specified
///  window.  If the window is full screen, the size limits only take effect
///  once it is made windowed.  If the window is not resizable, this function
///  does nothing.
///
///  The size limits are applied immediately to a windowed mode window and may
///  cause it to be resized.
///
///  The maximum dimensions must be greater than or equal to the minimum
///  dimensions and all must be greater than or equal to zero.
///
///  @param[in] window The window to set limits for.
///  @param[in] minwidth The minimum width, in screen coordinates, of the content
///  area, or `GLFW_DONT_CARE`.
///  @param[in] minheight The minimum height, in screen coordinates, of the
///  content area, or `GLFW_DONT_CARE`.
///  @param[in] maxwidth The maximum width, in screen coordinates, of the content
///  area, or `GLFW_DONT_CARE`.
///  @param[in] maxheight The maximum height, in screen coordinates, of the
///  content area, or `GLFW_DONT_CARE`.
///
///  @errors Possible errors include @ref GLFW_NOT_INITIALIZED, @ref
///  GLFW_INVALID_VALUE and @ref GLFW_PLATFORM_ERROR.
///
///  @remark If you set size limits and an aspect ratio that conflict, the
///  results are undefined.
///
///  @remark @wayland The size limits will not be applied until the window is
///  actually resized, either by the user or by the compositor.
///
///  @thread_safety This function must only be called from the main thread.
///
///  @sa @ref window_sizelimits
///  @sa @ref glfwSetWindowAspectRatio
///
///  @since Added in version 3.2.
///
///  @ingroup window
pub const setWindowSizeLimits = f("glfwSetWindowSizeLimits", fn(window: *Window, minwidth: c_int, minheight: c_int, maxwidth: c_int, maxheight: c_int) callconv(.c) void);

///! @brief Sets the aspect ratio of the specified window.
///
///  This function sets the required aspect ratio of the content area of the
///  specified window.  If the window is full screen, the aspect ratio only takes
///  effect once it is made windowed.  If the window is not resizable, this
///  function does nothing.
///
///  The aspect ratio is specified as a numerator and a denominator and both
///  values must be greater than zero.  For example, the common 16:9 aspect ratio
///  is specified as 16 and 9, respectively.
///
///  If the numerator and denominator is set to `GLFW_DONT_CARE` then the aspect
///  ratio limit is disabled.
///
///  The aspect ratio is applied immediately to a windowed mode window and may
///  cause it to be resized.
///
///  @param[in] window The window to set limits for.
///  @param[in] numer The numerator of the desired aspect ratio, or
///  `GLFW_DONT_CARE`.
///  @param[in] denom The denominator of the desired aspect ratio, or
///  `GLFW_DONT_CARE`.
///
///  @errors Possible errors include @ref GLFW_NOT_INITIALIZED, @ref
///  GLFW_INVALID_VALUE and @ref GLFW_PLATFORM_ERROR.
///
///  @remark If you set size limits and an aspect ratio that conflict, the
///  results are undefined.
///
///  @remark @wayland The aspect ratio will not be applied until the window is
///  actually resized, either by the user or by the compositor.
///
///  @thread_safety This function must only be called from the main thread.
///
///  @sa @ref window_sizelimits
///  @sa @ref glfwSetWindowSizeLimits
///
///  @since Added in version 3.2.
///
///  @ingroup window
pub const setWindowAspectRatio = f("glfwSetWindowAspectRatio", fn(window: *Window, numer: c_int, denom: c_int) callconv(.c) void);

///! @brief Sets the size of the content area of the specified window.
///
///  This function sets the size, in screen coordinates, of the content area of
///  the specified window.
///
///  For full screen windows, this function updates the resolution of its desired
///  video mode and switches to the video mode closest to it, without affecting
///  the window's context.  As the context is unaffected, the bit depths of the
///  framebuffer remain unchanged.
///
///  If you wish to update the refresh rate of the desired video mode in addition
///  to its resolution, see @ref glfwSetWindowMonitor.
///
///  The window manager may put limits on what sizes are allowed.  GLFW cannot
///  and should not override these limits.
///
///  @param[in] window The window to resize.
///  @param[in] width The desired width, in screen coordinates, of the window
///  content area.
///  @param[in] height The desired height, in screen coordinates, of the window
///  content area.
///
///  @errors Possible errors include @ref GLFW_NOT_INITIALIZED and @ref
///  GLFW_PLATFORM_ERROR.
///
///  @thread_safety This function must only be called from the main thread.
///
///  @sa @ref window_size
///  @sa @ref glfwGetWindowSize
///  @sa @ref glfwSetWindowMonitor
///
///  @since Added in version 1.0.
///  @glfw3 Added window handle parameter.
///
///  @ingroup window
pub const setWindowSize = f("glfwSetWindowSize", fn(window: *Window, width: c_int, height: c_int) callconv(.c) void);

///! @brief Retrieves the size of the framebuffer of the specified window.
///
///  This function retrieves the size, in pixels, of the framebuffer of the
///  specified window.  If you wish to retrieve the size of the window in screen
///  coordinates, see @ref glfwGetWindowSize.
///
///  Any or all of the size arguments may be `NULL`.  If an error occurs, all
///  non-`NULL` size arguments will be set to zero.
///
///  @param[in] window The window whose framebuffer to query.
///  @param[out] width Where to store the width, in pixels, of the framebuffer,
///  or `NULL`.
///  @param[out] height Where to store the height, in pixels, of the framebuffer,
///  or `NULL`.
///
///  @errors Possible errors include @ref GLFW_NOT_INITIALIZED and @ref
///  GLFW_PLATFORM_ERROR.
///
///  @thread_safety This function must only be called from the main thread.
///
///  @sa @ref window_fbsize
///  @sa @ref glfwSetFramebufferSizeCallback
///
///  @since Added in version 3.0.
///
///  @ingroup window
pub const getFrameBufferSize = f("glfwGetFrameBufferSize", fn(window: *Window, width: *c_int, height: *c_int) callconv(.c) void);

