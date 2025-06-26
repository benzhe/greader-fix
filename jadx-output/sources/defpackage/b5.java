package defpackage;

import android.util.Log;
import android.view.View;
import androidx.constraintlayout.motion.widget.MotionLayout;
import java.lang.reflect.Array;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;

/* loaded from: classes.dex */
public abstract class b5 {
    public d a;
    public y6 b;
    public String c;
    public int d = 0;
    public int e = 0;
    public ArrayList<p> f = new ArrayList<>();

    public class a implements Comparator<p> {
        public a(b5 b5Var) {
        }

        @Override // java.util.Comparator
        public int compare(p pVar, p pVar2) {
            return Integer.compare(pVar.a, pVar2.a);
        }
    }

    public static class b extends b5 {
        @Override // defpackage.b5
        public void c(View view, float f) {
            view.setAlpha(a(f));
        }
    }

    public static class c extends b5 {
        public float[] g = new float[1];

        @Override // defpackage.b5
        public void c(View view, float f) {
            this.g[0] = a(f);
            this.b.g(view, this.g);
        }
    }

    public static class d {
        public t4 a = new t4();
        public float[] b;
        public double[] c;
        public float[] d;
        public float[] e;
        public p4 f;
        public double[] g;
        public double[] h;

        public d(int i, int i2, int i3) {
            new HashMap();
            this.a.d = i;
            this.b = new float[i3];
            this.c = new double[i3];
            this.d = new float[i3];
            this.e = new float[i3];
            float[] fArr = new float[i3];
        }
    }

    public static class e extends b5 {
        @Override // defpackage.b5
        public void c(View view, float f) {
            view.setElevation(a(f));
        }
    }

    public static class f extends b5 {
        @Override // defpackage.b5
        public void c(View view, float f) {
        }
    }

    public static class g extends b5 {
        public boolean g = false;

