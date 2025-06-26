package defpackage;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.os.Looper;
import android.util.AndroidRuntimeException;
import defpackage.g95;
import defpackage.kb;

/* loaded from: classes.dex */
public final class l95<S extends g95> extends o95 {
    public static final mb<l95> u = new a("indicatorLevel");
    public p95<S> p;
    public final ob q;
    public final nb r;
    public float s;
    public boolean t;

    public static class a extends mb<l95> {
        public a(String str) {
            super(str);
        }

        @Override // defpackage.mb
        public float a(l95 l95Var) {
            return l95Var.s * 10000.0f;
        }

        @Override // defpackage.mb
        public void b(l95 l95Var, float f) {
            l95 l95Var2 = l95Var;
            l95Var2.s = f / 10000.0f;
            l95Var2.invalidateSelf();
        }
    }

    public l95(Context context, g95 g95Var, p95<S> p95Var) {
        super(context, g95Var);
        this.t = false;
        this.p = p95Var;
        p95Var.b = this;
        ob obVar = new ob();
        this.q = obVar;
        obVar.b = 1.0f;
        obVar.c = false;
        obVar.a(50.0f);
        nb nbVar = new nb(this, u);
        this.r = nbVar;
        nbVar.r = obVar;
        if (this.l != 1.0f) {
            this.l = 1.0f;
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Rect rect = new Rect();
        if (!getBounds().isEmpty() && isVisible() && canvas.getClipBounds(rect)) {
            canvas.save();
            p95<S> p95Var = this.p;
            float fC = c();
            p95Var.a.a();
            p95Var.a(canvas, fC);
            this.p.c(canvas, this.m);
            this.p.b(canvas, this.m, 0.0f, this.s, c50.H(this.f.c[0], this.n));
            canvas.restore();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.p.d();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.p.e();
    }

    @Override // defpackage.o95
    public boolean i(boolean z, boolean z2, boolean z3) {
        boolean zI = super.i(z, z2, z3);
        float fA = this.g.a(this.e.getContentResolver());
        if (fA == 0.0f) {
            this.t = true;
        } else {
            this.t = false;
            this.q.a(50.0f / fA);
        }
        return zI;
    }

    @Override // android.graphics.drawable.Drawable
    public void jumpToCurrentState() {
        this.r.b();
        this.s = getLevel() / 10000.0f;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onLevelChange(int i) {
        if (this.t) {
            this.r.b();
            this.s = i / 10000.0f;
            invalidateSelf();
        } else {
            nb nbVar = this.r;
            nbVar.b = this.s * 10000.0f;
            nbVar.c = true;
            float f = i;
            if (nbVar.f) {
                nbVar.s = f;
            } else {
                if (nbVar.r == null) {
                    nbVar.r = new ob(f);
                }
                ob obVar = nbVar.r;
                double d = f;
                obVar.i = d;
                double d2 = (float) d;
                if (d2 > Float.MAX_VALUE) {
                    throw new UnsupportedOperationException("Final position of the spring cannot be greater than the max value.");
                }
                if (d2 < nbVar.g) {
                    throw new UnsupportedOperationException("Final position of the spring cannot be less than the min value.");
                }
                double dAbs = Math.abs(nbVar.i * 0.75f);
                obVar.d = dAbs;
                obVar.e = dAbs * 62.5d;
                if (Looper.myLooper() != Looper.getMainLooper()) {
                    throw new AndroidRuntimeException("Animations may only be started on the main thread");
                }
                boolean z = nbVar.f;
                if (!z && !z) {
                    nbVar.f = true;
                    if (!nbVar.c) {
                        nbVar.b = nbVar.e.a(nbVar.d);
                    }
                    float f2 = nbVar.b;
                    if (f2 > Float.MAX_VALUE || f2 < nbVar.g) {
                        throw new IllegalArgumentException("Starting value need to be in between min value and max value");
                    }
                    kb kbVarA = kb.a();
                    if (kbVarA.b.size() == 0) {
                        if (kbVarA.d == null) {
                            kbVarA.d = new kb.d(kbVarA.c);
                        }
                        kb.d dVar = (kb.d) kbVarA.d;
                        dVar.b.postFrameCallback(dVar.c);
                    }
                    if (!kbVarA.b.contains(nbVar)) {
                        kbVarA.b.add(nbVar);
                    }
                }
            }
        }
        return true;
    }
}
