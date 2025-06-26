package defpackage;

import android.view.View;
import android.view.ViewTreeObserver;
import java.lang.ref.WeakReference;

/* loaded from: classes.dex */
public final class ht0 extends gt0 implements ViewTreeObserver.OnScrollChangedListener {
    public final WeakReference<ViewTreeObserver.OnScrollChangedListener> f;

    public ht0(View view, ViewTreeObserver.OnScrollChangedListener onScrollChangedListener) {
        super(view);
        this.f = new WeakReference<>(onScrollChangedListener);
    }

    @Override // android.view.ViewTreeObserver.OnScrollChangedListener
    public final void onScrollChanged() {
        ViewTreeObserver.OnScrollChangedListener onScrollChangedListener = this.f.get();
        if (onScrollChangedListener != null) {
            onScrollChangedListener.onScrollChanged();
            return;
        }
        ViewTreeObserver viewTreeObserverA = a();
        if (viewTreeObserverA != null) {
            viewTreeObserverA.removeOnScrollChangedListener(this);
        }
    }
}
