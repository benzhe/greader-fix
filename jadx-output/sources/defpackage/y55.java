package defpackage;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.appbar.AppBarLayout;
import defpackage.d0;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public abstract class y55 extends z55<View> {
    public final Rect c;
    public final Rect d;
    public int e;
    public int f;

    public y55() {
        this.c = new Rect();
        this.d = new Rect();
        this.e = 0;
    }

    @Override // defpackage.z55
    public void C(CoordinatorLayout coordinatorLayout, View view, int i) {
        AppBarLayout appBarLayoutE = ((AppBarLayout.ScrollingViewBehavior) this).E(coordinatorLayout.o(view));
        if (appBarLayoutE == null) {
            coordinatorLayout.w(view, i);
            this.e = 0;
            return;
        }
        CoordinatorLayout.f fVar = (CoordinatorLayout.f) view.getLayoutParams();
        Rect rect = this.c;
        rect.set(coordinatorLayout.getPaddingLeft() + ((ViewGroup.MarginLayoutParams) fVar).leftMargin, appBarLayoutE.getBottom() + ((ViewGroup.MarginLayoutParams) fVar).topMargin, (coordinatorLayout.getWidth() - coordinatorLayout.getPaddingRight()) - ((ViewGroup.MarginLayoutParams) fVar).rightMargin, ((appBarLayoutE.getBottom() + coordinatorLayout.getHeight()) - coordinatorLayout.getPaddingBottom()) - ((ViewGroup.MarginLayoutParams) fVar).bottomMargin);
        qa lastWindowInsets = coordinatorLayout.getLastWindowInsets();
        if (lastWindowInsets != null) {
            AtomicInteger atomicInteger = ha.a;
            if (coordinatorLayout.getFitsSystemWindows() && !view.getFitsSystemWindows()) {
                rect.left = lastWindowInsets.c() + rect.left;
                rect.right -= lastWindowInsets.d();
            }
        }
        Rect rect2 = this.d;
        int i2 = fVar.c;
        Gravity.apply(i2 == 0 ? 8388659 : i2, view.getMeasuredWidth(), view.getMeasuredHeight(), rect, rect2, i);
        int iD = D(appBarLayoutE);
        view.layout(rect2.left, rect2.top - iD, rect2.right, rect2.bottom - iD);
        this.e = rect2.top - appBarLayoutE.getBottom();
    }

    public final int D(View view) {
        int i;
        if (this.f == 0) {
            return 0;
        }
        float f = 0.0f;
        if (view instanceof AppBarLayout) {
            AppBarLayout appBarLayout = (AppBarLayout) view;
            int totalScrollRange = appBarLayout.getTotalScrollRange();
            int downNestedPreScrollRange = appBarLayout.getDownNestedPreScrollRange();
            CoordinatorLayout.c cVar = ((CoordinatorLayout.f) appBarLayout.getLayoutParams()).a;
            int iD = cVar instanceof AppBarLayout.BaseBehavior ? ((AppBarLayout.BaseBehavior) cVar).D() : 0;
            if ((downNestedPreScrollRange == 0 || totalScrollRange + iD > downNestedPreScrollRange) && (i = totalScrollRange - downNestedPreScrollRange) != 0) {
                f = 1.0f + (iD / i);
            }
        }
        int i2 = this.f;
        return d0.h.l((int) (f * i2), 0, i2);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public boolean l(CoordinatorLayout coordinatorLayout, View view, int i, int i2, int i3, int i4) {
        qa lastWindowInsets;
        int i5 = view.getLayoutParams().height;
        if (i5 != -1 && i5 != -2) {
            return false;
        }
        AppBarLayout appBarLayoutE = ((AppBarLayout.ScrollingViewBehavior) this).E(coordinatorLayout.o(view));
        if (appBarLayoutE == null) {
            return false;
        }
        int size = View.MeasureSpec.getSize(i3);
        if (size > 0) {
            AtomicInteger atomicInteger = ha.a;
            if (appBarLayoutE.getFitsSystemWindows() && (lastWindowInsets = coordinatorLayout.getLastWindowInsets()) != null) {
                size += lastWindowInsets.b() + lastWindowInsets.e();
            }
        } else {
            size = coordinatorLayout.getHeight();
        }
        coordinatorLayout.x(view, i, i2, View.MeasureSpec.makeMeasureSpec((size + appBarLayoutE.getTotalScrollRange()) - appBarLayoutE.getMeasuredHeight(), i5 == -1 ? 1073741824 : Integer.MIN_VALUE), i4);
        return true;
    }

    public y55(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.c = new Rect();
        this.d = new Rect();
        this.e = 0;
    }
}
