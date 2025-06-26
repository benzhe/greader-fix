package defpackage;

import defpackage.s5;
import java.util.Arrays;
import java.util.Comparator;
import org.apache.commons.lang3.StringUtils;

/* loaded from: classes.dex */
public class w5 extends s5 {
    public int f;
    public x5[] g;
    public x5[] h;
    public int i;
    public b j;

    public class a implements Comparator<x5> {
        public a(w5 w5Var) {
        }

        @Override // java.util.Comparator
        public int compare(x5 x5Var, x5 x5Var2) {
            return x5Var.b - x5Var2.b;
        }
    }

    public class b implements Comparable {
        public x5 e;

        public b(w5 w5Var) {
        }

        @Override // java.lang.Comparable
        public int compareTo(Object obj) {
            return this.e.b - ((x5) obj).b;
        }

        public String toString() {
            String string = "[ ";
            if (this.e != null) {
                for (int i = 0; i < 9; i++) {
                    StringBuilder sbZ = jo.z(string);
                    sbZ.append(this.e.h[i]);
                    sbZ.append(StringUtils.SPACE);
                    string = sbZ.toString();
                }
            }
            StringBuilder sbB = jo.B(string, "] ");
            sbB.append(this.e);
            return sbB.toString();
        }
    }

    public w5(t5 t5Var) {
        super(t5Var);
        this.f = 128;
        this.g = new x5[128];
        this.h = new x5[128];
        this.i = 0;
        this.j = new b(this);
    }

