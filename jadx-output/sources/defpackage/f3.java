package defpackage;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.Resources;
import android.graphics.Rect;
import android.os.Build;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.view.accessibility.AccessibilityManager;
import androidx.appcompat.R$dimen;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public class f3 implements View.OnLongClickListener, View.OnHoverListener, View.OnAttachStateChangeListener {
    public static f3 n;
    public static f3 o;
    public final View e;
    public final CharSequence f;
    public final int g;
    public final Runnable h = new a();
    public final Runnable i = new b();
    public int j;
    public int k;
    public g3 l;
    public boolean m;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() throws Resources.NotFoundException {
            f3.this.d(false);
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            f3.this.b();
        }
    }

    public f3(View view, CharSequence charSequence) {
        this.e = view;
        this.f = charSequence;
        ViewConfiguration viewConfiguration = ViewConfiguration.get(view.getContext());
        Method method = la.a;
        this.g = Build.VERSION.SDK_INT >= 28 ? viewConfiguration.getScaledHoverSlop() : viewConfiguration.getScaledTouchSlop() / 2;
        a();
        view.setOnLongClickListener(this);
        view.setOnHoverListener(this);
    }

    public static void c(f3 f3Var) {
        f3 f3Var2 = n;
        if (f3Var2 != null) {
            f3Var2.e.removeCallbacks(f3Var2.h);
        }
        n = f3Var;
        if (f3Var != null) {
            f3Var.e.postDelayed(f3Var.h, ViewConfiguration.getLongPressTimeout());
        }
    }

    public final void a() {
        this.j = Integer.MAX_VALUE;
        this.k = Integer.MAX_VALUE;
    }

    public void b() {
        if (o == this) {
            o = null;
            g3 g3Var = this.l;
            if (g3Var != null) {
                g3Var.a();
                this.l = null;
                a();
                this.e.removeOnAttachStateChangeListener(this);
            } else {
                Log.e("TooltipCompatHandler", "sActiveHandler.mPopup == null");
            }
        }
        if (n == this) {
            c(null);
        }
        this.e.removeCallbacks(this.i);
    }

    public void d(boolean z) throws Resources.NotFoundException {
        int height;
        int i;
        long j;
        int longPressTimeout;
        long j2;
        View view = this.e;
        AtomicInteger atomicInteger = ha.a;
        if (view.isAttachedToWindow()) {
            c(null);
            f3 f3Var = o;
            if (f3Var != null) {
                f3Var.b();
            }
            o = this;
            this.m = z;
            g3 g3Var = new g3(this.e.getContext());
            this.l = g3Var;
            View view2 = this.e;
            int width = this.j;
            int i2 = this.k;
            boolean z2 = this.m;
            CharSequence charSequence = this.f;
            if (g3Var.b.getParent() != null) {
                g3Var.a();
            }
            g3Var.c.setText(charSequence);
            WindowManager.LayoutParams layoutParams = g3Var.d;
            layoutParams.token = view2.getApplicationWindowToken();
            int dimensionPixelOffset = g3Var.a.getResources().getDimensionPixelOffset(R$dimen.tooltip_precise_anchor_threshold);
            if (view2.getWidth() < dimensionPixelOffset) {
                width = view2.getWidth() / 2;
            }
            if (view2.getHeight() >= dimensionPixelOffset) {
                int dimensionPixelOffset2 = g3Var.a.getResources().getDimensionPixelOffset(R$dimen.tooltip_precise_anchor_extra_offset);
                height = i2 + dimensionPixelOffset2;
                i = i2 - dimensionPixelOffset2;
            } else {
                height = view2.getHeight();
                i = 0;
            }
            layoutParams.gravity = 49;
            int dimensionPixelOffset3 = g3Var.a.getResources().getDimensionPixelOffset(z2 ? R$dimen.tooltip_y_offset_touch : R$dimen.tooltip_y_offset_non_touch);
            View rootView = view2.getRootView();
            ViewGroup.LayoutParams layoutParams2 = rootView.getLayoutParams();
            if (!(layoutParams2 instanceof WindowManager.LayoutParams) || ((WindowManager.LayoutParams) layoutParams2).type != 2) {
                Context context = view2.getContext();
                while (true) {
                    if (!(context instanceof ContextWrapper)) {
                        break;
                    }
                    if (context instanceof Activity) {
                        rootView = ((Activity) context).getWindow().getDecorView();
                        break;
                    }
                    context = ((ContextWrapper) context).getBaseContext();
                }
            }
            if (rootView == null) {
                Log.e("TooltipPopup", "Cannot find app view");
            } else {
                rootView.getWindowVisibleDisplayFrame(g3Var.e);
                Rect rect = g3Var.e;
                if (rect.left < 0 && rect.top < 0) {
                    Resources resources = g3Var.a.getResources();
                    int identifier = resources.getIdentifier("status_bar_height", "dimen", "android");
                    int dimensionPixelSize = identifier != 0 ? resources.getDimensionPixelSize(identifier) : 0;
                    DisplayMetrics displayMetrics = resources.getDisplayMetrics();
                    g3Var.e.set(0, dimensionPixelSize, displayMetrics.widthPixels, displayMetrics.heightPixels);
                }
                rootView.getLocationOnScreen(g3Var.g);
                view2.getLocationOnScreen(g3Var.f);
                int[] iArr = g3Var.f;
                int i3 = iArr[0];
                int[] iArr2 = g3Var.g;
                iArr[0] = i3 - iArr2[0];
                iArr[1] = iArr[1] - iArr2[1];
                layoutParams.x = (iArr[0] + width) - (rootView.getWidth() / 2);
                int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
                g3Var.b.measure(iMakeMeasureSpec, iMakeMeasureSpec);
                int measuredHeight = g3Var.b.getMeasuredHeight();
                int[] iArr3 = g3Var.f;
                int i4 = ((iArr3[1] + i) - dimensionPixelOffset3) - measuredHeight;
                int i5 = iArr3[1] + height + dimensionPixelOffset3;
                if (z2) {
                    if (i4 >= 0) {
                        layoutParams.y = i4;
                    } else {
                        layoutParams.y = i5;
                    }
                } else if (measuredHeight + i5 <= g3Var.e.height()) {
                    layoutParams.y = i5;
                } else {
                    layoutParams.y = i4;
                }
            }
            ((WindowManager) g3Var.a.getSystemService("window")).addView(g3Var.b, g3Var.d);
            this.e.addOnAttachStateChangeListener(this);
            if (this.m) {
                j2 = 2500;
            } else {
                if ((this.e.getWindowSystemUiVisibility() & 1) == 1) {
                    j = 3000;
                    longPressTimeout = ViewConfiguration.getLongPressTimeout();
                } else {
                    j = 15000;
                    longPressTimeout = ViewConfiguration.getLongPressTimeout();
                }
                j2 = j - longPressTimeout;
            }
            this.e.removeCallbacks(this.i);
            this.e.postDelayed(this.i, j2);
        }
    }

    @Override // android.view.View.OnHoverListener
    public boolean onHover(View view, MotionEvent motionEvent) {
        boolean z;
        if (this.l != null && this.m) {
            return false;
        }
        AccessibilityManager accessibilityManager = (AccessibilityManager) this.e.getContext().getSystemService("accessibility");
        if (accessibilityManager.isEnabled() && accessibilityManager.isTouchExplorationEnabled()) {
            return false;
        }
        int action = motionEvent.getAction();
        if (action != 7) {
            if (action == 10) {
                a();
                b();
            }
        } else if (this.e.isEnabled() && this.l == null) {
            int x = (int) motionEvent.getX();
            int y = (int) motionEvent.getY();
            if (Math.abs(x - this.j) > this.g || Math.abs(y - this.k) > this.g) {
                this.j = x;
                this.k = y;
                z = true;
            } else {
                z = false;
            }
            if (z) {
                c(this);
            }
        }
        return false;
    }

    @Override // android.view.View.OnLongClickListener
    public boolean onLongClick(View view) throws Resources.NotFoundException {
        this.j = view.getWidth() / 2;
        this.k = view.getHeight() / 2;
        d(true);
        return true;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewAttachedToWindow(View view) {
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewDetachedFromWindow(View view) {
        b();
    }
}
