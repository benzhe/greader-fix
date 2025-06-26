package defpackage;

import android.R;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import android.graphics.drawable.StateListDrawable;
import android.util.AttributeSet;
import com.google.android.material.R$id;
import com.google.android.material.R$style;
import com.google.android.material.R$styleable;
import com.google.android.material.card.MaterialCardView;
import defpackage.d0;
import defpackage.pa5;
import java.util.Objects;

/* loaded from: classes.dex */
public class r65 {
    public static final int[] t = {R.attr.state_checked};
    public static final double u = Math.cos(Math.toRadians(45.0d));
    public final MaterialCardView a;
    public final la5 c;
    public final la5 d;
    public int e;
    public int f;
    public int g;
    public Drawable h;
    public Drawable i;
    public ColorStateList j;
    public ColorStateList k;
    public pa5 l;
    public ColorStateList m;
    public Drawable n;
    public LayerDrawable o;
    public la5 p;
    public la5 q;
    public boolean s;
    public final Rect b = new Rect();
    public boolean r = false;

    public class a extends InsetDrawable {
        public a(r65 r65Var, Drawable drawable, int i, int i2, int i3, int i4) {
            super(drawable, i, i2, i3, i4);
        }

        @Override // android.graphics.drawable.Drawable
        public int getMinimumHeight() {
            return -1;
        }

        @Override // android.graphics.drawable.Drawable
        public int getMinimumWidth() {
            return -1;
        }

        @Override // android.graphics.drawable.InsetDrawable, android.graphics.drawable.DrawableWrapper, android.graphics.drawable.Drawable
        public boolean getPadding(Rect rect) {
            return false;
        }
    }

    public r65(MaterialCardView materialCardView, AttributeSet attributeSet, int i, int i2) {
        this.a = materialCardView;
        la5 la5Var = new la5(materialCardView.getContext(), attributeSet, i, i2);
        this.c = la5Var;
        la5Var.q(materialCardView.getContext());
        la5Var.w(-12303292);
        pa5 pa5Var = la5Var.e.a;
        Objects.requireNonNull(pa5Var);
        pa5.b bVar = new pa5.b(pa5Var);
        TypedArray typedArrayObtainStyledAttributes = materialCardView.getContext().obtainStyledAttributes(attributeSet, R$styleable.CardView, i, R$style.CardView);
        int i3 = R$styleable.CardView_cardCornerRadius;
        if (typedArrayObtainStyledAttributes.hasValue(i3)) {
            bVar.c(typedArrayObtainStyledAttributes.getDimension(i3, 0.0f));
        }
        this.d = new la5();
        h(bVar.a());
        typedArrayObtainStyledAttributes.recycle();
    }

    public final float a() {
        return Math.max(Math.max(b(this.l.a, this.c.n()), b(this.l.b, this.c.o())), Math.max(b(this.l.c, this.c.i()), b(this.l.d, this.c.h())));
    }

    public final float b(ha5 ha5Var, float f) {
        if (ha5Var instanceof oa5) {
            return (float) ((1.0d - u) * f);
        }
        if (ha5Var instanceof ia5) {
            return f / 2.0f;
        }
        return 0.0f;
    }

    public final float c() {
        return this.a.getMaxCardElevation() + (j() ? a() : 0.0f);
    }

    public final float d() {
        return (this.a.getMaxCardElevation() * 1.5f) + (j() ? a() : 0.0f);
    }

    public final Drawable e() {
        if (this.n == null) {
            int[] iArr = ba5.a;
            this.q = new la5(this.l);
            this.n = new RippleDrawable(this.j, null, this.q);
        }
        if (this.o == null) {
            StateListDrawable stateListDrawable = new StateListDrawable();
            Drawable drawable = this.i;
            if (drawable != null) {
                stateListDrawable.addState(t, drawable);
            }
            LayerDrawable layerDrawable = new LayerDrawable(new Drawable[]{this.n, this.d, stateListDrawable});
            this.o = layerDrawable;
            layerDrawable.setId(2, R$id.mtrl_card_checked_layer_id);
        }
        return this.o;
    }

    public final Drawable f(Drawable drawable) {
        int iCeil;
        int i;
        if (this.a.getUseCompatPadding()) {
            int iCeil2 = (int) Math.ceil(d());
            iCeil = (int) Math.ceil(c());
            i = iCeil2;
        } else {
            iCeil = 0;
            i = 0;
        }
        return new a(this, drawable, iCeil, i, iCeil, i);
    }

    public void g(Drawable drawable) {
        this.i = drawable;
        if (drawable != null) {
            Drawable drawableL0 = d0.h.l0(drawable.mutate());
            this.i = drawableL0;
            drawableL0.setTintList(this.k);
        }
        if (this.o != null) {
            StateListDrawable stateListDrawable = new StateListDrawable();
            Drawable drawable2 = this.i;
            if (drawable2 != null) {
                stateListDrawable.addState(t, drawable2);
            }
            this.o.setDrawableByLayerId(R$id.mtrl_card_checked_layer_id, stateListDrawable);
        }
    }

    public void h(pa5 pa5Var) {
        this.l = pa5Var;
        la5 la5Var = this.c;
        la5Var.e.a = pa5Var;
        la5Var.invalidateSelf();
        this.c.z = !r0.r();
        la5 la5Var2 = this.d;
        if (la5Var2 != null) {
            la5Var2.e.a = pa5Var;
            la5Var2.invalidateSelf();
        }
        la5 la5Var3 = this.q;
        if (la5Var3 != null) {
            la5Var3.e.a = pa5Var;
            la5Var3.invalidateSelf();
        }
        la5 la5Var4 = this.p;
        if (la5Var4 != null) {
            la5Var4.e.a = pa5Var;
            la5Var4.invalidateSelf();
        }
    }

    public final boolean i() {
        return this.a.getPreventCornerOverlap() && !this.c.r();
    }

    public final boolean j() {
        return this.a.getPreventCornerOverlap() && this.c.r() && this.a.getUseCompatPadding();
    }

    public void k() {
        float cardViewRadius = 0.0f;
        float fA = i() || j() ? a() : 0.0f;
        if (this.a.getPreventCornerOverlap() && this.a.getUseCompatPadding()) {
            cardViewRadius = (float) ((1.0d - u) * this.a.getCardViewRadius());
        }
        int i = (int) (fA - cardViewRadius);
        MaterialCardView materialCardView = this.a;
        Rect rect = this.b;
        materialCardView.h(rect.left + i, rect.top + i, rect.right + i, rect.bottom + i);
    }

    public void l() {
        if (!this.r) {
            this.a.setBackgroundInternal(f(this.c));
        }
        this.a.setForeground(f(this.h));
    }

    public final void m() {
        int[] iArr = ba5.a;
        Drawable drawable = this.n;
        if (drawable != null) {
            ((RippleDrawable) drawable).setColor(this.j);
            return;
        }
        la5 la5Var = this.p;
        if (la5Var != null) {
            la5Var.t(this.j);
        }
    }

    public void n() {
        this.d.z(this.g, this.m);
    }
}
