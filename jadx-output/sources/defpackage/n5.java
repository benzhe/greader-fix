package defpackage;

import android.util.Log;
import android.util.SparseArray;
import android.view.View;
import androidx.constraintlayout.motion.widget.MotionLayout;
import java.lang.reflect.Array;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.text.DecimalFormat;
import java.util.Arrays;
import java.util.HashMap;

/* loaded from: classes.dex */
public abstract class n5 {
    public p4 a;
    public int e;
    public String f;
    public long i;
    public int b = 0;
    public int[] c = new int[10];
    public float[][] d = (float[][]) Array.newInstance((Class<?>) float.class, 10, 3);
    public float[] g = new float[3];
    public boolean h = false;
    public float j = Float.NaN;

    public static class a extends n5 {
        @Override // defpackage.n5
        public boolean d(View view, float f, long j, z4 z4Var) {
            view.setAlpha(b(f, j, view, z4Var));
            return this.h;
        }
    }

    public static class b extends n5 {
        public SparseArray<y6> k;
        public SparseArray<float[]> l = new SparseArray<>();
        public float[] m;
        public float[] n;

        public b(String str, SparseArray<y6> sparseArray) {
            String str2 = str.split(",")[1];
            this.k = sparseArray;
        }

        @Override // defpackage.n5
        public void c(int i, float f, float f2, int i2, float f3) {
            throw new RuntimeException("don't call for custom attribute call setPoint(pos, ConstraintAttribute,...)");
        }

        @Override // defpackage.n5
        public boolean d(View view, float f, long j, z4 z4Var) {
            this.a.d(f, this.m);
            float[] fArr = this.m;
            float f2 = fArr[fArr.length - 2];
            float f3 = fArr[fArr.length - 1];
            float f4 = (float) (((((j - this.i) * 1.0E-9d) * f2) + this.j) % 1.0d);
            this.j = f4;
            this.i = j;
            float fA = a(f4);
            this.h = false;
            int i = 0;
            while (true) {
                float[] fArr2 = this.n;
                if (i >= fArr2.length) {
                    break;
                }
                boolean z = this.h;
                float[] fArr3 = this.m;
                this.h = z | (((double) fArr3[i]) != 0.0d);
                fArr2[i] = (fArr3[i] * fA) + f3;
                i++;
            }
            this.k.valueAt(0).g(view, this.n);
            if (f2 != 0.0f) {
                this.h = true;
            }
            return this.h;
        }

        @Override // defpackage.n5
        public void e(int i) {
            int size = this.k.size();
            int iD = this.k.valueAt(0).d();
            double[] dArr = new double[size];
            int i2 = iD + 2;
            this.m = new float[i2];
            this.n = new float[iD];
            double[][] dArr2 = (double[][]) Array.newInstance((Class<?>) double.class, size, i2);
            for (int i3 = 0; i3 < size; i3++) {
                int iKeyAt = this.k.keyAt(i3);
                y6 y6VarValueAt = this.k.valueAt(i3);
                float[] fArrValueAt = this.l.valueAt(i3);
                dArr[i3] = iKeyAt * 0.01d;
                y6VarValueAt.c(this.m);
                int i4 = 0;
                while (true) {
                    if (i4 < this.m.length) {
                        dArr2[i3][i4] = r8[i4];
                        i4++;
                    }
                }
                dArr2[i3][iD] = fArrValueAt[0];
                dArr2[i3][iD + 1] = fArrValueAt[1];
            }
            this.a = p4.a(i, dArr, dArr2);
        }
    }

    public static class c extends n5 {
        @Override // defpackage.n5
        public boolean d(View view, float f, long j, z4 z4Var) {
            view.setElevation(b(f, j, view, z4Var));
            return this.h;
        }
    }

    public static class d extends n5 {
        @Override // defpackage.n5
        public boolean d(View view, float f, long j, z4 z4Var) {
            return this.h;
        }
    }

    public static class e extends n5 {
        public boolean k = false;

