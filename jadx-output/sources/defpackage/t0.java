package defpackage;

import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.util.StateSet;
import defpackage.r0;

/* loaded from: classes.dex */
public class t0 extends r0 {
    public a r;
    public boolean s;

    public static class a extends r0.c {
        public int[][] J;

        public a(a aVar, t0 t0Var, Resources resources) {
            super(aVar, t0Var, resources);
            if (aVar != null) {
                this.J = aVar.J;
            } else {
                this.J = new int[this.g.length][];
            }
        }

        @Override // r0.c
        public void e() {
            int[][] iArr = this.J;
            int[][] iArr2 = new int[iArr.length][];
            for (int length = iArr.length - 1; length >= 0; length--) {
                int[][] iArr3 = this.J;
                iArr2[length] = iArr3[length] != null ? (int[]) iArr3[length].clone() : null;
            }
            this.J = iArr2;
        }

        public int g(int[] iArr) {
            int[][] iArr2 = this.J;
            int i = this.h;
            for (int i2 = 0; i2 < i; i2++) {
                if (StateSet.stateSetMatches(iArr2[i2], iArr)) {
                    return i2;
                }
            }
            return -1;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable() {
            return new t0(this, null);
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources) {
            return new t0(this, resources);
        }
    }

    public t0(a aVar, Resources resources) {
        e(new a(aVar, this, resources));
        onStateChange(getState());
    }

    @Override // defpackage.r0, android.graphics.drawable.Drawable
    public void applyTheme(Resources.Theme theme) {
        super.applyTheme(theme);
        onStateChange(getState());
    }

    @Override // defpackage.r0
    public void e(r0.c cVar) {
        this.e = cVar;
        int i = this.k;
        if (i >= 0) {
            Drawable drawableD = cVar.d(i);
            this.g = drawableD;
            if (drawableD != null) {
                c(drawableD);
            }
        }
        this.h = null;
        if (cVar instanceof a) {
            this.r = (a) cVar;
        }
    }

    @Override // defpackage.r0
    /* renamed from: f, reason: merged with bridge method [inline-methods] */
    public a b() {
        return new a(this.r, this, null);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        return true;
    }

    @Override // defpackage.r0, android.graphics.drawable.Drawable
    public Drawable mutate() {
        if (!this.s) {
            super.mutate();
            if (this == this) {
                this.r.e();
                this.s = true;
            }
        }
        return this;
    }

    @Override // defpackage.r0, android.graphics.drawable.Drawable
    public boolean onStateChange(int[] iArr) {
        boolean zOnStateChange = super.onStateChange(iArr);
        int iG = this.r.g(iArr);
        if (iG < 0) {
            iG = this.r.g(StateSet.WILD_CARD);
        }
        return d(iG) || zOnStateChange;
    }

    public t0(a aVar) {
    }
}
