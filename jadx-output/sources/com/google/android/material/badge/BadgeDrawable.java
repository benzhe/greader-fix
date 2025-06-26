package com.google.android.material.badge;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.google.android.material.R$attr;
import com.google.android.material.R$dimen;
import com.google.android.material.R$plurals;
import com.google.android.material.R$string;
import com.google.android.material.R$style;
import com.google.android.material.R$styleable;
import defpackage.c50;
import defpackage.ha;
import defpackage.la5;
import defpackage.q85;
import defpackage.t85;
import defpackage.y95;
import java.lang.ref.WeakReference;
import java.text.NumberFormat;
import java.util.concurrent.atomic.AtomicInteger;
import org.apache.commons.codec.binary.Base64;

/* loaded from: classes.dex */
public class BadgeDrawable extends Drawable implements q85.b {
    public static final int u = R$style.Widget_MaterialComponents_Badge;
    public static final int v = R$attr.badgeStyle;
    public final WeakReference<Context> e;
    public final la5 f;
    public final q85 g;
    public final Rect h;
    public final float i;
    public final float j;
    public final float k;
    public final SavedState l;
    public float m;
    public float n;
    public int o;
    public float p;
    public float q;
    public float r;
    public WeakReference<View> s;
    public WeakReference<FrameLayout> t;

    public BadgeDrawable(Context context) throws Resources.NotFoundException {
        y95 y95Var;
        Context context2;
        WeakReference<Context> weakReference = new WeakReference<>(context);
        this.e = weakReference;
        t85.c(context, t85.b, "Theme.MaterialComponents");
        Resources resources = context.getResources();
        this.h = new Rect();
        this.f = new la5();
        this.i = resources.getDimensionPixelSize(R$dimen.mtrl_badge_radius);
        this.k = resources.getDimensionPixelSize(R$dimen.mtrl_badge_long_text_horizontal_padding);
        this.j = resources.getDimensionPixelSize(R$dimen.mtrl_badge_with_text_radius);
        q85 q85Var = new q85(this);
        this.g = q85Var;
        q85Var.a.setTextAlign(Paint.Align.CENTER);
        this.l = new SavedState(context);
        int i = R$style.TextAppearance_MaterialComponents_Badge;
        Context context3 = weakReference.get();
        if (context3 == null || q85Var.f == (y95Var = new y95(context3, i)) || (context2 = weakReference.get()) == null) {
            return;
        }
        q85Var.b(y95Var, context2);
        m();
    }

    @Override // q85.b
    public void a() {
        invalidateSelf();
    }

    public final String b() {
        if (e() <= this.o) {
            return NumberFormat.getInstance().format(e());
        }
        Context context = this.e.get();
        return context == null ? "" : context.getString(R$string.mtrl_exceed_max_badge_number_suffix, Integer.valueOf(this.o), "+");
    }

    public CharSequence c() {
        Context context;
        if (!isVisible()) {
            return null;
        }
        if (!f()) {
            return this.l.j;
        }
        if (this.l.k <= 0 || (context = this.e.get()) == null) {
            return null;
        }
        int iE = e();
        int i = this.o;
        return iE <= i ? context.getResources().getQuantityString(this.l.k, e(), Integer.valueOf(e())) : context.getString(this.l.l, Integer.valueOf(i));
    }

    public FrameLayout d() {
        WeakReference<FrameLayout> weakReference = this.t;
        if (weakReference != null) {
            return weakReference.get();
        }
        return null;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        if (getBounds().isEmpty() || this.l.g == 0 || !isVisible()) {
            return;
        }
        this.f.draw(canvas);
        if (f()) {
            Rect rect = new Rect();
            String strB = b();
            this.g.a.getTextBounds(strB, 0, strB.length(), rect);
            canvas.drawText(strB, this.m, this.n + (rect.height() / 2), this.g.a);
        }
    }

    public int e() {
        if (f()) {
            return this.l.h;
        }
        return 0;
    }

    public boolean f() {
        return this.l.h != -1;
    }

