package com.google.android.material.internal;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import com.google.android.material.R$style;
import com.google.android.material.R$styleable;
import defpackage.e8;
import defpackage.ea;
import defpackage.ha;
import defpackage.qa;
import defpackage.t85;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public class ScrimInsetsFrameLayout extends FrameLayout {
    public Drawable e;
    public Rect f;
    public Rect g;
    public boolean h;
    public boolean i;

    public class a implements ea {
        public a() {
        }

        @Override // defpackage.ea
        public qa a(View view, qa qaVar) {
            ScrimInsetsFrameLayout scrimInsetsFrameLayout = ScrimInsetsFrameLayout.this;
            if (scrimInsetsFrameLayout.f == null) {
                scrimInsetsFrameLayout.f = new Rect();
            }
            ScrimInsetsFrameLayout.this.f.set(qaVar.c(), qaVar.e(), qaVar.d(), qaVar.b());
            ScrimInsetsFrameLayout.this.a(qaVar);
            ScrimInsetsFrameLayout scrimInsetsFrameLayout2 = ScrimInsetsFrameLayout.this;
            boolean z = true;
            if ((!qaVar.f().equals(e8.e)) && ScrimInsetsFrameLayout.this.e != null) {
                z = false;
            }
            scrimInsetsFrameLayout2.setWillNotDraw(z);
            ScrimInsetsFrameLayout scrimInsetsFrameLayout3 = ScrimInsetsFrameLayout.this;
            AtomicInteger atomicInteger = ha.a;
            scrimInsetsFrameLayout3.postInvalidateOnAnimation();
            return qaVar.a();
        }
    }

    public ScrimInsetsFrameLayout(Context context) {
        this(context, null);
    }

    public void a(qa qaVar) {
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        super.draw(canvas);
        int width = getWidth();
        int height = getHeight();
        if (this.f == null || this.e == null) {
            return;
        }
        int iSave = canvas.save();
        canvas.translate(getScrollX(), getScrollY());
        if (this.h) {
            this.g.set(0, 0, width, this.f.top);
            this.e.setBounds(this.g);
            this.e.draw(canvas);
        }
        if (this.i) {
            this.g.set(0, height - this.f.bottom, width, height);
            this.e.setBounds(this.g);
            this.e.draw(canvas);
        }
        Rect rect = this.g;
        Rect rect2 = this.f;
        rect.set(0, rect2.top, rect2.left, height - rect2.bottom);
        this.e.setBounds(this.g);
        this.e.draw(canvas);
        Rect rect3 = this.g;
        Rect rect4 = this.f;
        rect3.set(width - rect4.right, rect4.top, width, height - rect4.bottom);
        this.e.setBounds(this.g);
        this.e.draw(canvas);
        canvas.restoreToCount(iSave);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        Drawable drawable = this.e;
        if (drawable != null) {
            drawable.setCallback(this);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        Drawable drawable = this.e;
        if (drawable != null) {
            drawable.setCallback(null);
        }
    }

    public void setDrawBottomInsetForeground(boolean z) {
        this.i = z;
    }

    public void setDrawTopInsetForeground(boolean z) {
        this.h = z;
    }

    public void setScrimInsetForeground(Drawable drawable) {
        this.e = drawable;
    }

    public ScrimInsetsFrameLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ScrimInsetsFrameLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.g = new Rect();
        this.h = true;
        this.i = true;
        int[] iArr = R$styleable.ScrimInsetsFrameLayout;
        int i2 = R$style.Widget_Design_ScrimInsetsFrameLayout;
        t85.a(context, attributeSet, i, i2);
        t85.b(context, attributeSet, iArr, i, i2, new int[0]);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr, i, i2);
        this.e = typedArrayObtainStyledAttributes.getDrawable(R$styleable.ScrimInsetsFrameLayout_insetForeground);
        typedArrayObtainStyledAttributes.recycle();
        setWillNotDraw(true);
        ha.t(this, new a());
    }
}
