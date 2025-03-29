# AndroidCMakeBuilder

**AndroidCMakeBuilder** is a set of scripts for configuring and building Android native projects using CMake. This simplifies the process of setting up an Android development environment and streamlines the build process.

## Prerequisites

Before using these scripts, ensure that you have the following prerequisites installed and configured:

- [Android NDK](https://developer.android.com/ndk)
- [Ninja Build System](https://ninja-build.org/)

Make sure that the necessary environment variables, such as `ANDROID_HOME`, are set, and the Ninja build system is in your system's `PATH`.
Also make sure that the scripts folder is included in the `PATH`.

## Usage

The repository consists of three main scripts:

1. **android-cmake-cfg.bat:**
   - Configures the Android project using CMake.
   - Parameters:
     - BuildType: Debug or Release
     - ABI: armeabi-v7a, arm64-v8a, x86, x86_64
     - AndroidPlatform: Android API level
   - Example: `android-cmake-cfg.bat Release armeabi-v7a android-21`

2. **android-cmake-build.bat:**
   - Builds the Android project configured by CMake.
   - Parameters:
     - BuildType: Debug or Release
     - ABI: armeabi-v7a, arm64-v8a, x86, x86_64
   - Example: `android-cmake-build.bat Release armeabi-v7a`

3. **android-cmake-cfg-build.bat:**
   - Wraps the configuration and build process.
   - Parameters:
     - BuildType: Debug or Release
     - ABI: armeabi-v7a, arm64-v8a, x86, x86_64
     - AndroidPlatform: Android API level
   - Example: `android-cmake-cfg-build.bat Release armeabi-v7a android-21`

Execute these scripts from the command line in the root directory of your CMake Native Android project.

## Important Notes

- Adjust the scripts if needed to match your specific project requirements.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Acknowledgments

- These scripts were inspired by the need for a streamlined CMake-based Android project setup.

Feel free to contribute or report issues to enhance the functionality of AndroidCMakeBuilder.
