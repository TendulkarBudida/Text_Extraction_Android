# Keep Google Play core library classes
-keep class com.google.android.play.core.** { *; }

# Keep Google ML Kit text recognition classes
-keep class com.google.mlkit.vision.text.** { *; }
-keep class com.google.mlkit.vision.common.** { *; }

# Keep Chinese, Devanagari, Japanese, Korean recognizer options
-keep class com.google.mlkit.vision.text.chinese.** { *; }
-keep class com.google.mlkit.vision.text.devanagari.** { *; }
-keep class com.google.mlkit.vision.text.japanese.** { *; }
-keep class com.google.mlkit.vision.text.korean.** { *; }

# Keep classes for task-related listeners (used in SplitInstallManager)
-keep class com.google.android.play.core.tasks.** { *; }
-keep class com.google.android.play.core.splitinstall.** { *; }


#-keep class com.google.mlkit.vision.** { *; }
#-keep class com.google.mlkit.common.** { *; }
#
## Keep MLKit classes
#-keep class com.google.mlkit.vision.** { *; }
#-keep class com.google.mlkit.common.** { *; }
#-keep class com.google.mlkit.vision.text.chinese.** { *; }
#-keep class com.google.mlkit.vision.text.devanagari.** { *; }
#-keep class com.google.mlkit.vision.text.japanese.** { *; }
#-keep class com.google.mlkit.vision.text.korean.** { *; }
#-keep class com.google.android.gms.vision.** { *; }
#
## Keep Flutter wrapper classes
#-keep class io.flutter.app.** { *; }
#-keep class io.flutter.plugin.** { *; }
#-keep class io.flutter.util.** { *; }
#-keep class io.flutter.view.** { *; }
#-keep class io.flutter.** { *; }
#-keep class io.flutter.plugins.** { *; }
#
## Keep Firebase classes
#-keep class com.google.firebase.** { *; }