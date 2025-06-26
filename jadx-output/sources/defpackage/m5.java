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

/* loaded from: classes.dex */
public abstract class m5 {
    public p4 a;
    public int[] b = new int[10];
    public float[] c = new float[10];
    public int d;
    public String e;

    public static class a extends m5 {
        @Override // defpackage.m5
        public void c(View view, float f) {
            view.setAlpha((float) this.a.b(f, 0));
        }
    }

    public static class b extends m5 {
        public SparseArray<y6> f;
        public float[] g;

        public b(String str, SparseArray<y6> sparseArray) {
            String str2 = str.split(",")[1];
            this.f = sparseArray;
        }

        @Override // defpackage.m5
        public void b(int i, float f) {
            throw new RuntimeException("don't call for custom attribute call setPoint(pos, ConstraintAttribute)");
        }

        @Override // defpackage.m5
        public void c(View view, float f) {
            this.a.d(f, this.g);
            this.f.valueAt(0).g(view, this.g);
        }

        @Override // defpackage.m5
        public void d(int i) {
            int size = this.f.size();
            int iD = this.f.valueAt(0).d();
            double[] dArr = new double[size];
            this.g = new float[iD];
            double[][] dArr2 = (double[][]) Array.newInstance((Class<?>) double.class, size, iD);
            for (int i2 = 0; i2 < size; i2++) {
                int iKeyAt = this.f.keyAt(i2);
                y6 y6VarValueAt = this.f.valueAt(i2);
                dArr[i2] = iKeyAt * 0.01d;
                y6VarValueAt.c(this.g);
                int i3 = 0;
                while (true) {
                    if (i3 < this.g.length) {
                        dArr2[i2][i3] = r6[i3];
                        i3++;
                    }
                }
            }
            this.a = p4.a(i, dArr, dArr2);
        }
    }

    public static class c extends m5 {
        @Override // defpackage.m5
        public void c(View view, float f) {
            view.setElevation((float) this.a.b(f, 0));
        }
    }

    public static class d extends m5 {
        @Override // defpackage.m5
        public void c(View view, float f) {
        }
    }

    public static class e extends m5 {
        @Override // defpackage.m5
        public void c(View view, float f) {
            view.setPivotX((float) this.a.b(f, 0));
        }
    }

    public static class f extends m5 {
        @Override // defpackage.m5
        public void c(View view, float f) {
            view.setPivotY((float) this.a.b(f, 0));
        }
    }

    public static class g extends m5 {
        public boolean f = false;

        @Override // defpackage.m5
        public void c(View view, float f) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
            if (view instanceof MotionLayout) {
                ((MotionLayout) view).setProgress((float) this.a.b(f, 0));
                return;
            }
            if (this.f) {
                return;
            }
            Method method = null;
            try {
                method = view.getClass().getMethod("setProgress", Float.TYPE);
            } catch (NoSuchMethodException unused) {
                this.f = true;
            }
            if (method != null) {
                try {
                    method.invoke(view, Float.valueOf((float) this.a.b(f, 0)));
                } catch (IllegalAccessException e) {
                    Log.e("SplineSet", "unable to setProgress", e);
                } catch (InvocationTargetException e2) {
                    Log.e("SplineSet", "unable to setProgress", e2);
                }
            }
        }
    }

    public static class h extends m5 {
        @Override // defpackage.m5
        public void c(View view, float f) {
            view.setRotation((float) this.a.b(f, 0));
        }
    }

    public static class i extends m5 {
        @Override // defpackage.m5
        public void c(View view, float f) {
            view.setRotationX((float) this.a.b(f, 0));
        }
    }

    public static class j extends m5 {
        @Override // defpackage.m5
        public void c(View view, float f) {
            view.setRotationY((float) this.a.b(f, 0));
        }
    }

    public static class k extends m5 {
        @Override // defpackage.m5
        public void c(View view, float f) {
            view.setScaleX((float) this.a.b(f, 0));
        }
    }

    public static class l extends m5 {
        @Override // defpackage.m5
        public void c(View view, float f) {
            view.setScaleY((float) this.a.b(f, 0));
        }
    }

    public static class m extends m5 {
        @Override // defpackage.m5
        public void c(View view, float f) {
            view.setTranslationX((float) this.a.b(f, 0));
        }
    }

    public static class n extends m5 {
        @Override // defpackage.m5
        public void c(View view, float f) {
            view.setTranslationY((float) this.a.b(f, 0));
        }
    }

    public static class o extends m5 {
        @Override // defpackage.m5
        public void c(View view, float f) {
            view.setTranslationZ((float) this.a.b(f, 0));
        }
    }

    public float a(float f2) {
        return (float) this.a.b(f2, 0);
    }

    public void b(int i2, float f2) {
        int[] iArr = this.b;
        if (iArr.length < this.d + 1) {
            this.b = Arrays.copyOf(iArr, iArr.length * 2);
            float[] fArr = this.c;
            this.c = Arrays.copyOf(fArr, fArr.length * 2);
        }
        int[] iArr2 = this.b;
        int i3 = this.d;
        iArr2[i3] = i2;
        this.c[i3] = f2;
        this.d = i3 + 1;
    }

    public abstract void c(View view, float f2);

    /* JADX WARN: Removed duplicated region for block: B:30:0x009f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void d(int r15) {
        /*
            Method dump skipped, instructions count: 194
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.m5.d(int):void");
    }

    public String toString() {
        String string = this.e;
        DecimalFormat decimalFormat = new DecimalFormat("##.##");
        for (int i2 = 0; i2 < this.d; i2++) {
            StringBuilder sbB = jo.B(string, "[");
            sbB.append(this.b[i2]);
            sbB.append(" , ");
            sbB.append(decimalFormat.format(this.c[i2]));
            sbB.append("] ");
            string = sbB.toString();
        }
        return string;
    }
}
