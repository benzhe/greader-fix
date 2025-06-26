package com.google.android.gms.ads.internal.util;

import android.app.Activity;
import android.graphics.Rect;
import android.text.TextUtils;
import android.view.DisplayCutout;
import android.view.View;
import android.view.Window;
import android.view.WindowInsets;
import android.view.WindowManager;
import com.google.android.gms.ads.internal.util.zzac;
import com.google.android.gms.ads.internal.util.zzf;
import com.google.android.gms.ads.internal.zzr;
import defpackage.os3;
import defpackage.y40;
import java.util.Locale;

/* loaded from: classes.dex */
public final class zzac extends zzz {
    public static void a(boolean z, Activity activity) {
        Window window = activity.getWindow();
        WindowManager.LayoutParams attributes = window.getAttributes();
        int i = attributes.layoutInDisplayCutoutMode;
        int i2 = z ? 1 : 2;
        if (i2 != i) {
            attributes.layoutInDisplayCutoutMode = i2;
            window.setAttributes(attributes);
        }
    }

    @Override // com.google.android.gms.ads.internal.util.zzr
    public final void zzi(final Activity activity) {
        if (((Boolean) os3.j.f.a(y40.K0)).booleanValue() && com.google.android.gms.ads.internal.zzr.zzkz().f().zzzm() == null && !activity.isInMultiWindowMode()) {
            a(true, activity);
            activity.getWindow().getDecorView().setOnApplyWindowInsetsListener(new View.OnApplyWindowInsetsListener(this, activity) { // from class: zv
                public final Activity a;

                {
                    this.a = activity;
                }

                @Override // android.view.View.OnApplyWindowInsetsListener
                public final WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
                    Activity activity2 = this.a;
                    if (zzr.zzkz().f().zzzm() == null) {
                        DisplayCutout displayCutout = windowInsets.getDisplayCutout();
                        String strConcat = "";
                        if (displayCutout != null) {
                            zzf zzfVarF = zzr.zzkz().f();
                            for (Rect rect : displayCutout.getBoundingRects()) {
                                String str = String.format(Locale.US, "%d,%d,%d,%d", Integer.valueOf(rect.left), Integer.valueOf(rect.top), Integer.valueOf(rect.right), Integer.valueOf(rect.bottom));
                                if (!TextUtils.isEmpty(strConcat)) {
                                    strConcat = String.valueOf(strConcat).concat("|");
                                }
                                String strValueOf = String.valueOf(strConcat);
                                String strValueOf2 = String.valueOf(str);
                                strConcat = strValueOf2.length() != 0 ? strValueOf.concat(strValueOf2) : new String(strValueOf);
                            }
                            zzfVarF.zzeh(strConcat);
                        } else {
                            zzr.zzkz().f().zzeh("");
                        }
                    }
                    zzac.a(false, activity2);
                    return view.onApplyWindowInsets(windowInsets);
                }
            });
        }
    }
}
