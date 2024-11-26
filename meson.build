project (
    'vulkan-triangle',
    'cpp',
    version : '0.1',
    default_options : ['cpp_std=c++20'],
)

deps = [
    dependency('vulkan'),
    dependency('glfw3', static: true),
    dependency('imgui', static: true),
]

executable(
    'vulkan-triangle',
    'src/main.cpp',
    dependencies : deps,
)
