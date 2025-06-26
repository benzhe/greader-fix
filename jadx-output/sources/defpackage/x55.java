package defpackage;

import android.content.Context;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.widget.OverScroller;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.appbar.AppBarLayout;
import java.lang.ref.WeakReference;
import java.util.Objects;

/* loaded from: classes.dex */
public abstract class x55<V extends View> extends z55<V> {
    public Runnable c;
    public OverScroller d;
    public boolean e;
    public int f;
    public int g;
    public int h;
    public VelocityTracker i;

    /* JADX WARN: Field signature parse error: f
    jadx.core.utils.exceptions.JadxRuntimeException: Can't parse type: TV at position 1 ('V'), unexpected: T
    	at jadx.core.dex.nodes.parser.SignatureParser.consumeType(SignatureParser.java:169)
    	at jadx.core.dex.visitors.SignatureProcessor.parseFieldSignature(SignatureProcessor.java:161)
    	at jadx.core.dex.visitors.SignatureProcessor.visit(SignatureProcessor.java:37)
     */
    public class a implements Runnable {
        public final CoordinatorLayout e;
        public final View f;

        public a(CoordinatorLayout coordinatorLayout, V v) {
            this.e = coordinatorLayout;
            this.f = v;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.lang.Runnable
        public void run() throws Resources.NotFoundException {
            OverScroller overScroller;
            if (this.f == null || (overScroller = x55.this.d) == null) {
                return;
            }
            if (overScroller.computeScrollOffset()) {
                x55 x55Var = x55.this;
                x55Var.F(this.e, this.f, x55Var.d.getCurrY());
                this.f.postOnAnimation(this);
                return;
            }
            x55 x55Var2 = x55.this;
            CoordinatorLayout coordinatorLayout = this.e;
            View view = this.f;
            AppBarLayout.BaseBehavior baseBehavior = (AppBarLayout.BaseBehavior) x55Var2;
            Objects.requireNonNull(baseBehavior);
            AppBarLayout appBarLayout = (AppBarLayout) view;
            baseBehavior.N(coordinatorLayout, appBarLayout);
            if (appBarLayout.o) {
                appBarLayout.d(appBarLayout.e(baseBehavior.J(coordinatorLayout)));
            }
        }
    }

    public x55() {
        this.f = -1;
        this.h = -1;
    }

    /* JADX WARN: Removed duplicated region for block: B:39:0x00e0  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00e9  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00f0 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:49:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean A(androidx.coordinatorlayout.widget.CoordinatorLayout r21, V r22, android.view.MotionEvent r23) throws android.content.res.Resources.NotFoundException {
        /*
            Method dump skipped, instructions count: 245
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.x55.A(androidx.coordinatorlayout.widget.CoordinatorLayout, android.view.View, android.view.MotionEvent):boolean");
    }

    public abstract int D();

    public final int E(CoordinatorLayout coordinatorLayout, V v, int i, int i2, int i3) {
        return G(coordinatorLayout, v, D() - i, i2, i3);
    }

    public int F(CoordinatorLayout coordinatorLayout, V v, int i) {
        return G(coordinatorLayout, v, i, Integer.MIN_VALUE, Integer.MAX_VALUE);
    }

    public abstract int G(CoordinatorLayout coordinatorLayout, V v, int i, int i2, int i3);

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public boolean j(CoordinatorLayout coordinatorLayout, V v, MotionEvent motionEvent) {
        View view;
        int iFindPointerIndex;
        if (this.h < 0) {
            this.h = ViewConfiguration.get(coordinatorLayout.getContext()).getScaledTouchSlop();
        }
        if (motionEvent.getActionMasked() == 2 && this.e) {
            int i = this.f;
            if (i == -1 || (iFindPointerIndex = motionEvent.findPointerIndex(i)) == -1) {
                return false;
            }
            int y = (int) motionEvent.getY(iFindPointerIndex);
            if (Math.abs(y - this.g) > this.h) {
                this.g = y;
                return true;
            }
        }
        if (motionEvent.getActionMasked() == 0) {
            this.f = -1;
            int x = (int) motionEvent.getX();
            int y2 = (int) motionEvent.getY();
            WeakReference<View> weakReference = ((AppBarLayout.BaseBehavior) this).p;
            boolean z = (weakReference == null || ((view = weakReference.get()) != null && view.isShown() && !view.canScrollVertically(-1))) && coordinatorLayout.u(v, x, y2);
            this.e = z;
            if (z) {
                this.g = y2;
                this.f = motionEvent.getPointerId(0);
                if (this.i == null) {
                    this.i = VelocityTracker.obtain();
                }
                OverScroller overScroller = this.d;
                if (overScroller != null && !overScroller.isFinished()) {
                    this.d.abortAnimation();
                    return true;
                }
            }
        }
        VelocityTracker velocityTracker = this.i;
        if (velocityTracker != null) {
            velocityTracker.addMovement(motionEvent);
        }
        return false;
    }

    public x55(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f = -1;
        this.h = -1;
    }
}
