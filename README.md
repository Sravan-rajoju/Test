https://adoptium.net/en-GB/temurin/releases/?version=17# Test


Please set the JAVA_HOME variable in your environment to match the
location of your Java installation.

D:\react\Android\SimpleChat\android>


cd android
gradlew clean
gradlew assembleDebug --stacktrace



buildscript {
    ext {
        buildToolsVersion = "33.0.0"
        minSdkVersion = 21
        compileSdkVersion = 33
        targetSdkVersion = 33
        kotlinVersion = "1.8.0"
    }
    repositories {
        google()
        mavenCentral()
    }
    dependencies {
        classpath("com.android.tools.build:gradle:7.4.2")
        classpath("org.jetbrains.kotlin:kotlin-gradle-plugin:$kotlinVersion")
    }
}

allprojects {
    repositories {
        google()
        mavenCentral()
    }
}


