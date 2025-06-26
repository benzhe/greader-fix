package com.google.android.material.imageview;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewOutlineProvider;
import androidx.appcompat.widget.AppCompatImageView;
import com.google.android.material.R$style;
import com.google.android.material.R$styleable;
import defpackage.c50;
import defpackage.ea5;
import defpackage.fc5;
import defpackage.la5;
import defpackage.p0;
import defpackage.pa5;
import defpackage.qa5;
import defpackage.ta5;

/* loaded from: classes.dex */
public class ShapeableImageView extends AppCompatImageView implements ta5 {
    public static final int y = R$style.Widget_MaterialComponents_ShapeableImageView;
    public final qa5 g;
    public final RectF h;
    public final RectF i;
    public final Paint j;
    public final Paint k;
    public final Path l;
    public ColorStateList m;
    public la5 n;
    public pa5 o;
    public float p;
    public Path q;
    public int r;
    public int s;
    public int t;
    public int u;
    public int v;
    public int w;
    public boolean x;

    public class a extends ViewOutlineProvider {
        public final Rect a = new Rect();

        public a() {
        }

        @Override // android.view.ViewOutlineProvider
        public void getOutline(View view, Outline outline) {
            ShapeableImageView shapeableImageView = ShapeableImageView.this;
            if (shapeableImageView.o == null) {
                return;
            }
            if (shapeableImageView.n == null) {
                shapeableImageView.n = new la5(ShapeableImageView.this.o);
            }
            ShapeableImageView.this.h.round(this.a);
            ShapeableImageView.this.n.setBounds(this.a);
            ShapeableImageView.this.n.getOutline(outline);
        }
    }

    public ShapeableImageView(Context context) {
        this(context, null, 0);
    }

    public final boolean c() {
        return (this.v == Integer.MIN_VALUE && this.w == Integer.MIN_VALUE) ? false : true;
    }

    public final boolean d() {
        return getLayoutDirection() == 1;
    }

    public final void e(int i, int i2) {
        this.h.set(getPaddingLeft(), getPaddingTop(), i - getPaddingRight(), i2 - getPaddingBottom());
        this.g.a(this.o, 1.0f, this.h, this.l);
        this.q.rewind();
        this.q.addPath(this.l);
        this.i.set(0.0f, 0.0f, i, i2);
        this.q.addRect(this.i, Path.Direction.CCW);
    }

    public int getContentPaddingBottom() {
        return this.u;
    }

    public final int getContentPaddingEnd() {
        int i = this.w;
        return i != Integer.MIN_VALUE ? i : d() ? this.r : this.t;
    }

    public int getContentPaddingLeft() {
        int i;
        int i2;
        if (c()) {
            if (d() && (i2 = this.w) != Integer.MIN_VALUE) {
                return i2;
            }
            if (!d() && (i = this.v) != Integer.MIN_VALUE) {
                return i;
            }
        }
        return this.r;
    }

    public int getContentPaddingRight() {
        int i;
        int i2;
        if (c()) {
            if (d() && (i2 = this.v) != Integer.MIN_VALUE) {
                return i2;
            }
            if (!d() && (i = this.w) != Integer.MIN_VALUE) {
                return i;
            }
        }
        return this.t;
    }

    public final int getContentPaddingStart() {
        int i = this.v;
        return i != Integer.MIN_VALUE ? i : d() ? this.t : this.r;
    }

    public int getContentPaddingTop() {
        return this.s;
    }

    @Override // android.view.View
    public int getPaddingBottom() {
        return super.getPaddingBottom() - getContentPaddingBottom();
    }

    @Override // android.view.View
    public int getPaddingEnd() {
        return super.getPaddingEnd() - getContentPaddingEnd();
    }

    @Override // android.view.View
    public int getPaddingLeft() {
        return super.getPaddingLeft() - getContentPaddingLeft();
    }

    @Override // android.view.View
    public int getPaddingRight() {
        return super.getPaddingRight() - getContentPaddingRight();
    }

    @Override // android.view.View
    public int getPaddingStart() {
        return super.getPaddingStart() - getContentPaddingStart();
    }

    @Override // android.view.View
    public int getPaddingTop() {
        return super.getPaddingTop() - getContentPaddingTop();
    }

    public pa5 getShapeAppearanceModel() {
        return this.o;
    }

    public ColorStateList getStrokeColor() {
        return this.m;
    }

    public float getStrokeWidth() {
        return this.p;
    }

