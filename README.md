# Vulkan Meson Example

This project demonstrates how to set up a simple application using Vulkan, ImGui, and GLFW with the Meson build system. It provides a basic example of setting up a rendering loop and UI using these libraries.

## Prerequisites

Before you begin, ensure you have met the following requirements:

- **Meson Build System**: Version 1.6.0 or higher.
- **Ninja Build Tool**: Ninja is recommanded for its efficiency. 
- **Vulkan SDK**: Install the Vulkan SDK and make sure it's properly configured in your system's environment variables.
- **C++ Compiler**: A compiler that supports C++17 or later (e.g., GCC, Clang or MSVC).

## Installation

1. **Clone the Repository**:
    ```sh
    git clone https://github.com/homorunner/vulkan-meson-example.git
    cd vulkan-meson-example
    ```

2. **Compile the Project**:
    ```sh
    meson setup build
    meson compile -C build
    ```

    GLFW Library and ImGui Library will be automatically downloaded under `subprojects/` at the first build.

3. **Compile the Shaders**:
   ```sh
    cd shaders
    glslc shader.vert -o vert.spv
    glslc shader.frag -o frag.spv
   ```

## Running the Application

1. **Execute the Compiled Application**:
    ```sh
    ./build/vulkan-triangle.exe
    ```

## Project Structure

- `src/`: Contains the source code files.
- `meson.build`: The root Meson build script.
- `shaders/`: Store vulkan shader files here.

## Configuration and Build Options

Customize your build using Meson options. Some examples include:

- `--buildtype=release`: Build with optimizations suitable for production environments.
- `-Dstrip=false`: Avoid stripping symbols in the final build.

Adjust paths and dependencies within the `meson.build` files as necessary to match your system configuration and project requirements.

## Troubleshooting

- Check environment variables for Vulkan (e.g., `$VULKAN_SDK`).
- For detailed Meson build issues, consult the [Meson Documentation](https://mesonbuild.com/).

## Acknowledgements

- [Vulkan](https://www.vulkan.org/)
- [ImGui](https://github.com/ocornut/imgui)
- [GLFW](https://www.glfw.org/)
- [Meson Build System](https://mesonbuild.com/)
