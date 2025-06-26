package defpackage;

import android.view.View;
import android.view.ViewTreeObserver;
import java.util.Objects;

/* loaded from: classes.dex */
public final class fa implements ViewTreeObserver.OnPreDrawListener, View.OnAttachStateChangeListener {
    public final View e;
    public ViewTreeObserver f;
    public final Runnable g;

    public fa(View view, Runnable runnable) {
        this.e = view;
        this.f = view.getViewTreeObserver();
        this.g = runnable;
    }

    public static fa a(View view, Runnable runnable) {
        Objects.requireNonNull(view, "view == null");
        fa faVar = new fa(view, runnable);
        view.getViewTreeObserver().addOnPreDrawListener(faVar);
        view.addOnAttachStateChangeListener(faVar);
        return faVar;
    }

    public void b() {
        if (this.f.isAlive()) {
            this.f.removeOnPreDrawListener(this);
        } else {
            this.e.getViewTreeObserver().removeOnPreDrawListener(this);
        }
        this.e.removeOnAttachStateChangeListener(this);
    }

    @Override // android.view.ViewTreeObserver.OnPreDrawListener
    public boolean onPreDraw() {
        b();
        this.g.run();
        return true;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewAttachedToWindow(View view) {
        this.f = view.getViewTreeObserver();
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewDetachedFromWindow(View view) {
        b();
    }
}
