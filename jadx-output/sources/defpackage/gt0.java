package defpackage;

import android.view.View;
import android.view.ViewTreeObserver;
import java.lang.ref.WeakReference;

/* loaded from: classes.dex */
public abstract class gt0 {
    public final WeakReference<View> e;

    public gt0(View view) {
        this.e = new WeakReference<>(view);
    }

    public final ViewTreeObserver a() {
        ViewTreeObserver viewTreeObserver;
        View view = this.e.get();
        if (view == null || (viewTreeObserver = view.getViewTreeObserver()) == null || !viewTreeObserver.isAlive()) {
            return null;
        }
        return viewTreeObserver;
    }
}
