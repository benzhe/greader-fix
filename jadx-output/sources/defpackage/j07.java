package defpackage;

import android.graphics.Bitmap;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.Drawable;
import android.os.Looper;
import android.view.View;
import android.widget.ImageView;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;

/* loaded from: classes2.dex */
public abstract class j07 implements g07 {
    public Reference<View> a;
    public boolean b;

    public j07(View view) {
        if (view == null) {
            throw new IllegalArgumentException("view must not be null");
        }
        this.a = new WeakReference(view);
        this.b = true;
    }

    @Override // defpackage.g07
    public boolean a(Drawable drawable) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            View view = this.a.get();
            if (view != null) {
                ((ImageView) view).setImageDrawable(drawable);
                if (!(drawable instanceof AnimationDrawable)) {
                    return true;
                }
                ((AnimationDrawable) drawable).start();
                return true;
            }
        } else {
            p07.e("Can't set a drawable into view. You should call ImageLoader on UI thread for it.", new Object[0]);
        }
        return false;
    }

    @Override // defpackage.g07
    public boolean c() {
        return this.a.get() == null;
    }

    @Override // defpackage.g07
    public boolean e(Bitmap bitmap) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            View view = this.a.get();
            if (view != null) {
                ((ImageView) view).setImageBitmap(bitmap);
                return true;
            }
        } else {
            p07.e("Can't set a bitmap into view. You should call ImageLoader on UI thread for it.", new Object[0]);
        }
        return false;
    }

    @Override // defpackage.g07
    public int n() {
        View view = this.a.get();
        return view == null ? super.hashCode() : view.hashCode();
    }
}
