# Android CMake Build Tool

This set of scripts provides a straightforward build system for Android projects using CMake and the Android NDK. The tool is designed for ease of use and requires minimal configuration.

## Prerequisites

Before using this tool, ensure you have the following prerequisites:

1. **Android NDK:**
   - Download and install the Android NDK.
   - Set the `ANDROID_HOME` environment variable to the NDK path.

2. **System PATH:**
   - Add the folder containing these scripts to your system's PATH. This ensures that the commands can be executed from any location in the command prompt.

## CMake Configuration

For CMake to work with the Android NDK, a configuration file (`ndk_build_cfg.cmake`) is required. Users have two options to set up this configuration:

### 1. Manual Configuration

Copy the provided `ndk_build_cfg.cmake` file into your project and include it in your CMakeLists.txt file:

```cmake
# CMakeLists.txt

# Include the ndk_build_cfg.cmake configuration file
include(path/to/ndk_build_cfg.cmake)

# Rest of your CMake configuration...
```

### 2. Environment Variable Installer

Run the following command to set the ANDROID_CMAKE_BUILDER environment variable:

```bash
android-cmake-builder-install.bat
```

This allows you to use the configured ndk_build_cfg.cmake directly in your CMake files:

```cmake
# CMakeLists.txt

# Include the ndk_build_cfg.cmake configuration file using the environment variable
include($ENV{ANDROID_CMAKE_BUILDER}/ndk_build_cfg.cmake)

# Rest of your CMake configuration...
```

## Usage

Navigate to your Android project directory in the command prompt and use the following commands:
### 1. Configure and Build

```bash
android-cmake-cfg-build.bat [BuildType] [ABI] [AndroidPlatform, optional]
```

    [BuildType]: Specify the build type (e.g., Debug or Release).
    [ABI]: Specify the ABI (e.g., armeabi-v7a, arm64-v8a, x86, x86_64).
    [AndroidPlatform, optional]: Specify the Android platform version (e.g., android-21).

### 2. Install Build Tool

```bash
android-cmake-builder-install.bat
```

This script sets the ANDROID_CMAKE_BUILDER environment variable based on the tool's directory. Ensure that the script is executed with the necessary permissions.
Customization

    Environment Variables:
        Ensure that the required environment variables like ANDROID_HOME are set before using these scripts.

    Script Customization:
        Users can customize the scripts to fit specific project structures or requirements.

## Example

```bash
cd path/to/your/android/project
android-cmake-cfg-build.bat Debug armeabi-v7a android-21
```

## License

This tool is licensed under the MIT License.

## Acknowledgments

Special thanks to the community for contributions and feedback.