        @Override // defpackage.b5
        public void c(View view, float f) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
            if (view instanceof MotionLayout) {
                ((MotionLayout) view).setProgress(a(f));
                return;
            }
            if (this.g) {
                return;
            }
            Method method = null;
            try {
                method = view.getClass().getMethod("setProgress", Float.TYPE);
            } catch (NoSuchMethodException unused) {
                this.g = true;
            }
            if (method != null) {
                try {
                    method.invoke(view, Float.valueOf(a(f)));
                } catch (IllegalAccessException e) {
                    Log.e("KeyCycleOscillator", "unable to setProgress", e);
                } catch (InvocationTargetException e2) {
                    Log.e("KeyCycleOscillator", "unable to setProgress", e2);
                }
            }
        }
    }

    public static class h extends b5 {
        @Override // defpackage.b5
        public void c(View view, float f) {
            view.setRotation(a(f));
        }
    }

    public static class i extends b5 {
        @Override // defpackage.b5
        public void c(View view, float f) {
            view.setRotationX(a(f));
        }
    }

    public static class j extends b5 {
        @Override // defpackage.b5
        public void c(View view, float f) {
            view.setRotationY(a(f));
        }
    }

    public static class k extends b5 {
        @Override // defpackage.b5
        public void c(View view, float f) {
            view.setScaleX(a(f));
        }
    }

    public static class l extends b5 {
        @Override // defpackage.b5
        public void c(View view, float f) {
            view.setScaleY(a(f));
        }
    }

    public static class m extends b5 {
        @Override // defpackage.b5
        public void c(View view, float f) {
            view.setTranslationX(a(f));
        }
    }

    public static class n extends b5 {
        @Override // defpackage.b5
        public void c(View view, float f) {
            view.setTranslationY(a(f));
        }
    }

    public static class o extends b5 {
        @Override // defpackage.b5
        public void c(View view, float f) {
            view.setTranslationZ(a(f));
        }
    }

    public static class p {
        public int a;
        public float b;
        public float c;
        public float d;

        public p(int i, float f, float f2, float f3) {
            this.a = i;
            this.b = f3;
            this.c = f2;
            this.d = f;
        }
    }

    public float a(float f2) {
        d dVar = this.a;
        p4 p4Var = dVar.f;
        if (p4Var != null) {
            p4Var.c(f2, dVar.g);
        } else {
            double[] dArr = dVar.g;
            dArr[0] = dVar.e[0];
            dArr[1] = dVar.b[0];
        }
        return (float) ((dVar.a.d(f2) * dVar.g[1]) + dVar.g[0]);
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:7:0x0036. Please report as an issue. */
    public float b(float f2) {
        double dB;
        double dSignum;
        double dB2;
        d dVar = this.a;
        p4 p4Var = dVar.f;
        double d2 = 0.0d;
        if (p4Var != null) {
            double d3 = f2;
            p4Var.f(d3, dVar.h);
            dVar.f.c(d3, dVar.g);
        } else {
            double[] dArr = dVar.h;
            dArr[0] = 0.0d;
            dArr[1] = 0.0d;
        }
        double d4 = f2;
        double d5 = dVar.a.d(d4);
        t4 t4Var = dVar.a;
        double dB3 = 2.0d;
        switch (t4Var.d) {
            case 1:
                break;
            case 2:
                dB = t4Var.b(d4) * 4.0d;
                dSignum = Math.signum((((t4Var.c(d4) * 4.0d) + 3.0d) % 4.0d) - 2.0d);
                d2 = dB * dSignum;
                break;
            case 3:
                dB2 = t4Var.b(d4);
                d2 = dB2 * dB3;
                break;
            case 4:
                dB2 = -t4Var.b(d4);
                d2 = dB2 * dB3;
                break;
            case 5:
                dB3 = t4Var.b(d4) * (-6.283185307179586d);
                dB2 = Math.sin(t4Var.c(d4) * 6.283185307179586d);
                d2 = dB2 * dB3;
                break;
            case 6:
                dB = t4Var.b(d4) * 4.0d;
                dSignum = (((t4Var.c(d4) * 4.0d) + 2.0d) % 4.0d) - 2.0d;
                d2 = dB * dSignum;
                break;
            default:
                dB = t4Var.b(d4) * 6.283185307179586d;
                dSignum = Math.cos(t4Var.c(d4) * 6.283185307179586d);
                d2 = dB * dSignum;
                break;
        }
        double[] dArr2 = dVar.h;
        return (float) ((d2 * dVar.g[1]) + (d5 * dArr2[1]) + dArr2[0]);
    }

    public abstract void c(View view, float f2);

    public void d(float f2) {
        int i2;
        int size = this.f.size();
        if (size == 0) {
            return;
        }
        Collections.sort(this.f, new a(this));
        double[] dArr = new double[size];
        char c2 = 1;
        char c3 = 0;
        double[][] dArr2 = (double[][]) Array.newInstance((Class<?>) double.class, size, 2);
        this.a = new d(this.d, this.e, size);
        Iterator<p> it = this.f.iterator();
        int i3 = 0;
        while (it.hasNext()) {
            p next = it.next();
            float f3 = next.d;
            dArr[i3] = f3 * 0.01d;
            double[] dArr3 = dArr2[i3];
            float f4 = next.b;
            dArr3[c3] = f4;
            double[] dArr4 = dArr2[i3];
            float f5 = next.c;
            dArr4[c2] = f5;
            d dVar = this.a;
            dVar.c[i3] = next.a / 100.0d;
            dVar.d[i3] = f3;
            dVar.e[i3] = f5;
            dVar.b[i3] = f4;
            i3++;
            c2 = 1;
            c3 = 0;
        }
        d dVar2 = this.a;
        double[][] dArr5 = (double[][]) Array.newInstance((Class<?>) double.class, dVar2.c.length, 2);
        float[] fArr = dVar2.b;
        dVar2.g = new double[fArr.length + 1];
        dVar2.h = new double[fArr.length + 1];
        if (dVar2.c[0] > 0.0d) {
            dVar2.a.a(0.0d, dVar2.d[0]);
        }
        double[] dArr6 = dVar2.c;
        int length = dArr6.length - 1;
        if (dArr6[length] < 1.0d) {
            dVar2.a.a(1.0d, dVar2.d[length]);
        }
        for (int i4 = 0; i4 < dArr5.length; i4++) {
            dArr5[i4][0] = dVar2.e[i4];
            int i5 = 0;
            while (true) {
                if (i5 < dVar2.b.length) {
                    dArr5[i5][1] = r7[i5];
                    i5++;
                }
            }
            dVar2.a.a(dVar2.c[i4], dVar2.d[i4]);
        }
        t4 t4Var = dVar2.a;
        double d2 = 0.0d;
        int i6 = 0;
        while (true) {
            if (i6 >= t4Var.a.length) {
                break;
            }
            d2 += r11[i6];
            i6++;
        }
        double d3 = 0.0d;
        int i7 = 1;
        while (true) {
            float[] fArr2 = t4Var.a;
            if (i7 >= fArr2.length) {
                break;
            }
            int i8 = i7 - 1;
            float f6 = (fArr2[i8] + fArr2[i7]) / 2.0f;
            double[] dArr7 = t4Var.b;
            d3 = ((dArr7[i7] - dArr7[i8]) * f6) + d3;
            i7++;
        }
        int i9 = 0;
        while (true) {
            float[] fArr3 = t4Var.a;
            if (i9 >= fArr3.length) {
                break;
            }
            fArr3[i9] = (float) (fArr3[i9] * (d2 / d3));
            i9++;
        }
        t4Var.c[0] = 0.0d;
        int i10 = 1;
        while (true) {
            float[] fArr4 = t4Var.a;
            if (i10 >= fArr4.length) {
                break;
            }
            int i11 = i10 - 1;
            float f7 = (fArr4[i11] + fArr4[i10]) / 2.0f;
            double[] dArr8 = t4Var.b;
            double d4 = dArr8[i10] - dArr8[i11];
            double[] dArr9 = t4Var.c;
            dArr9[i10] = (d4 * f7) + dArr9[i11];
            i10++;
        }
        double[] dArr10 = dVar2.c;
        if (dArr10.length > 1) {
            i2 = 0;
            dVar2.f = p4.a(0, dArr10, dArr5);
        } else {
            i2 = 0;
            dVar2.f = null;
        }
        p4.a(i2, dArr, dArr2);
    }

    public String toString() {
        String string = this.c;
        DecimalFormat decimalFormat = new DecimalFormat("##.##");
        Iterator<p> it = this.f.iterator();
        while (it.hasNext()) {
            p next = it.next();
            StringBuilder sbB = jo.B(string, "[");
            sbB.append(next.a);
            sbB.append(" , ");
            sbB.append(decimalFormat.format(next.b));
            sbB.append("] ");
            string = sbB.toString();
        }
        return string;
    }
}
