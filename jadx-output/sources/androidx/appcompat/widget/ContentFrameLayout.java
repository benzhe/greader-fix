package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.widget.FrameLayout;
import defpackage.d0;
import defpackage.f0;
import defpackage.ha;
import defpackage.j1;
import defpackage.k2;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public class ContentFrameLayout extends FrameLayout {
    public TypedValue e;
    public TypedValue f;
    public TypedValue g;
    public TypedValue h;
    public TypedValue i;
    public TypedValue j;
    public final Rect k;
    public a l;

    public interface a {
    }

    public ContentFrameLayout(Context context) {
        this(context, null);
    }

    public TypedValue getFixedHeightMajor() {
        if (this.i == null) {
            this.i = new TypedValue();
        }
        return this.i;
    }

    public TypedValue getFixedHeightMinor() {
        if (this.j == null) {
            this.j = new TypedValue();
        }
        return this.j;
    }

    public TypedValue getFixedWidthMajor() {
        if (this.g == null) {
            this.g = new TypedValue();
        }
        return this.g;
    }

    public TypedValue getFixedWidthMinor() {
        if (this.h == null) {
            this.h = new TypedValue();
        }
        return this.h;
    }

    public TypedValue getMinWidthMajor() {
        if (this.e == null) {
            this.e = new TypedValue();
        }
        return this.e;
    }

    public TypedValue getMinWidthMinor() {
        if (this.f == null) {
            this.f = new TypedValue();
        }
        return this.f;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        a aVar = this.l;
        if (aVar != null) {
            Objects.requireNonNull((f0) aVar);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        a aVar = this.l;
        if (aVar != null) {
            d0 d0Var = ((f0) aVar).a;
            k2 k2Var = d0Var.o;
            if (k2Var != null) {
                k2Var.g();
            }
            if (d0Var.t != null) {
                d0Var.i.getDecorView().removeCallbacks(d0Var.u);
                if (d0Var.t.isShowing()) {
                    try {
                        d0Var.t.dismiss();
                    } catch (IllegalArgumentException unused) {
                    }
                }
                d0Var.t = null;
            }
            d0Var.J();
            j1 j1Var = d0Var.O(0).h;
            if (j1Var != null) {
                j1Var.c(true);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x004a  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0060  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0086  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00cc  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00d6  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x00db  */
    @Override // android.widget.FrameLayout, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onMeasure(int r14, int r15) {
        /*
            Method dump skipped, instructions count: 226
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.ContentFrameLayout.onMeasure(int, int):void");
    }

    public void setAttachListener(a aVar) {
        this.l = aVar;
    }

    public void setDecorPadding(int i, int i2, int i3, int i4) {
        this.k.set(i, i2, i3, i4);
        AtomicInteger atomicInteger = ha.a;
        if (isLaidOut()) {
            requestLayout();
        }
    }

    public ContentFrameLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ContentFrameLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.k = new Rect();
    }
}