    @Override // android.widget.ImageView, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        setLayerType(2, null);
    }

    @Override // android.widget.ImageView, android.view.View
    public void onDetachedFromWindow() {
        setLayerType(0, null);
        super.onDetachedFromWindow();
    }

    @Override // android.widget.ImageView, android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        canvas.drawPath(this.q, this.k);
        if (this.m == null) {
            return;
        }
        this.j.setStrokeWidth(this.p);
        int colorForState = this.m.getColorForState(getDrawableState(), this.m.getDefaultColor());
        if (this.p <= 0.0f || colorForState == 0) {
            return;
        }
        this.j.setColor(colorForState);
        canvas.drawPath(this.l, this.j);
    }

    @Override // android.widget.ImageView, android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (!this.x && isLayoutDirectionResolved()) {
            this.x = true;
            if (isPaddingRelative() || c()) {
                setPaddingRelative(super.getPaddingStart(), super.getPaddingTop(), super.getPaddingEnd(), super.getPaddingBottom());
            } else {
                setPadding(super.getPaddingLeft(), super.getPaddingTop(), super.getPaddingRight(), super.getPaddingBottom());
            }
        }
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        e(i, i2);
    }

    public void setContentPadding(int i, int i2, int i3, int i4) {
        this.v = Integer.MIN_VALUE;
        this.w = Integer.MIN_VALUE;
        super.setPadding((super.getPaddingLeft() - this.r) + i, (super.getPaddingTop() - this.s) + i2, (super.getPaddingRight() - this.t) + i3, (super.getPaddingBottom() - this.u) + i4);
        this.r = i;
        this.s = i2;
        this.t = i3;
        this.u = i4;
    }

    public void setContentPaddingRelative(int i, int i2, int i3, int i4) {
        super.setPaddingRelative((super.getPaddingStart() - getContentPaddingStart()) + i, (super.getPaddingTop() - this.s) + i2, (super.getPaddingEnd() - getContentPaddingEnd()) + i3, (super.getPaddingBottom() - this.u) + i4);
        this.r = d() ? i3 : i;
        this.s = i2;
        if (!d()) {
            i = i3;
        }
        this.t = i;
        this.u = i4;
    }

    @Override // android.view.View
    public void setPadding(int i, int i2, int i3, int i4) {
        super.setPadding(getContentPaddingLeft() + i, getContentPaddingTop() + i2, getContentPaddingRight() + i3, getContentPaddingBottom() + i4);
    }

    @Override // android.view.View
    public void setPaddingRelative(int i, int i2, int i3, int i4) {
        super.setPaddingRelative(getContentPaddingStart() + i, getContentPaddingTop() + i2, getContentPaddingEnd() + i3, getContentPaddingBottom() + i4);
    }

    @Override // defpackage.ta5
    public void setShapeAppearanceModel(pa5 pa5Var) {
        this.o = pa5Var;
        la5 la5Var = this.n;
        if (la5Var != null) {
            la5Var.e.a = pa5Var;
            la5Var.invalidateSelf();
        }
        e(getWidth(), getHeight());
        invalidate();
        invalidateOutline();
    }

    public void setStrokeColor(ColorStateList colorStateList) {
        this.m = colorStateList;
        invalidate();
    }

    public void setStrokeColorResource(int i) {
        setStrokeColor(p0.a(getContext(), i));
    }

    public void setStrokeWidth(float f) {
        if (this.p != f) {
            this.p = f;
            invalidate();
        }
    }

    public void setStrokeWidthResource(int i) {
        setStrokeWidth(getResources().getDimensionPixelSize(i));
    }

    public ShapeableImageView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public ShapeableImageView(Context context, AttributeSet attributeSet, int i) {
        int i2 = y;
        super(fc5.a(context, attributeSet, i, i2), attributeSet, i);
        this.g = qa5.a.a;
        this.l = new Path();
        this.x = false;
        Context context2 = getContext();
        Paint paint = new Paint();
        this.k = paint;
        paint.setAntiAlias(true);
        paint.setColor(-1);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OUT));
        this.h = new RectF();
        this.i = new RectF();
        this.q = new Path();
        TypedArray typedArrayObtainStyledAttributes = context2.obtainStyledAttributes(attributeSet, R$styleable.ShapeableImageView, i, i2);
        this.m = c50.a0(context2, typedArrayObtainStyledAttributes, R$styleable.ShapeableImageView_strokeColor);
        this.p = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.ShapeableImageView_strokeWidth, 0);
        int dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.ShapeableImageView_contentPadding, 0);
        this.r = dimensionPixelSize;
        this.s = dimensionPixelSize;
        this.t = dimensionPixelSize;
        this.u = dimensionPixelSize;
        this.r = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.ShapeableImageView_contentPaddingLeft, dimensionPixelSize);
        this.s = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.ShapeableImageView_contentPaddingTop, dimensionPixelSize);
        this.t = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.ShapeableImageView_contentPaddingRight, dimensionPixelSize);
        this.u = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.ShapeableImageView_contentPaddingBottom, dimensionPixelSize);
        this.v = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.ShapeableImageView_contentPaddingStart, Integer.MIN_VALUE);
        this.w = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.ShapeableImageView_contentPaddingEnd, Integer.MIN_VALUE);
        typedArrayObtainStyledAttributes.recycle();
        Paint paint2 = new Paint();
        this.j = paint2;
        paint2.setStyle(Paint.Style.STROKE);
        paint2.setAntiAlias(true);
        this.o = pa5.b(context2, attributeSet, i, i2, new ea5(0)).a();
        setOutlineProvider(new a());
    }
}
