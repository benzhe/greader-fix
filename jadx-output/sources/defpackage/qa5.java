package defpackage;

import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.RectF;
import defpackage.la5;
import defpackage.sa5;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.Objects;

/* loaded from: classes.dex */
public class qa5 {
    public final sa5[] a = new sa5[4];
    public final Matrix[] b = new Matrix[4];
    public final Matrix[] c = new Matrix[4];
    public final PointF d = new PointF();
    public final Path e = new Path();
    public final Path f = new Path();
    public final sa5 g = new sa5();
    public final float[] h = new float[2];
    public final float[] i = new float[2];
    public final Path j = new Path();
    public final Path k = new Path();
    public boolean l = true;

    public static class a {
        public static final qa5 a = new qa5();
    }

    public interface b {
    }

    public qa5() {
        for (int i = 0; i < 4; i++) {
            this.a[i] = new sa5();
            this.b[i] = new Matrix();
            this.c[i] = new Matrix();
        }
    }

    public void a(pa5 pa5Var, float f, RectF rectF, Path path) {
        b(pa5Var, f, rectF, null, path);
    }

    public void b(pa5 pa5Var, float f, RectF rectF, b bVar, Path path) {
        path.rewind();
        this.e.rewind();
        this.f.rewind();
        this.f.addRect(rectF, Path.Direction.CW);
        int i = 0;
        while (i < 4) {
            ga5 ga5Var = i != 1 ? i != 2 ? i != 3 ? pa5Var.f : pa5Var.e : pa5Var.h : pa5Var.g;
            ha5 ha5Var = i != 1 ? i != 2 ? i != 3 ? pa5Var.b : pa5Var.a : pa5Var.d : pa5Var.c;
            sa5 sa5Var = this.a[i];
            Objects.requireNonNull(ha5Var);
            ha5Var.a(sa5Var, 90.0f, f, ga5Var.a(rectF));
            int i2 = i + 1;
            float f2 = i2 * 90;
            this.b[i].reset();
            PointF pointF = this.d;
            if (i == 1) {
                pointF.set(rectF.right, rectF.bottom);
            } else if (i == 2) {
                pointF.set(rectF.left, rectF.bottom);
            } else if (i != 3) {
                pointF.set(rectF.right, rectF.top);
            } else {
                pointF.set(rectF.left, rectF.top);
            }
            Matrix matrix = this.b[i];
            PointF pointF2 = this.d;
            matrix.setTranslate(pointF2.x, pointF2.y);
            this.b[i].preRotate(f2);
            float[] fArr = this.h;
            sa5[] sa5VarArr = this.a;
            fArr[0] = sa5VarArr[i].c;
            fArr[1] = sa5VarArr[i].d;
            this.b[i].mapPoints(fArr);
            this.c[i].reset();
            Matrix matrix2 = this.c[i];
            float[] fArr2 = this.h;
            matrix2.setTranslate(fArr2[0], fArr2[1]);
            this.c[i].preRotate(f2);
            i = i2;
        }
        int i3 = 0;
        while (i3 < 4) {
            float[] fArr3 = this.h;
            sa5[] sa5VarArr2 = this.a;
            fArr3[0] = sa5VarArr2[i3].a;
            fArr3[1] = sa5VarArr2[i3].b;
            this.b[i3].mapPoints(fArr3);
            if (i3 == 0) {
                float[] fArr4 = this.h;
                path.moveTo(fArr4[0], fArr4[1]);
            } else {
                float[] fArr5 = this.h;
                path.lineTo(fArr5[0], fArr5[1]);
            }
            this.a[i3].c(this.b[i3], path);
            if (bVar != null) {
                sa5 sa5Var2 = this.a[i3];
                Matrix matrix3 = this.b[i3];
                la5.a aVar = (la5.a) bVar;
                BitSet bitSet = la5.this.h;
                Objects.requireNonNull(sa5Var2);
                bitSet.set(i3, false);
                sa5.f[] fVarArr = la5.this.f;
                sa5Var2.b(sa5Var2.f);
                fVarArr[i3] = new ra5(sa5Var2, new ArrayList(sa5Var2.h), new Matrix(matrix3));
            }
            int i4 = i3 + 1;
            int i5 = i4 % 4;
            float[] fArr6 = this.h;
            sa5[] sa5VarArr3 = this.a;
            fArr6[0] = sa5VarArr3[i3].c;
            fArr6[1] = sa5VarArr3[i3].d;
            this.b[i3].mapPoints(fArr6);
            float[] fArr7 = this.i;
            sa5[] sa5VarArr4 = this.a;
            fArr7[0] = sa5VarArr4[i5].a;
            fArr7[1] = sa5VarArr4[i5].b;
            this.b[i5].mapPoints(fArr7);
            float f3 = this.h[0];
            float[] fArr8 = this.i;
            float fMax = Math.max(((float) Math.hypot(f3 - fArr8[0], r13[1] - fArr8[1])) - 0.001f, 0.0f);
            float[] fArr9 = this.h;
            sa5[] sa5VarArr5 = this.a;
            fArr9[0] = sa5VarArr5[i3].c;
            fArr9[1] = sa5VarArr5[i3].d;
            this.b[i3].mapPoints(fArr9);
            float fAbs = (i3 == 1 || i3 == 3) ? Math.abs(rectF.centerX() - this.h[0]) : Math.abs(rectF.centerY() - this.h[1]);
            this.g.e(0.0f, 0.0f);
            ja5 ja5Var = i3 != 1 ? i3 != 2 ? i3 != 3 ? pa5Var.j : pa5Var.i : pa5Var.l : pa5Var.k;
            ja5Var.c(fMax, fAbs, f, this.g);
            this.j.reset();
            this.g.c(this.c[i3], this.j);
            if (this.l && (ja5Var.b() || c(this.j, i3) || c(this.j, i5))) {
                Path path2 = this.j;
                path2.op(path2, this.f, Path.Op.DIFFERENCE);
                float[] fArr10 = this.h;
                sa5 sa5Var3 = this.g;
                fArr10[0] = sa5Var3.a;
                fArr10[1] = sa5Var3.b;
                this.c[i3].mapPoints(fArr10);
                Path path3 = this.e;
                float[] fArr11 = this.h;
                path3.moveTo(fArr11[0], fArr11[1]);
                this.g.c(this.c[i3], this.e);
            } else {
                this.g.c(this.c[i3], path);
            }
            if (bVar != null) {
                sa5 sa5Var4 = this.g;
                Matrix matrix4 = this.c[i3];
                la5.a aVar2 = (la5.a) bVar;
                Objects.requireNonNull(sa5Var4);
                la5.this.h.set(i3 + 4, false);
                sa5.f[] fVarArr2 = la5.this.g;
                sa5Var4.b(sa5Var4.f);
                fVarArr2[i3] = new ra5(sa5Var4, new ArrayList(sa5Var4.h), new Matrix(matrix4));
            }
            i3 = i4;
        }
        path.close();
        this.e.close();
        if (this.e.isEmpty()) {
            return;
        }
        path.op(this.e, Path.Op.UNION);
    }

    public final boolean c(Path path, int i) {
        this.k.reset();
        this.a[i].c(this.b[i], this.k);
        RectF rectF = new RectF();
        path.computeBounds(rectF, true);
        this.k.computeBounds(rectF, true);
        path.op(this.k, Path.Op.INTERSECT);
        path.computeBounds(rectF, true);
        if (rectF.isEmpty()) {
            return rectF.width() > 1.0f && rectF.height() > 1.0f;
        }
        return true;
    }
}
