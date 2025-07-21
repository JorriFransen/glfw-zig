# Very simple INCOMPLETE glfw wrapper for zig.


## How to use
### build.zig.zon
```zig
.dependencies = {
    .glfw = .{
        .url = "https://github.com/JorriFransen/glfw-zig/archive/refs/heads/main.tar.gz",
        .hash = ...
    },
},
```
### build.zig
```zig
const glfw_dep = b.dependency("glfw", .{
    .target = target,
    .optimize = optimize,
    // Other flags here
});

const glfw_lib = glfw_dep.artifact("glfw");
const glfw_module = glfw_dep.module("glfw");
```
glfwGetInstanceProcAddress and glfwCreateWindowSurface need vulkan types.
When using vulkan, this module must contain the vulkan types used in the application.
Otherwise a stub can be used.
```zig
glfw_module.addImport("vulkan", vulkan_module);

```


## GLFW source

The default is to pull the glfw source as a dependency.


You can specify a custom source path:
```
zig build -Dglfw=<path-to-glfw-source>
```

Or from build.zig:
```zig
const glfw = b.dependency("glfw", .{
  .target = target,
  .optimize = optimize,
  .glfw = "<path-to-glfw-source>",
});
```
## Other options
There are some other boolean options you can set:
| Flag               | Description                           |
|--------------------|---------------------------------------|
| -Dglfw=[lazy_path] | Set the path to the glfw source       |
| -Dshared=[bool]    | Build as shared library               |
| -Dx11=[bool]       | Build with X11. (Linux only)          |
| -Dwayland=[bool]   | Build with Wayland. (Linux only)      |
| -Dopengl=[bool]    | Build with opengl. (MacOs deprecated) |
| -Dgles=[bool]      | Build with GLES. (MacOs deprecated)   |
| -Dmetal=[bool]     | Build with metal. (MacOs only)        |
