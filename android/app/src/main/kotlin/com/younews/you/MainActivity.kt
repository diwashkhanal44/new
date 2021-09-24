package com.younews.app

import android.os.Bundle
import android.os.PersistableBundle
import com.microsoft.appcenter.AppCenter
import com.microsoft.appcenter.analytics.Analytics
import com.microsoft.appcenter.crashes.Crashes
import io.flutter.embedding.android.FlutterActivity


class MainActivity: FlutterActivity() {

    override fun onCreate(savedInstanceState: Bundle?, persistentState: PersistableBundle?) {
        super.onCreate(savedInstanceState, persistentState)
        AppCenter.start(
            application, "39940487-ceff-45ae-9579-2a3c615d980c",
            Analytics::class.java, Crashes::class.java
        )
    }
}