    public void g(int i) {
        this.l.e = i;
        ColorStateList colorStateListValueOf = ColorStateList.valueOf(i);
        la5 la5Var = this.f;
        if (la5Var.e.d != colorStateListValueOf) {
            la5Var.t(colorStateListValueOf);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.l.g;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.h.height();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.h.width();
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    public void h(int i) throws Resources.NotFoundException {
        SavedState savedState = this.l;
        if (savedState.m != i) {
            savedState.m = i;
            WeakReference<View> weakReference = this.s;
            if (weakReference == null || weakReference.get() == null) {
                return;
            }
            View view = this.s.get();
            WeakReference<FrameLayout> weakReference2 = this.t;
            l(view, weakReference2 != null ? weakReference2.get() : null);
        }
    }

    public void i(int i) {
        this.l.f = i;
        if (this.g.a.getColor() != i) {
            this.g.a.setColor(i);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        return false;
    }

    public void j(int i) throws Resources.NotFoundException {
        SavedState savedState = this.l;
        if (savedState.i != i) {
            savedState.i = i;
            this.o = ((int) Math.pow(10.0d, i - 1.0d)) - 1;
            this.g.d = true;
            m();
            invalidateSelf();
        }
    }

    public void k(int i) throws Resources.NotFoundException {
        int iMax = Math.max(0, i);
        SavedState savedState = this.l;
        if (savedState.h != iMax) {
            savedState.h = iMax;
            this.g.d = true;
            m();
            invalidateSelf();
        }
    }

    public void l(View view, FrameLayout frameLayout) throws Resources.NotFoundException {
        this.s = new WeakReference<>(view);
        this.t = new WeakReference<>(frameLayout);
        ViewGroup viewGroup = (ViewGroup) view.getParent();
        viewGroup.setClipChildren(false);
        viewGroup.setClipToPadding(false);
        m();
        invalidateSelf();
    }

    public final void m() throws Resources.NotFoundException {
        Context context = this.e.get();
        WeakReference<View> weakReference = this.s;
        View view = weakReference != null ? weakReference.get() : null;
        if (context == null || view == null) {
            return;
        }
        Rect rect = new Rect();
        rect.set(this.h);
        Rect rect2 = new Rect();
        view.getDrawingRect(rect2);
        WeakReference<FrameLayout> weakReference2 = this.t;
        FrameLayout frameLayout = weakReference2 != null ? weakReference2.get() : null;
        if (frameLayout != null) {
            frameLayout.offsetDescendantRectToMyCoords(view, rect2);
        }
        int i = this.l.m;
        if (i == 8388691 || i == 8388693) {
            this.n = rect2.bottom - r2.p;
        } else {
            this.n = rect2.top + r2.p;
        }
        if (e() <= 9) {
            float f = !f() ? this.i : this.j;
            this.p = f;
            this.r = f;
            this.q = f;
        } else {
            float f2 = this.j;
            this.p = f2;
            this.r = f2;
            this.q = (this.g.a(b()) / 2.0f) + this.k;
        }
        int dimensionPixelSize = context.getResources().getDimensionPixelSize(f() ? R$dimen.mtrl_badge_text_horizontal_edge_offset : R$dimen.mtrl_badge_horizontal_edge_offset);
        int i2 = this.l.m;
        if (i2 == 8388659 || i2 == 8388691) {
            AtomicInteger atomicInteger = ha.a;
            this.m = view.getLayoutDirection() == 0 ? (rect2.left - this.q) + dimensionPixelSize + this.l.o : ((rect2.right + this.q) - dimensionPixelSize) - this.l.o;
        } else {
            AtomicInteger atomicInteger2 = ha.a;
            this.m = view.getLayoutDirection() == 0 ? ((rect2.right + this.q) - dimensionPixelSize) - this.l.o : (rect2.left - this.q) + dimensionPixelSize + this.l.o;
        }
        Rect rect3 = this.h;
        float f3 = this.m;
        float f4 = this.n;
        float f5 = this.q;
        float f6 = this.r;
        rect3.set((int) (f3 - f5), (int) (f4 - f6), (int) (f3 + f5), (int) (f4 + f6));
        la5 la5Var = this.f;
        la5Var.e.a = la5Var.e.a.e(this.p);
        la5Var.invalidateSelf();
        if (rect.equals(this.h)) {
            return;
        }
        this.f.setBounds(this.h);
    }

    @Override // android.graphics.drawable.Drawable, q85.b
    public boolean onStateChange(int[] iArr) {
        return super.onStateChange(iArr);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.l.g = i;
        this.g.a.setAlpha(i);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
    }

    public static final class SavedState implements Parcelable {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();
        public int e;
        public int f;
        public int g;
        public int h;
        public int i;
        public CharSequence j;
        public int k;
        public int l;
        public int m;
        public boolean n;
        public int o;
        public int p;

        public static class a implements Parcelable.Creator<SavedState> {
            @Override // android.os.Parcelable.Creator
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            @Override // android.os.Parcelable.Creator
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        }

        public SavedState(Context context) throws Resources.NotFoundException {
            this.g = Base64.BASELENGTH;
            this.h = -1;
            int i = R$style.TextAppearance_MaterialComponents_Badge;
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(i, R$styleable.TextAppearance);
            typedArrayObtainStyledAttributes.getDimension(R$styleable.TextAppearance_android_textSize, 0.0f);
            ColorStateList colorStateListA0 = c50.a0(context, typedArrayObtainStyledAttributes, R$styleable.TextAppearance_android_textColor);
            c50.a0(context, typedArrayObtainStyledAttributes, R$styleable.TextAppearance_android_textColorHint);
            c50.a0(context, typedArrayObtainStyledAttributes, R$styleable.TextAppearance_android_textColorLink);
            typedArrayObtainStyledAttributes.getInt(R$styleable.TextAppearance_android_textStyle, 0);
            typedArrayObtainStyledAttributes.getInt(R$styleable.TextAppearance_android_typeface, 1);
            int i2 = R$styleable.TextAppearance_fontFamily;
            i2 = typedArrayObtainStyledAttributes.hasValue(i2) ? i2 : R$styleable.TextAppearance_android_fontFamily;
            typedArrayObtainStyledAttributes.getResourceId(i2, 0);
            typedArrayObtainStyledAttributes.getString(i2);
            typedArrayObtainStyledAttributes.getBoolean(R$styleable.TextAppearance_textAllCaps, false);
            c50.a0(context, typedArrayObtainStyledAttributes, R$styleable.TextAppearance_android_shadowColor);
            typedArrayObtainStyledAttributes.getFloat(R$styleable.TextAppearance_android_shadowDx, 0.0f);
            typedArrayObtainStyledAttributes.getFloat(R$styleable.TextAppearance_android_shadowDy, 0.0f);
            typedArrayObtainStyledAttributes.getFloat(R$styleable.TextAppearance_android_shadowRadius, 0.0f);
            typedArrayObtainStyledAttributes.recycle();
            TypedArray typedArrayObtainStyledAttributes2 = context.obtainStyledAttributes(i, R$styleable.MaterialTextAppearance);
            int i3 = R$styleable.MaterialTextAppearance_android_letterSpacing;
            typedArrayObtainStyledAttributes2.hasValue(i3);
            typedArrayObtainStyledAttributes2.getFloat(i3, 0.0f);
            typedArrayObtainStyledAttributes2.recycle();
            this.f = colorStateListA0.getDefaultColor();
            this.j = context.getString(R$string.mtrl_badge_numberless_content_description);
            this.k = R$plurals.mtrl_badge_content_description;
            this.l = R$string.mtrl_exceed_max_badge_number_content_description;
            this.n = true;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(this.e);
            parcel.writeInt(this.f);
            parcel.writeInt(this.g);
            parcel.writeInt(this.h);
            parcel.writeInt(this.i);
            parcel.writeString(this.j.toString());
            parcel.writeInt(this.k);
            parcel.writeInt(this.m);
            parcel.writeInt(this.o);
            parcel.writeInt(this.p);
            parcel.writeInt(this.n ? 1 : 0);
        }

        public SavedState(Parcel parcel) {
            this.g = Base64.BASELENGTH;
            this.h = -1;
            this.e = parcel.readInt();
            this.f = parcel.readInt();
            this.g = parcel.readInt();
            this.h = parcel.readInt();
            this.i = parcel.readInt();
            this.j = parcel.readString();
            this.k = parcel.readInt();
            this.m = parcel.readInt();
            this.o = parcel.readInt();
            this.p = parcel.readInt();
            this.n = parcel.readInt() != 0;
        }
    }
}
