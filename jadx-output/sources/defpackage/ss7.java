package defpackage;

import android.app.ActionBar;
import android.app.Activity;
import android.graphics.drawable.Drawable;
import android.widget.ImageView;
import defpackage.ts7;

/* loaded from: classes2.dex */
public final class ss7 {
    public Activity a;
    public Object b;
    public boolean c;

    public ss7(Activity activity) throws NoSuchMethodException, SecurityException {
        this.a = activity;
        try {
            activity.getClass().getMethod("getSupportActionBar", new Class[0]);
            this.c = true;
        } catch (NoSuchMethodException unused) {
        }
        this.b = new ts7.a(this.a);
    }

    public void a(Drawable drawable, int i) {
        boolean z = this.c;
        Object obj = this.b;
        Activity activity = this.a;
        ts7.a aVar = (ts7.a) obj;
        if (aVar.a != null) {
            try {
                ActionBar actionBar = activity.getActionBar();
                aVar.a.invoke(actionBar, drawable);
                aVar.b.invoke(actionBar, Integer.valueOf(i));
                return;
            } catch (Throwable unused) {
                return;
            }
        }
        ImageView imageView = aVar.c;
        if (imageView != null) {
            imageView.setImageDrawable(drawable);
        }
    }
}