        @Override // defpackage.n5
        public boolean d(View view, float f, long j, z4 z4Var) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
            if (view instanceof MotionLayout) {
                ((MotionLayout) view).setProgress(b(f, j, view, z4Var));
            } else {
                if (this.k) {
                    return false;
                }
                Method method = null;
                try {
                    method = view.getClass().getMethod("setProgress", Float.TYPE);
                } catch (NoSuchMethodException unused) {
                    this.k = true;
                }
                Method method2 = method;
                if (method2 != null) {
                    try {
                        method2.invoke(view, Float.valueOf(b(f, j, view, z4Var)));
                    } catch (IllegalAccessException e) {
                        Log.e("SplineSet", "unable to setProgress", e);
                    } catch (InvocationTargetException e2) {
                        Log.e("SplineSet", "unable to setProgress", e2);
                    }
                }
            }
            return this.h;
        }
    }

    public static class f extends n5 {
        @Override // defpackage.n5
        public boolean d(View view, float f, long j, z4 z4Var) {
            view.setRotation(b(f, j, view, z4Var));
            return this.h;
        }
    }

    public static class g extends n5 {
        @Override // defpackage.n5
        public boolean d(View view, float f, long j, z4 z4Var) {
            view.setRotationX(b(f, j, view, z4Var));
            return this.h;
        }
    }

    public static class h extends n5 {
        @Override // defpackage.n5
        public boolean d(View view, float f, long j, z4 z4Var) {
            view.setRotationY(b(f, j, view, z4Var));
            return this.h;
        }
    }

    public static class i extends n5 {
        @Override // defpackage.n5
        public boolean d(View view, float f, long j, z4 z4Var) {
            view.setScaleX(b(f, j, view, z4Var));
            return this.h;
        }
    }

    public static class j extends n5 {
        @Override // defpackage.n5
        public boolean d(View view, float f, long j, z4 z4Var) {
            view.setScaleY(b(f, j, view, z4Var));
            return this.h;
        }
    }

    public static class k extends n5 {
        @Override // defpackage.n5
        public boolean d(View view, float f, long j, z4 z4Var) {
            view.setTranslationX(b(f, j, view, z4Var));
            return this.h;
        }
    }

    public static class l extends n5 {
        @Override // defpackage.n5
        public boolean d(View view, float f, long j, z4 z4Var) {
            view.setTranslationY(b(f, j, view, z4Var));
            return this.h;
        }
    }

    public static class m extends n5 {
        @Override // defpackage.n5
        public boolean d(View view, float f, long j, z4 z4Var) {
            view.setTranslationZ(b(f, j, view, z4Var));
            return this.h;
        }
    }

    public float a(float f2) {
        float fAbs;
        switch (this.b) {
            case 1:
                return Math.signum(f2 * 6.2831855f);
            case 2:
                fAbs = Math.abs(f2);
                break;
            case 3:
                return (((f2 * 2.0f) + 1.0f) % 2.0f) - 1.0f;
            case 4:
                fAbs = ((f2 * 2.0f) + 1.0f) % 2.0f;
                break;
            case 5:
                return (float) Math.cos(f2 * 6.2831855f);
            case 6:
                float fAbs2 = 1.0f - Math.abs(((f2 * 4.0f) % 4.0f) - 2.0f);
                fAbs = fAbs2 * fAbs2;
                break;
            default:
                return (float) Math.sin(f2 * 6.2831855f);
        }
        return 1.0f - fAbs;
    }

    public float b(float f2, long j2, View view, z4 z4Var) {
        this.a.d(f2, this.g);
        float[] fArr = this.g;
        boolean z = true;
        float f3 = fArr[1];
        if (f3 == 0.0f) {
            this.h = false;
            return fArr[2];
        }
        if (Float.isNaN(this.j)) {
            String str = this.f;
            float f4 = Float.NaN;
            if (z4Var.a.containsKey(view)) {
                HashMap<String, float[]> map = z4Var.a.get(view);
                if (map.containsKey(str)) {
                    float[] fArr2 = map.get(str);
                    if (fArr2.length > 0) {
                        f4 = fArr2[0];
                    }
                }
            }
            this.j = f4;
            if (Float.isNaN(f4)) {
                this.j = 0.0f;
            }
        }
        float f5 = (float) (((((j2 - this.i) * 1.0E-9d) * f3) + this.j) % 1.0d);
        this.j = f5;
        String str2 = this.f;
        if (z4Var.a.containsKey(view)) {
            HashMap<String, float[]> map2 = z4Var.a.get(view);
            if (map2.containsKey(str2)) {
                float[] fArrCopyOf = map2.get(str2);
                if (fArrCopyOf.length <= 0) {
                    fArrCopyOf = Arrays.copyOf(fArrCopyOf, 1);
                }
                fArrCopyOf[0] = f5;
                map2.put(str2, fArrCopyOf);
            } else {
                map2.put(str2, new float[]{f5});
                z4Var.a.put(view, map2);
            }
        } else {
            HashMap<String, float[]> map3 = new HashMap<>();
            map3.put(str2, new float[]{f5});
            z4Var.a.put(view, map3);
        }
        this.i = j2;
        float f6 = this.g[0];
        float fA = (a(this.j) * f6) + this.g[2];
        if (f6 == 0.0f && f3 == 0.0f) {
            z = false;
        }
        this.h = z;
        return fA;
    }

    public void c(int i2, float f2, float f3, int i3, float f4) {
        int[] iArr = this.c;
        int i4 = this.e;
        iArr[i4] = i2;
        float[][] fArr = this.d;
        fArr[i4][0] = f2;
        fArr[i4][1] = f3;
        fArr[i4][2] = f4;
        this.b = Math.max(this.b, i3);
        this.e++;
    }

    public abstract boolean d(View view, float f2, long j2, z4 z4Var);

    /* JADX WARN: Removed duplicated region for block: B:33:0x00b6  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void e(int r15) {
        /*
            Method dump skipped, instructions count: 237
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.n5.e(int):void");
    }

    public String toString() {
        String string = this.f;
        DecimalFormat decimalFormat = new DecimalFormat("##.##");
        for (int i2 = 0; i2 < this.e; i2++) {
            StringBuilder sbB = jo.B(string, "[");
            sbB.append(this.c[i2]);
            sbB.append(" , ");
            sbB.append(decimalFormat.format(this.d[i2]));
            sbB.append("] ");
            string = sbB.toString();
        }
        return string;
    }
}
