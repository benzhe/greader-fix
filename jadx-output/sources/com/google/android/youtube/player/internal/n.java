package com.google.android.youtube.player.internal;

import android.R;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import defpackage.c50;
import defpackage.id5;
import defpackage.jo;
import java.util.HashMap;
import java.util.Locale;

/* loaded from: classes.dex */
public final class n extends FrameLayout {
    public final ProgressBar e;
    public final TextView f;

    /* JADX WARN: Illegal instructions before constructor call */
    public n(Context context) throws PackageManager.NameNotFoundException {
        Context contextCreatePackageContext;
        String[] strArr = id5.a;
        try {
            contextCreatePackageContext = context.createPackageContext(id5.a(context), 3);
        } catch (PackageManager.NameNotFoundException unused) {
            contextCreatePackageContext = null;
        }
        int identifier = contextCreatePackageContext != null ? contextCreatePackageContext.getResources().getIdentifier("clientTheme", "style", id5.a(context)) : 0;
        super(context, null, identifier == 0 ? R.style.Theme.DeviceDefault : identifier);
        Resources resources = context.getResources();
        Locale locale = (resources == null || resources.getConfiguration() == null || resources.getConfiguration().locale == null) ? Locale.getDefault() : resources.getConfiguration().locale;
        HashMap mapE = jo.E("error_initializing_player", "An error occurred while initializing the YouTube player.", "get_youtube_app_title", "Get YouTube App");
        mapE.put("get_youtube_app_text", "This app won't run without the YouTube App, which is missing from your device");
        mapE.put("get_youtube_app_action", "Get YouTube App");
        mapE.put("enable_youtube_app_title", "Enable YouTube App");
        mapE.put("enable_youtube_app_text", "This app won't work unless you enable the YouTube App.");
        mapE.put("enable_youtube_app_action", "Enable YouTube App");
        mapE.put("update_youtube_app_title", "Update YouTube App");
        mapE.put("update_youtube_app_text", "This app won't work unless you update the YouTube App.");
        mapE.put("update_youtube_app_action", "Update YouTube App");
        c50.c(mapE, locale.getLanguage());
        String strValueOf = String.valueOf(locale.getLanguage());
        String strValueOf2 = String.valueOf(locale.getCountry());
        StringBuilder sb = new StringBuilder(strValueOf2.length() + strValueOf.length() + 1);
        sb.append(strValueOf);
        sb.append("_");
        sb.append(strValueOf2);
        c50.c(mapE, sb.toString());
        String str = (String) mapE.get("error_initializing_player");
        setBackgroundColor(-16777216);
        ProgressBar progressBar = new ProgressBar(context);
        this.e = progressBar;
        progressBar.setVisibility(8);
        addView(progressBar, new FrameLayout.LayoutParams(-2, -2, 17));
        int i = (int) ((context.getResources().getDisplayMetrics().density * 10.0f) + 0.5f);
        TextView textView = new TextView(context);
        this.f = textView;
        textView.setTextAppearance(context, R.style.TextAppearance.Small);
        textView.setTextColor(-1);
        textView.setVisibility(8);
        textView.setPadding(i, i, i, i);
        textView.setGravity(17);
        textView.setText(str);
        addView(textView, new FrameLayout.LayoutParams(-2, -2, 17));
    }

    @Override // android.widget.FrameLayout, android.view.View
    public final void onMeasure(int i, int i2) {
        float f;
        int mode = View.MeasureSpec.getMode(i);
        int mode2 = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i);
        int size2 = View.MeasureSpec.getSize(i2);
        if (mode != 1073741824 || mode2 != 1073741824) {
            if (mode == 1073741824 || (mode == Integer.MIN_VALUE && mode2 == 0)) {
                size2 = (int) (size / 1.777f);
            } else {
                if (mode2 == 1073741824 || (mode2 == Integer.MIN_VALUE && mode == 0)) {
                    f = size2;
                } else if (mode == Integer.MIN_VALUE && mode2 == Integer.MIN_VALUE) {
                    f = size2;
                    float f2 = size / 1.777f;
                    if (f >= f2) {
                        size2 = (int) f2;
                    }
                } else {
                    size = 0;
                    size2 = 0;
                }
                size = (int) (f * 1.777f);
            }
        }
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(FrameLayout.resolveSize(size, i), 1073741824), View.MeasureSpec.makeMeasureSpec(FrameLayout.resolveSize(size2, i2), 1073741824));
    }
}