    @Override // defpackage.s5, u5.a
    public void a(x5 x5Var) {
        this.j.e = x5Var;
        Arrays.fill(x5Var.h, 0.0f);
        x5Var.h[x5Var.d] = 1.0f;
        m(x5Var);
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x0056, code lost:
    
        r6 = false;
     */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0059  */
    @Override // defpackage.s5, u5.a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public defpackage.x5 b(defpackage.u5 r11, boolean[] r12) {
        /*
            r10 = this;
            r11 = 0
            r0 = -1
            r1 = 0
            r2 = -1
        L4:
            int r3 = r10.i
            if (r1 >= r3) goto L5d
            x5[] r3 = r10.g
            r4 = r3[r1]
            int r5 = r4.b
            boolean r5 = r12[r5]
            if (r5 == 0) goto L13
            goto L5a
        L13:
            w5$b r5 = r10.j
            r5.e = r4
            r4 = 8
            r6 = 1
            if (r2 != r0) goto L39
            java.util.Objects.requireNonNull(r5)
        L1f:
            if (r4 < 0) goto L35
            x5 r3 = r5.e
            float[] r3 = r3.h
            r3 = r3[r4]
            r7 = 0
            int r8 = (r3 > r7 ? 1 : (r3 == r7 ? 0 : -1))
            if (r8 <= 0) goto L2d
            goto L35
        L2d:
            int r3 = (r3 > r7 ? 1 : (r3 == r7 ? 0 : -1))
            if (r3 >= 0) goto L32
            goto L36
        L32:
            int r4 = r4 + (-1)
            goto L1f
        L35:
            r6 = 0
        L36:
            if (r6 == 0) goto L5a
            goto L59
        L39:
            r3 = r3[r2]
            java.util.Objects.requireNonNull(r5)
        L3e:
            if (r4 < 0) goto L56
            float[] r7 = r3.h
            r7 = r7[r4]
            x5 r8 = r5.e
            float[] r8 = r8.h
            r8 = r8[r4]
            int r9 = (r8 > r7 ? 1 : (r8 == r7 ? 0 : -1))
            if (r9 != 0) goto L51
            int r4 = r4 + (-1)
            goto L3e
        L51:
            int r3 = (r8 > r7 ? 1 : (r8 == r7 ? 0 : -1))
            if (r3 >= 0) goto L56
            goto L57
        L56:
            r6 = 0
        L57:
            if (r6 == 0) goto L5a
        L59:
            r2 = r1
        L5a:
            int r1 = r1 + 1
            goto L4
        L5d:
            if (r2 != r0) goto L61
            r11 = 0
            return r11
        L61:
            x5[] r11 = r10.g
            r11 = r11[r2]
            return r11
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.w5.b(u5, boolean[]):x5");
    }

    @Override // defpackage.s5, u5.a
    public void clear() {
        this.i = 0;
        this.b = 0.0f;
    }

    @Override // defpackage.s5
    public void l(s5 s5Var, boolean z) {
        x5 x5Var = s5Var.a;
        if (x5Var == null) {
            return;
        }
        s5.a aVar = s5Var.d;
        int iA = aVar.a();
        for (int i = 0; i < iA; i++) {
            x5 x5VarB = aVar.b(i);
            float fD = aVar.d(i);
            b bVar = this.j;
            bVar.e = x5VarB;
            boolean z2 = true;
            if (x5VarB.a) {
                for (int i2 = 0; i2 < 9; i2++) {
                    float[] fArr = bVar.e.h;
                    fArr[i2] = (x5Var.h[i2] * fD) + fArr[i2];
                    if (Math.abs(fArr[i2]) < 1.0E-4f) {
                        bVar.e.h[i2] = 0.0f;
                    } else {
                        z2 = false;
                    }
                }
                if (z2) {
                    w5.this.n(bVar.e);
                }
                z2 = false;
            } else {
                for (int i3 = 0; i3 < 9; i3++) {
                    float f = x5Var.h[i3];
                    if (f != 0.0f) {
                        float f2 = f * fD;
                        if (Math.abs(f2) < 1.0E-4f) {
                            f2 = 0.0f;
                        }
                        bVar.e.h[i3] = f2;
                    } else {
                        bVar.e.h[i3] = 0.0f;
                    }
                }
            }
            if (z2) {
                m(x5VarB);
            }
            this.b = (s5Var.b * fD) + this.b;
        }
        n(x5Var);
    }

    public final void m(x5 x5Var) {
        int i;
        int i2 = this.i + 1;
        x5[] x5VarArr = this.g;
        if (i2 > x5VarArr.length) {
            x5[] x5VarArr2 = (x5[]) Arrays.copyOf(x5VarArr, x5VarArr.length * 2);
            this.g = x5VarArr2;
            this.h = (x5[]) Arrays.copyOf(x5VarArr2, x5VarArr2.length * 2);
        }
        x5[] x5VarArr3 = this.g;
        int i3 = this.i;
        x5VarArr3[i3] = x5Var;
        int i4 = i3 + 1;
        this.i = i4;
        if (i4 > 1 && x5VarArr3[i4 - 1].b > x5Var.b) {
            int i5 = 0;
            while (true) {
                i = this.i;
                if (i5 >= i) {
                    break;
                }
                this.h[i5] = this.g[i5];
                i5++;
            }
            Arrays.sort(this.h, 0, i, new a(this));
            for (int i6 = 0; i6 < this.i; i6++) {
                this.g[i6] = this.h[i6];
            }
        }
        x5Var.a = true;
        x5Var.a(this);
    }

    public final void n(x5 x5Var) {
        int i = 0;
        while (i < this.i) {
            if (this.g[i] == x5Var) {
                while (true) {
                    int i2 = this.i;
                    if (i >= i2 - 1) {
                        this.i = i2 - 1;
                        x5Var.a = false;
                        return;
                    } else {
                        x5[] x5VarArr = this.g;
                        int i3 = i + 1;
                        x5VarArr[i] = x5VarArr[i3];
                        i = i3;
                    }
                }
            } else {
                i++;
            }
        }
    }

    @Override // defpackage.s5
    public String toString() {
        StringBuilder sbB = jo.B("", " goal -> (");
        sbB.append(this.b);
        sbB.append(") : ");
        String string = sbB.toString();
        for (int i = 0; i < this.i; i++) {
            this.j.e = this.g[i];
            StringBuilder sbZ = jo.z(string);
            sbZ.append(this.j);
            sbZ.append(StringUtils.SPACE);
            string = sbZ.toString();
        }
        return string;
    }
}
