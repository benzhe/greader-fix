package defpackage;

import android.R;
import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.util.DisplayMetrics;
import android.view.Window;
import android.view.WindowManager;
import java.lang.reflect.Method;

/* loaded from: classes.dex */
public class vo {
    public final Dialog a;
    public boolean b;
    public int c;
    public boolean d;
    public String e;
    public float f;

    public vo(Dialog dialog, Context context) {
        this.a = dialog;
        WindowManager windowManager = (WindowManager) context.getSystemService("window");
        this.d = context.getResources().getConfiguration().orientation == 1;
        try {
            Method declaredMethod = Class.forName("android.os.SystemProperties").getDeclaredMethod("get", String.class);
            declaredMethod.setAccessible(true);
            this.e = (String) declaredMethod.invoke(null, "qemu.hw.mainkeys");
        } catch (Throwable unused) {
            this.e = null;
        }
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(new int[]{R.attr.windowTranslucentNavigation});
        try {
            this.b = typedArrayObtainStyledAttributes.getBoolean(0, false);
            typedArrayObtainStyledAttributes.recycle();
            if ((((Activity) context).getWindow().getAttributes().flags & 134217728) != 0) {
                this.b = true;
            }
            DisplayMetrics displayMetrics = new DisplayMetrics();
            windowManager.getDefaultDisplay().getRealMetrics(displayMetrics);
            float f = displayMetrics.widthPixels;
            float f2 = displayMetrics.density;
            this.f = Math.min(f / f2, displayMetrics.heightPixels / f2);
            if (this.b) {
                Window window = this.a.getWindow();
                WindowManager.LayoutParams attributes = window.getAttributes();
                attributes.flags |= 67108864;
                window.setAttributes(attributes);
                window.setFlags(134217728, 134217728);
            }
            Resources resources = context.getResources();
            int identifier = resources.getIdentifier("status_bar_height", "dimen", "android");
            this.c = identifier > 0 ? resources.getDimensionPixelSize(identifier) : 0;
        } catch (Throwable th) {
            typedArrayObtainStyledAttributes.recycle();
            throw th;
        }
    }
}
