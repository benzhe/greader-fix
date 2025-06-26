package defpackage;

import android.view.View;
import android.view.ViewTreeObserver;
import com.google.android.gms.ads.internal.zzr;
import java.lang.ref.WeakReference;

/* loaded from: classes.dex */
public final class et0 extends gt0 implements ViewTreeObserver.OnGlobalLayoutListener {
    public final WeakReference<ViewTreeObserver.OnGlobalLayoutListener> f;

    public et0(View view, ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener) {
        super(view);
        this.f = new WeakReference<>(onGlobalLayoutListener);
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener = this.f.get();
        if (onGlobalLayoutListener != null) {
            onGlobalLayoutListener.onGlobalLayout();
            return;
        }
        ViewTreeObserver viewTreeObserverA = a();
        if (viewTreeObserverA != null) {
            zzr.zzkx();
            viewTreeObserverA.removeOnGlobalLayoutListener(this);
        }
    }
}
