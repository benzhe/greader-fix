package defpackage;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import com.google.android.material.R$attr;
import com.google.android.material.button.MaterialButton;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public class q65 {
    public final MaterialButton a;
    public pa5 b;
    public int c;
    public int d;
    public int e;
    public int f;
    public int g;
    public int h;
    public PorterDuff.Mode i;
    public ColorStateList j;
    public ColorStateList k;
    public ColorStateList l;
    public Drawable m;
    public boolean n = false;
    public boolean o = false;
    public boolean p = false;
    public boolean q;
    public LayerDrawable r;
    public int s;

    public q65(MaterialButton materialButton, pa5 pa5Var) {
        this.a = materialButton;
        this.b = pa5Var;
    }

    public ta5 a() {
        LayerDrawable layerDrawable = this.r;
        if (layerDrawable == null || layerDrawable.getNumberOfLayers() <= 1) {
            return null;
        }
        return this.r.getNumberOfLayers() > 2 ? (ta5) this.r.getDrawable(2) : (ta5) this.r.getDrawable(1);
    }

    public la5 b() {
        return c(false);
    }

    public final la5 c(boolean z) {
        LayerDrawable layerDrawable = this.r;
        if (layerDrawable == null || layerDrawable.getNumberOfLayers() <= 0) {
            return null;
        }
        return (la5) ((LayerDrawable) ((InsetDrawable) this.r.getDrawable(0)).getDrawable()).getDrawable(!z ? 1 : 0);
    }

    public final la5 d() {
        return c(true);
    }

    public void e(pa5 pa5Var) {
        this.b = pa5Var;
        if (b() != null) {
            la5 la5VarB = b();
            la5VarB.e.a = pa5Var;
            la5VarB.invalidateSelf();
        }
        if (d() != null) {
            la5 la5VarD = d();
            la5VarD.e.a = pa5Var;
            la5VarD.invalidateSelf();
        }
        if (a() != null) {
            a().setShapeAppearanceModel(pa5Var);
        }
    }

    public final void f(int i, int i2) {
        MaterialButton materialButton = this.a;
        AtomicInteger atomicInteger = ha.a;
        int paddingStart = materialButton.getPaddingStart();
        int paddingTop = this.a.getPaddingTop();
        int paddingEnd = this.a.getPaddingEnd();
        int paddingBottom = this.a.getPaddingBottom();
        int i3 = this.e;
        int i4 = this.f;
        this.f = i2;
        this.e = i;
        if (!this.o) {
            g();
        }
        this.a.setPaddingRelative(paddingStart, (paddingTop + i) - i3, paddingEnd, (paddingBottom + i2) - i4);
    }

    public final void g() {
        MaterialButton materialButton = this.a;
        la5 la5Var = new la5(this.b);
        la5Var.q(this.a.getContext());
        la5Var.setTintList(this.j);
        PorterDuff.Mode mode = this.i;
        if (mode != null) {
            la5Var.setTintMode(mode);
        }
        la5Var.z(this.h, this.k);
        la5 la5Var2 = new la5(this.b);
        la5Var2.setTint(0);
        la5Var2.y(this.h, this.n ? c50.Z(this.a, R$attr.colorSurface) : 0);
        la5 la5Var3 = new la5(this.b);
        this.m = la5Var3;
        la5Var3.setTint(-1);
        RippleDrawable rippleDrawable = new RippleDrawable(ba5.c(this.l), new InsetDrawable((Drawable) new LayerDrawable(new Drawable[]{la5Var2, la5Var}), this.c, this.e, this.d, this.f), this.m);
        this.r = rippleDrawable;
        materialButton.setInternalBackground(rippleDrawable);
        la5 la5VarB = b();
        if (la5VarB != null) {
            la5VarB.s(this.s);
        }
    }

    public final void h() {
        la5 la5VarB = b();
        la5 la5VarD = d();
        if (la5VarB != null) {
            la5VarB.z(this.h, this.k);
            if (la5VarD != null) {
                la5VarD.y(this.h, this.n ? c50.Z(this.a, R$attr.colorSurface) : 0);
            }
        }
    }
}
