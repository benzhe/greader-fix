package defpackage;

import android.util.Log;
import defpackage.a7;
import defpackage.m5;
import defpackage.y6;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Objects;
import org.apache.commons.lang3.CharUtils;

/* loaded from: classes.dex */
public class h5 implements Comparable<h5> {
    public int g;
    public float e = 1.0f;
    public int f = 0;
    public float h = 0.0f;
    public float i = 0.0f;
    public float j = 0.0f;
    public float k = 0.0f;
    public float l = 1.0f;
    public float m = 1.0f;
    public float n = Float.NaN;
    public float o = Float.NaN;
    public float p = 0.0f;
    public float q = 0.0f;
    public float r = 0.0f;
    public float s = Float.NaN;
    public float t = Float.NaN;
    public LinkedHashMap<String, y6> u = new LinkedHashMap<>();

    @Override // java.lang.Comparable
    public int compareTo(h5 h5Var) {
        Objects.requireNonNull(h5Var);
        return Float.compare(0.0f, 0.0f);
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public void i(HashMap<String, m5> map, int i) {
        for (String str : map.keySet()) {
            m5 m5Var = map.get(str);
            str.hashCode();
            char c = 65535;
            switch (str.hashCode()) {
                case -1249320806:
                    if (str.equals("rotationX")) {
                        c = 0;
                        break;
                    }
                    break;
                case -1249320805:
                    if (str.equals("rotationY")) {
                        c = 1;
                        break;
                    }
                    break;
                case -1225497657:
                    if (str.equals("translationX")) {
                        c = 2;
                        break;
                    }
                    break;
                case -1225497656:
                    if (str.equals("translationY")) {
                        c = 3;
                        break;
                    }
                    break;
                case -1225497655:
                    if (str.equals("translationZ")) {
                        c = 4;
                        break;
                    }
                    break;
                case -1001078227:
                    if (str.equals("progress")) {
                        c = 5;
                        break;
                    }
                    break;
                case -908189618:
                    if (str.equals("scaleX")) {
                        c = 6;
                        break;
                    }
                    break;
                case -908189617:
                    if (str.equals("scaleY")) {
                        c = 7;
                        break;
                    }
                    break;
                case -760884510:
                    if (str.equals("transformPivotX")) {
                        c = '\b';
                        break;
                    }
                    break;
                case -760884509:
                    if (str.equals("transformPivotY")) {
                        c = '\t';
                        break;
                    }
                    break;
                case -40300674:
                    if (str.equals("rotation")) {
                        c = '\n';
                        break;
                    }
                    break;
                case -4379043:
                    if (str.equals("elevation")) {
                        c = 11;
                        break;
                    }
                    break;
                case 37232917:
                    if (str.equals("transitionPathRotate")) {
                        c = '\f';
                        break;
                    }
                    break;
                case 92909918:
                    if (str.equals("alpha")) {
                        c = CharUtils.CR;
                        break;
                    }
                    break;
            }
            switch (c) {
                case 0:
                    m5Var.b(i, Float.isNaN(this.j) ? 0.0f : this.j);
                    break;
                case 1:
                    m5Var.b(i, Float.isNaN(this.k) ? 0.0f : this.k);
                    break;
                case 2:
                    m5Var.b(i, Float.isNaN(this.p) ? 0.0f : this.p);
                    break;
                case 3:
                    m5Var.b(i, Float.isNaN(this.q) ? 0.0f : this.q);
                    break;
                case 4:
                    m5Var.b(i, Float.isNaN(this.r) ? 0.0f : this.r);
                    break;
                case 5:
                    m5Var.b(i, Float.isNaN(this.t) ? 0.0f : this.t);
                    break;
                case 6:
                    m5Var.b(i, Float.isNaN(this.l) ? 1.0f : this.l);
                    break;
                case 7:
                    m5Var.b(i, Float.isNaN(this.m) ? 1.0f : this.m);
                    break;
                case '\b':
                    m5Var.b(i, Float.isNaN(this.n) ? 0.0f : this.n);
                    break;
                case '\t':
                    m5Var.b(i, Float.isNaN(this.o) ? 0.0f : this.o);
                    break;
                case '\n':
                    m5Var.b(i, Float.isNaN(this.i) ? 0.0f : this.i);
                    break;
                case 11:
                    m5Var.b(i, Float.isNaN(this.h) ? 0.0f : this.h);
                    break;
                case '\f':
                    m5Var.b(i, Float.isNaN(this.s) ? 0.0f : this.s);
                    break;
                case '\r':
                    m5Var.b(i, Float.isNaN(this.e) ? 1.0f : this.e);
                    break;
                default:
                    if (str.startsWith("CUSTOM")) {
                        String str2 = str.split(",")[1];
                        if (this.u.containsKey(str2)) {
                            y6 y6Var = this.u.get(str2);
                            if (m5Var instanceof m5.b) {
                                ((m5.b) m5Var).f.append(i, y6Var);
                                break;
                            } else {
                                Log.e("MotionPaths", str + " splineSet not a CustomSet frame = " + i + ", value" + y6Var.b() + m5Var);
                                break;
                            }
                        } else {
                            Log.e("MotionPaths", "UNKNOWN customName " + str2);
                            break;
                        }
                    } else {
                        Log.e("MotionPaths", "UNKNOWN spline " + str);
                        break;
                    }
            }
        }
    }

    public final boolean k(float f, float f2) {
        return (Float.isNaN(f) || Float.isNaN(f2)) ? Float.isNaN(f) != Float.isNaN(f2) : Math.abs(f - f2) > 1.0E-6f;
    }

    public void l(c6 c6Var, a7 a7Var, int i) {
        c6Var.u();
        c6Var.v();
        a7.a aVarG = a7Var.g(i);
        a7.d dVar = aVarG.b;
        int i2 = dVar.c;
        this.f = i2;
        int i3 = dVar.b;
        this.g = i3;
        this.e = (i3 == 0 || i2 != 0) ? dVar.d : 0.0f;
        a7.e eVar = aVarG.e;
        boolean z = eVar.l;
        this.h = eVar.m;
        this.i = eVar.b;
        this.j = eVar.c;
        this.k = eVar.d;
        this.l = eVar.e;
        this.m = eVar.f;
        this.n = eVar.g;
        this.o = eVar.h;
        this.p = eVar.i;
        this.q = eVar.j;
        this.r = eVar.k;
        q4.c(aVarG.c.c);
        this.s = aVarG.c.g;
        this.t = aVarG.b.e;
        for (String str : aVarG.f.keySet()) {
            y6 y6Var = aVarG.f.get(str);
            if (y6Var.b != y6.a.STRING_TYPE) {
                this.u.put(str, y6Var);
            }
        }
    }
}
