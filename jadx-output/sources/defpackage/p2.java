package defpackage;

import android.os.SystemClock;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewParent;

/* loaded from: classes.dex */
public abstract class p2 implements View.OnTouchListener, View.OnAttachStateChangeListener {
    public final float e;
    public final int f;
    public final int g;
    public final View h;
    public Runnable i;
    public Runnable j;
    public boolean k;
    public int l;
    public final int[] m = new int[2];

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ViewParent parent = p2.this.h.getParent();
            if (parent != null) {
                parent.requestDisallowInterceptTouchEvent(true);
            }
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            p2 p2Var = p2.this;
            p2Var.a();
            View view = p2Var.h;
            if (view.isEnabled() && !view.isLongClickable() && p2Var.c()) {
                view.getParent().requestDisallowInterceptTouchEvent(true);
                long jUptimeMillis = SystemClock.uptimeMillis();
                MotionEvent motionEventObtain = MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 3, 0.0f, 0.0f, 0);
                view.onTouchEvent(motionEventObtain);
                motionEventObtain.recycle();
                p2Var.k = true;
            }
        }
    }

    public p2(View view) {
        this.h = view;
        view.setLongClickable(true);
        view.addOnAttachStateChangeListener(this);
        this.e = ViewConfiguration.get(view.getContext()).getScaledTouchSlop();
        int tapTimeout = ViewConfiguration.getTapTimeout();
        this.f = tapTimeout;
        this.g = (ViewConfiguration.getLongPressTimeout() + tapTimeout) / 2;
    }

    public final void a() {
        Runnable runnable = this.j;
        if (runnable != null) {
            this.h.removeCallbacks(runnable);
        }
        Runnable runnable2 = this.i;
        if (runnable2 != null) {
            this.h.removeCallbacks(runnable2);
        }
    }

    public abstract s1 b();

    public abstract boolean c();

    public boolean d() {
        s1 s1VarB = b();
        if (s1VarB == null || !s1VarB.a()) {
            return true;
        }
        s1VarB.dismiss();
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0061  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x006e  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x00d4  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0108  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0110  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0113  */
    @Override // android.view.View.OnTouchListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouch(android.view.View r12, android.view.MotionEvent r13) throws java.lang.IllegalAccessException, java.lang.IllegalArgumentException {
        /*
            Method dump skipped, instructions count: 304
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.p2.onTouch(android.view.View, android.view.MotionEvent):boolean");
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewAttachedToWindow(View view) {
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewDetachedFromWindow(View view) {
        this.k = false;
        this.l = -1;
        Runnable runnable = this.i;
        if (runnable != null) {
            this.h.removeCallbacks(runnable);
        }
    }
}
