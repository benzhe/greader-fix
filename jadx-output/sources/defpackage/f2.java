package defpackage;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.SeekBar;
import androidx.appcompat.R$styleable;
import defpackage.d0;
import java.lang.reflect.InvocationTargetException;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public class f2 extends e2 {
    public final SeekBar d;
    public Drawable e;
    public ColorStateList f;
    public PorterDuff.Mode g;
    public boolean h;
    public boolean i;

    public f2(SeekBar seekBar) {
        super(seekBar);
        this.f = null;
        this.g = null;
        this.h = false;
        this.i = false;
        this.d = seekBar;
    }

    @Override // defpackage.e2
    public void a(AttributeSet attributeSet, int i) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        super.a(attributeSet, i);
        Context context = this.d.getContext();
        int[] iArr = R$styleable.AppCompatSeekBar;
        c3 c3VarR = c3.r(context, attributeSet, iArr, i, 0);
        SeekBar seekBar = this.d;
        ha.r(seekBar, seekBar.getContext(), iArr, attributeSet, c3VarR.b, i, 0);
        Drawable drawableH = c3VarR.h(R$styleable.AppCompatSeekBar_android_thumb);
        if (drawableH != null) {
            this.d.setThumb(drawableH);
        }
        Drawable drawableG = c3VarR.g(R$styleable.AppCompatSeekBar_tickMark);
        Drawable drawable = this.e;
        if (drawable != null) {
            drawable.setCallback(null);
        }
        this.e = drawableG;
        if (drawableG != null) {
            drawableG.setCallback(this.d);
            SeekBar seekBar2 = this.d;
            AtomicInteger atomicInteger = ha.a;
            d0.h.Y(drawableG, seekBar2.getLayoutDirection());
            if (drawableG.isStateful()) {
                drawableG.setState(this.d.getDrawableState());
            }
            c();
        }
        this.d.invalidate();
        int i2 = R$styleable.AppCompatSeekBar_tickMarkTintMode;
        if (c3VarR.p(i2)) {
            this.g = m2.d(c3VarR.j(i2, -1), this.g);
            this.i = true;
        }
        int i3 = R$styleable.AppCompatSeekBar_tickMarkTint;
        if (c3VarR.p(i3)) {
            this.f = c3VarR.c(i3);
            this.h = true;
        }
        c3VarR.b.recycle();
        c();
    }

    public final void c() {
        Drawable drawable = this.e;
        if (drawable != null) {
            if (this.h || this.i) {
                Drawable drawableL0 = d0.h.l0(drawable.mutate());
                this.e = drawableL0;
                if (this.h) {
                    drawableL0.setTintList(this.f);
                }
                if (this.i) {
                    this.e.setTintMode(this.g);
                }
                if (this.e.isStateful()) {
                    this.e.setState(this.d.getDrawableState());
                }
            }
        }
    }

    public void d(Canvas canvas) {
        if (this.e != null) {
            int max = this.d.getMax();
            if (max > 1) {
                int intrinsicWidth = this.e.getIntrinsicWidth();
                int intrinsicHeight = this.e.getIntrinsicHeight();
                int i = intrinsicWidth >= 0 ? intrinsicWidth / 2 : 1;
                int i2 = intrinsicHeight >= 0 ? intrinsicHeight / 2 : 1;
                this.e.setBounds(-i, -i2, i, i2);
                float width = ((this.d.getWidth() - this.d.getPaddingLeft()) - this.d.getPaddingRight()) / max;
                int iSave = canvas.save();
                canvas.translate(this.d.getPaddingLeft(), this.d.getHeight() / 2);
                for (int i3 = 0; i3 <= max; i3++) {
                    this.e.draw(canvas);
                    canvas.translate(width, 0.0f);
                }
                canvas.restoreToCount(iSave);
            }
        }
    }
}
