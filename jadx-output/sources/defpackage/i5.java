package defpackage;

import android.util.Log;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import defpackage.b5;
import defpackage.m5;
import defpackage.n5;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Objects;
import org.apache.commons.lang3.CharUtils;

/* loaded from: classes.dex */
public class i5 {
    public View a;
    public int b;
    public p4[] h;
    public p4 i;
    public int[] m;
    public double[] n;
    public double[] o;
    public String[] p;
    public int[] q;
    public HashMap<String, n5> w;
    public HashMap<String, m5> x;
    public HashMap<String, b5> y;
    public g5[] z;
    public int c = -1;
    public k5 d = new k5();
    public k5 e = new k5();
    public h5 f = new h5();
    public h5 g = new h5();
    public float j = Float.NaN;
    public float k = 0.0f;
    public float l = 1.0f;
    public int r = 4;
    public float[] s = new float[4];
    public ArrayList<k5> t = new ArrayList<>();
    public float[] u = new float[1];
    public ArrayList<x4> v = new ArrayList<>();
    public int A = -1;

    public i5(View view) {
        this.a = view;
        this.b = view.getId();
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams instanceof ConstraintLayout.a) {
            String str = ((ConstraintLayout.a) layoutParams).U;
        }
    }

    public final float a(float f, float[] fArr) {
        float f2 = 0.0f;
        if (fArr != null) {
            fArr[0] = 1.0f;
        } else {
            float f3 = this.l;
            if (f3 != 1.0d) {
                float f4 = this.k;
                if (f < f4) {
                    f = 0.0f;
                }
                if (f > f4 && f < 1.0d) {
                    f = (f - f4) * f3;
                }
            }
        }
        q4 q4Var = this.d.e;
        float f5 = Float.NaN;
        Iterator<k5> it = this.t.iterator();
        while (it.hasNext()) {
            k5 next = it.next();
            q4 q4Var2 = next.e;
            if (q4Var2 != null) {
                float f6 = next.g;
                if (f6 < f) {
                    q4Var = q4Var2;
                    f2 = f6;
                } else if (Float.isNaN(f5)) {
                    f5 = next.g;
                }
            }
        }
        if (q4Var != null) {
            float f7 = (Float.isNaN(f5) ? 1.0f : f5) - f2;
            double d = (f - f2) / f7;
            f = (((float) q4Var.a(d)) * f7) + f2;
            if (fArr != null) {
                fArr[0] = (float) q4Var.b(d);
            }
        }
        return f;
    }

    public void b(float f, float f2, float f3, float[] fArr) {
        double[] dArr;
        float fA = a(f, this.u);
        p4[] p4VarArr = this.h;
        int i = 0;
        if (p4VarArr == null) {
            k5 k5Var = this.e;
            float f4 = k5Var.i;
            k5 k5Var2 = this.d;
            float f5 = f4 - k5Var2.i;
            float f6 = k5Var.j - k5Var2.j;
            float f7 = k5Var.k - k5Var2.k;
            float f8 = (k5Var.l - k5Var2.l) + f6;
            fArr[0] = ((f7 + f5) * f2) + ((1.0f - f2) * f5);
            fArr[1] = (f8 * f3) + ((1.0f - f3) * f6);
            return;
        }
        double d = fA;
        p4VarArr[0].f(d, this.o);
        this.h[0].c(d, this.n);
        float f9 = this.u[0];
        while (true) {
            dArr = this.o;
            if (i >= dArr.length) {
                break;
            }
            dArr[i] = dArr[i] * f9;
            i++;
        }
        p4 p4Var = this.i;
        if (p4Var == null) {
            this.d.w(f2, f3, fArr, this.m, dArr, this.n);
            return;
        }
        double[] dArr2 = this.n;
        if (dArr2.length > 0) {
            p4Var.c(d, dArr2);
            this.i.f(d, this.o);
            this.d.w(f2, f3, fArr, this.m, this.o, this.n);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:151:0x0307  */
    /* JADX WARN: Removed duplicated region for block: B:156:0x031e  */
    /* JADX WARN: Removed duplicated region for block: B:162:0x0334  */
    /* JADX WARN: Removed duplicated region for block: B:167:0x034c  */
    /* JADX WARN: Removed duplicated region for block: B:252:0x0432 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean c(android.view.View r24, float r25, long r26, defpackage.z4 r28) {
        /*
            Method dump skipped, instructions count: 1447
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.i5.c(android.view.View, float, long, z4):boolean");
    }

    public final void d(k5 k5Var) {
        k5Var.t((int) this.a.getX(), (int) this.a.getY(), this.a.getWidth(), this.a.getHeight());
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public void e(int i, int i2, long j) {
        String str;
        String str2;
        String str3;
        String str4;
        ArrayList arrayList;
        Object obj;
        String str5;
        String str6;
        String str7;
        String str8;
        HashSet<String> hashSet;
        HashSet<String> hashSet2;
        Object obj2;
        Object obj3;
        i5 i5Var;
        Object obj4;
        Object obj5;
        Object obj6;
        Object obj7;
        Object obj8;
        String str9;
        String str10;
        String str11;
        String str12;
        String str13;
        String str14;
        String str15;
        Object obj9;
        char c;
        b5 iVar;
        Iterator<String> it;
        b5 cVar;
        String str16;
        String str17;
        String str18;
        String str19;
        String str20;
        double dA;
        String str21;
        String str22;
        String str23;
        double[][] dArr;
        int[] iArr;
        float[] fArr;
        Object obj10;
        HashSet<String> hashSet3;
        Object obj11;
        Object obj12;
        Object obj13;
        char c2;
        Object obj14;
        Object obj15;
        Iterator<String> it2;
        HashMap<String, Integer> map;
        Object obj16;
        Object obj17;
        char c3;
        n5 gVar;
        Object obj18;
        y6 y6Var;
        Iterator<String> it3;
        Object obj19;
        String str24;
        String str25;
        String str26;
        String str27;
        HashSet<String> hashSet4;
        HashSet<String> hashSet5;
        Object obj20;
        Object obj21;
        char c4;
        m5 iVar2;
        Object obj22;
        m5 m5Var;
        y6 y6Var2;
        String str28;
        String str29;
        String str30;
        i5 i5Var2 = this;
        new HashSet();
        HashSet<String> hashSet6 = new HashSet<>();
        HashSet<String> hashSet7 = new HashSet<>();
        HashSet<String> hashSet8 = new HashSet<>();
        HashMap<String, Integer> map2 = new HashMap<>();
        int i3 = i5Var2.A;
        if (i3 != -1) {
            i5Var2.d.n = i3;
        }
        h5 h5Var = i5Var2.f;
        h5 h5Var2 = i5Var2.g;
        String str31 = "alpha";
        if (h5Var.k(h5Var.e, h5Var2.e)) {
            hashSet7.add("alpha");
        }
        String str32 = "elevation";
        if (h5Var.k(h5Var.h, h5Var2.h)) {
            hashSet7.add("elevation");
        }
        int i4 = h5Var.g;
        int i5 = h5Var2.g;
        if (i4 != i5 && h5Var.f == 0 && (i4 == 0 || i5 == 0)) {
            hashSet7.add("alpha");
        }
        String str33 = "rotation";
        if (h5Var.k(h5Var.i, h5Var2.i)) {
            hashSet7.add("rotation");
        }
        String str34 = "transitionPathRotate";
        if (!Float.isNaN(h5Var.s) || !Float.isNaN(h5Var2.s)) {
            hashSet7.add("transitionPathRotate");
        }
        String str35 = "progress";
        if (!Float.isNaN(h5Var.t) || !Float.isNaN(h5Var2.t)) {
            hashSet7.add("progress");
        }
        if (h5Var.k(h5Var.j, h5Var2.j)) {
            hashSet7.add("rotationX");
        }
        if (h5Var.k(h5Var.k, h5Var2.k)) {
            hashSet7.add("rotationY");
        }
        if (h5Var.k(h5Var.n, h5Var2.n)) {
            hashSet7.add("transformPivotX");
        }
        if (h5Var.k(h5Var.o, h5Var2.o)) {
            hashSet7.add("transformPivotY");
        }
        String str36 = "scaleX";
        if (h5Var.k(h5Var.l, h5Var2.l)) {
            hashSet7.add("scaleX");
        }
        Object obj23 = "rotationX";
        String str37 = "scaleY";
        if (h5Var.k(h5Var.m, h5Var2.m)) {
            hashSet7.add("scaleY");
        }
        Object obj24 = "rotationY";
        if (h5Var.k(h5Var.p, h5Var2.p)) {
            hashSet7.add("translationX");
        }
        Object obj25 = "translationX";
        String str38 = "translationY";
        if (h5Var.k(h5Var.q, h5Var2.q)) {
            hashSet7.add("translationY");
        }
        boolean zK = h5Var.k(h5Var.r, h5Var2.r);
        String str39 = "translationZ";
        if (zK) {
            hashSet7.add("translationZ");
        }
        ArrayList<x4> arrayList2 = i5Var2.v;
        if (arrayList2 != null) {
            Iterator<x4> it4 = arrayList2.iterator();
            arrayList = null;
            while (it4.hasNext()) {
                Iterator<x4> it5 = it4;
                x4 next = it4.next();
                String str40 = str38;
                if (next instanceof d5) {
                    d5 d5Var = (d5) next;
                    str28 = str39;
                    str29 = str35;
                    k5 k5Var = new k5(i, i2, d5Var, i5Var2.d, i5Var2.e);
                    if (Collections.binarySearch(i5Var2.t, k5Var) == 0) {
                        StringBuilder sbZ = jo.z(" KeyPath positon \"");
                        str30 = str36;
                        sbZ.append(k5Var.h);
                        sbZ.append("\" outside of range");
                        Log.e("MotionController", sbZ.toString());
                    } else {
                        str30 = str36;
                    }
                    i5Var2.t.add((-r6) - 1, k5Var);
                    int i6 = d5Var.e;
                    if (i6 != -1) {
                        i5Var2.c = i6;
                    }
                } else {
                    str28 = str39;
                    str29 = str35;
                    str30 = str36;
                    if (next instanceof a5) {
                        next.b(hashSet8);
                    } else if (next instanceof f5) {
                        next.b(hashSet6);
                    } else if (next instanceof g5) {
                        if (arrayList == null) {
                            arrayList = new ArrayList();
                        }
                        arrayList.add((g5) next);
                    } else {
                        next.d(map2);
                        next.b(hashSet7);
                    }
                }
                str38 = str40;
                it4 = it5;
                str36 = str30;
                str39 = str28;
                str35 = str29;
            }
            str = str39;
            str2 = str35;
            str3 = str38;
            str4 = str36;
        } else {
            str = "translationZ";
            str2 = "progress";
            str3 = "translationY";
            str4 = "scaleX";
            arrayList = null;
        }
        if (arrayList != null) {
            i5Var2.z = (g5[]) arrayList.toArray(new g5[0]);
        }
        char c5 = 1;
        if (hashSet7.isEmpty()) {
            obj = obj25;
            str5 = str3;
            str6 = str4;
            str7 = str;
            str8 = str2;
            hashSet = hashSet7;
            hashSet2 = hashSet8;
            obj2 = obj23;
            obj3 = obj24;
        } else {
            i5Var2.x = new HashMap<>();
            Iterator<String> it6 = hashSet7.iterator();
            while (it6.hasNext()) {
                String next2 = it6.next();
                if (next2.startsWith("CUSTOM,")) {
                    SparseArray sparseArray = new SparseArray();
                    String str41 = next2.split(",")[c5];
                    Iterator<x4> it7 = i5Var2.v.iterator();
                    while (it7.hasNext()) {
                        x4 next3 = it7.next();
                        Iterator<String> it8 = it6;
                        HashMap<String, y6> map3 = next3.d;
                        if (map3 != null && (y6Var2 = map3.get(str41)) != null) {
                            sparseArray.append(next3.a, y6Var2);
                        }
                        it6 = it8;
                    }
                    it3 = it6;
                    m5.b bVar = new m5.b(next2, sparseArray);
                    obj19 = obj25;
                    str24 = str3;
                    str26 = str;
                    str27 = str2;
                    hashSet4 = hashSet7;
                    hashSet5 = hashSet8;
                    m5Var = bVar;
                    obj21 = obj24;
                    str25 = str4;
                    obj22 = obj23;
                } else {
                    it3 = it6;
                    switch (next2.hashCode()) {
                        case -1249320806:
                            obj19 = obj25;
                            str24 = str3;
                            str25 = str4;
                            str26 = str;
                            str27 = str2;
                            hashSet4 = hashSet7;
                            hashSet5 = hashSet8;
                            obj20 = obj23;
                            obj21 = obj24;
                            if (next2.equals(obj20)) {
                                c4 = 0;
                                break;
                            } else {
                                c4 = 65535;
                                break;
                            }
                        case -1249320805:
                            obj19 = obj25;
                            str24 = str3;
                            str25 = str4;
                            str26 = str;
                            str27 = str2;
                            hashSet5 = hashSet8;
                            obj21 = obj24;
                            if (next2.equals(obj21)) {
                                hashSet4 = hashSet7;
                                obj20 = obj23;
                                c4 = 1;
                                break;
                            }
                            hashSet4 = hashSet7;
                            obj20 = obj23;
                            c4 = 65535;
                            break;
                        case -1225497657:
                            obj19 = obj25;
                            str24 = str3;
                            str25 = str4;
                            str26 = str;
                            str27 = str2;
                            if (next2.equals(obj19)) {
                                hashSet4 = hashSet7;
                                hashSet5 = hashSet8;
                                obj20 = obj23;
                                obj21 = obj24;
                                c4 = 2;
                                break;
                            }
                            hashSet4 = hashSet7;
                            hashSet5 = hashSet8;
                            obj20 = obj23;
                            obj21 = obj24;
                            c4 = 65535;
                            break;
                        case -1225497656:
                            str24 = str3;
                            str25 = str4;
                            str26 = str;
                            str27 = str2;
                            if (next2.equals(str24)) {
                                hashSet5 = hashSet8;
                                obj21 = obj24;
                                obj19 = obj25;
                                hashSet4 = hashSet7;
                                obj20 = obj23;
                                c4 = 3;
                                break;
                            } else {
                                hashSet5 = hashSet8;
                                obj21 = obj24;
                                obj19 = obj25;
                                hashSet4 = hashSet7;
                                obj20 = obj23;
                                c4 = 65535;
                                break;
                            }
                        case -1225497655:
                            str25 = str4;
                            str26 = str;
                            str27 = str2;
                            if (next2.equals(str26)) {
                                obj19 = obj25;
                                str24 = str3;
                                hashSet4 = hashSet7;
                                hashSet5 = hashSet8;
                                obj20 = obj23;
                                obj21 = obj24;
                                c4 = 4;
                                break;
                            } else {
                                obj19 = obj25;
                                str24 = str3;
                                hashSet4 = hashSet7;
                                hashSet5 = hashSet8;
                                obj20 = obj23;
                                obj21 = obj24;
                                c4 = 65535;
                                break;
                            }
                        case -1001078227:
                            str25 = str4;
                            str27 = str2;
                            if (next2.equals(str27)) {
                                obj19 = obj25;
                                str24 = str3;
                                str26 = str;
                                hashSet4 = hashSet7;
                                hashSet5 = hashSet8;
                                obj20 = obj23;
                                obj21 = obj24;
                                c4 = 5;
                                break;
                            } else {
                                obj19 = obj25;
                                str24 = str3;
                                str26 = str;
                                hashSet4 = hashSet7;
                                hashSet5 = hashSet8;
                                obj20 = obj23;
                                obj21 = obj24;
                                c4 = 65535;
                                break;
                            }
                        case -908189618:
                            str25 = str4;
                            if (next2.equals(str25)) {
                                obj19 = obj25;
                                str24 = str3;
                                str26 = str;
                                str27 = str2;
                                hashSet4 = hashSet7;
                                hashSet5 = hashSet8;
                                obj20 = obj23;
                                obj21 = obj24;
                                c4 = 6;
                                break;
                            } else {
                                obj19 = obj25;
                                str24 = str3;
                                str26 = str;
                                str27 = str2;
                                hashSet4 = hashSet7;
                                hashSet5 = hashSet8;
                                obj20 = obj23;
                                obj21 = obj24;
                                c4 = 65535;
                                break;
                            }
                        case -908189617:
                            if (next2.equals("scaleY")) {
                                obj19 = obj25;
                                str24 = str3;
                                str25 = str4;
                                str26 = str;
                                str27 = str2;
                                hashSet4 = hashSet7;
                                hashSet5 = hashSet8;
                                obj20 = obj23;
                                obj21 = obj24;
                                c4 = 7;
                                break;
                            }
                            obj19 = obj25;
                            str24 = str3;
                            str25 = str4;
                            str26 = str;
                            str27 = str2;
                            hashSet4 = hashSet7;
                            hashSet5 = hashSet8;
                            obj20 = obj23;
                            obj21 = obj24;
                            c4 = 65535;
                            break;
                        case -797520672:
                            if (next2.equals("waveVariesBy")) {
                                obj19 = obj25;
                                str24 = str3;
                                str25 = str4;
                                str26 = str;
                                str27 = str2;
                                hashSet4 = hashSet7;
                                hashSet5 = hashSet8;
                                obj20 = obj23;
                                obj21 = obj24;
                                c4 = '\b';
                                break;
                            }
                            obj19 = obj25;
                            str24 = str3;
                            str25 = str4;
                            str26 = str;
                            str27 = str2;
                            hashSet4 = hashSet7;
                            hashSet5 = hashSet8;
                            obj20 = obj23;
                            obj21 = obj24;
                            c4 = 65535;
                            break;
                        case -760884510:
                            if (next2.equals("transformPivotX")) {
                                obj19 = obj25;
                                str24 = str3;
                                str25 = str4;
                                str26 = str;
                                str27 = str2;
                                hashSet4 = hashSet7;
                                hashSet5 = hashSet8;
                                obj20 = obj23;
                                obj21 = obj24;
                                c4 = '\t';
                                break;
                            }
                            obj19 = obj25;
                            str24 = str3;
                            str25 = str4;
                            str26 = str;
                            str27 = str2;
                            hashSet4 = hashSet7;
                            hashSet5 = hashSet8;
                            obj20 = obj23;
                            obj21 = obj24;
                            c4 = 65535;
                            break;
                        case -760884509:
                            if (next2.equals("transformPivotY")) {
                                obj19 = obj25;
                                str24 = str3;
                                str25 = str4;
                                str26 = str;
                                str27 = str2;
                                hashSet4 = hashSet7;
                                hashSet5 = hashSet8;
                                obj20 = obj23;
                                obj21 = obj24;
                                c4 = '\n';
                                break;
                            }
                            obj19 = obj25;
                            str24 = str3;
                            str25 = str4;
                            str26 = str;
                            str27 = str2;
                            hashSet4 = hashSet7;
                            hashSet5 = hashSet8;
                            obj20 = obj23;
                            obj21 = obj24;
                            c4 = 65535;
                            break;
                        case -40300674:
                            if (next2.equals("rotation")) {
                                obj19 = obj25;
                                str24 = str3;
                                str25 = str4;
                                str26 = str;
                                str27 = str2;
                                hashSet4 = hashSet7;
                                hashSet5 = hashSet8;
                                obj20 = obj23;
                                obj21 = obj24;
                                c4 = 11;
                                break;
                            }
                            obj19 = obj25;
                            str24 = str3;
                            str25 = str4;
                            str26 = str;
                            str27 = str2;
                            hashSet4 = hashSet7;
                            hashSet5 = hashSet8;
                            obj20 = obj23;
                            obj21 = obj24;
                            c4 = 65535;
                            break;
                        case -4379043:
                            if (next2.equals("elevation")) {
                                obj19 = obj25;
                                str24 = str3;
                                str25 = str4;
                                str26 = str;
                                str27 = str2;
                                hashSet4 = hashSet7;
                                hashSet5 = hashSet8;
                                obj20 = obj23;
                                obj21 = obj24;
                                c4 = '\f';
                                break;
                            }
                            obj19 = obj25;
                            str24 = str3;
                            str25 = str4;
                            str26 = str;
                            str27 = str2;
                            hashSet4 = hashSet7;
                            hashSet5 = hashSet8;
                            obj20 = obj23;
                            obj21 = obj24;
                            c4 = 65535;
                            break;
                        case 37232917:
                            if (next2.equals("transitionPathRotate")) {
                                obj19 = obj25;
                                str24 = str3;
                                str25 = str4;
                                str26 = str;
                                str27 = str2;
                                hashSet4 = hashSet7;
                                hashSet5 = hashSet8;
                                obj20 = obj23;
                                obj21 = obj24;
                                c4 = CharUtils.CR;
                                break;
                            }
                            obj19 = obj25;
                            str24 = str3;
                            str25 = str4;
                            str26 = str;
                            str27 = str2;
                            hashSet4 = hashSet7;
                            hashSet5 = hashSet8;
                            obj20 = obj23;
                            obj21 = obj24;
                            c4 = 65535;
                            break;
                        case 92909918:
                            if (next2.equals("alpha")) {
                                obj19 = obj25;
                                str24 = str3;
                                str25 = str4;
                                str26 = str;
                                str27 = str2;
                                hashSet4 = hashSet7;
                                hashSet5 = hashSet8;
                                obj20 = obj23;
                                obj21 = obj24;
                                c4 = 14;
                                break;
                            }
                            obj19 = obj25;
                            str24 = str3;
                            str25 = str4;
                            str26 = str;
                            str27 = str2;
                            hashSet4 = hashSet7;
                            hashSet5 = hashSet8;
                            obj20 = obj23;
                            obj21 = obj24;
                            c4 = 65535;
                            break;
                        case 156108012:
                            if (next2.equals("waveOffset")) {
                                obj19 = obj25;
                                str24 = str3;
                                str25 = str4;
                                str26 = str;
                                str27 = str2;
                                hashSet4 = hashSet7;
                                hashSet5 = hashSet8;
                                obj20 = obj23;
                                obj21 = obj24;
                                c4 = 15;
                                break;
                            }
                            obj19 = obj25;
                            str24 = str3;
                            str25 = str4;
                            str26 = str;
                            str27 = str2;
                            hashSet4 = hashSet7;
                            hashSet5 = hashSet8;
                            obj20 = obj23;
                            obj21 = obj24;
                            c4 = 65535;
                            break;
                        default:
                            obj19 = obj25;
                            str24 = str3;
                            str25 = str4;
                            str26 = str;
                            str27 = str2;
                            hashSet4 = hashSet7;
                            hashSet5 = hashSet8;
                            obj20 = obj23;
                            obj21 = obj24;
                            c4 = 65535;
                            break;
                    }
                    switch (c4) {
                        case 0:
                            iVar2 = new m5.i();
                            break;
                        case 1:
                            iVar2 = new m5.j();
                            break;
                        case 2:
                            iVar2 = new m5.m();
                            break;
                        case 3:
                            iVar2 = new m5.n();
                            break;
                        case 4:
                            iVar2 = new m5.o();
                            break;
                        case 5:
                            iVar2 = new m5.g();
                            break;
                        case 6:
                            iVar2 = new m5.k();
                            break;
                        case 7:
                            iVar2 = new m5.l();
                            break;
                        case '\b':
                            iVar2 = new m5.a();
                            break;
                        case '\t':
                            iVar2 = new m5.e();
                            break;
                        case '\n':
                            iVar2 = new m5.f();
                            break;
                        case 11:
                            iVar2 = new m5.h();
                            break;
                        case '\f':
                            iVar2 = new m5.c();
                            break;
                        case '\r':
                            iVar2 = new m5.d();
                            break;
                        case 14:
                            iVar2 = new m5.a();
                            break;
                        case 15:
                            iVar2 = new m5.a();
                            break;
                        default:
                            iVar2 = null;
                            break;
                    }
                    obj22 = obj20;
                    m5Var = iVar2;
                }
                if (m5Var == null) {
                    str4 = str25;
                    str2 = str27;
                    str = str26;
                    obj23 = obj22;
                    hashSet7 = hashSet4;
                    it6 = it3;
                    obj24 = obj21;
                    obj25 = obj19;
                    hashSet8 = hashSet5;
                    str3 = str24;
                    c5 = 1;
                } else {
                    m5Var.e = next2;
                    Object obj26 = obj21;
                    i5Var2.x.put(next2, m5Var);
                    str4 = str25;
                    str2 = str27;
                    str = str26;
                    hashSet7 = hashSet4;
                    hashSet8 = hashSet5;
                    it6 = it3;
                    str3 = str24;
                    obj25 = obj19;
                    c5 = 1;
                    Object obj27 = obj22;
                    obj24 = obj26;
                    obj23 = obj27;
                }
            }
            obj = obj25;
            str5 = str3;
            str6 = str4;
            str7 = str;
            str8 = str2;
            hashSet = hashSet7;
            hashSet2 = hashSet8;
            Object obj28 = obj24;
            obj2 = obj23;
            obj3 = obj28;
            ArrayList<x4> arrayList3 = i5Var2.v;
            if (arrayList3 != null) {
                Iterator<x4> it9 = arrayList3.iterator();
                while (it9.hasNext()) {
                    x4 next4 = it9.next();
                    if (next4 instanceof y4) {
                        next4.a(i5Var2.x);
                    }
                }
            }
            i5Var2.f.i(i5Var2.x, 0);
            i5Var2.g.i(i5Var2.x, 100);
            for (Iterator<String> it10 = i5Var2.x.keySet().iterator(); it10.hasNext(); it10 = it10) {
                String next5 = it10.next();
                i5Var2.x.get(next5).d(map2.containsKey(next5) ? map2.get(next5).intValue() : 0);
            }
        }
        if (hashSet6.isEmpty()) {
            i5Var = i5Var2;
            obj4 = obj;
            obj5 = obj3;
            obj6 = obj2;
        } else {
            if (i5Var2.w == null) {
                i5Var2.w = new HashMap<>();
            }
            Iterator<String> it11 = hashSet6.iterator();
            while (it11.hasNext()) {
                String next6 = it11.next();
                if (!i5Var2.w.containsKey(next6)) {
                    if (!next6.startsWith("CUSTOM,")) {
                        it2 = it11;
                        map = map2;
                        switch (next6.hashCode()) {
                            case -1249320806:
                                obj16 = obj3;
                                obj17 = obj2;
                                if (next6.equals(obj17)) {
                                    c3 = 0;
                                    break;
                                } else {
                                    c3 = 65535;
                                    break;
                                }
                            case -1249320805:
                                obj16 = obj3;
                                if (next6.equals(obj16)) {
                                    obj17 = obj2;
                                    c3 = 1;
                                    break;
                                }
                                obj17 = obj2;
                                c3 = 65535;
                                break;
                            case -1225497657:
                                if (next6.equals(obj)) {
                                    obj16 = obj3;
                                    obj17 = obj2;
                                    c3 = 2;
                                    break;
                                }
                                obj16 = obj3;
                                obj17 = obj2;
                                c3 = 65535;
                                break;
                            case -1225497656:
                                if (next6.equals(str5)) {
                                    obj16 = obj3;
                                    obj17 = obj2;
                                    c3 = 3;
                                    break;
                                }
                                obj16 = obj3;
                                obj17 = obj2;
                                c3 = 65535;
                                break;
                            case -1225497655:
                                if (next6.equals(str7)) {
                                    obj16 = obj3;
                                    obj17 = obj2;
                                    c3 = 4;
                                    break;
                                }
                                obj16 = obj3;
                                obj17 = obj2;
                                c3 = 65535;
                                break;
                            case -1001078227:
                                if (next6.equals(str8)) {
                                    obj16 = obj3;
                                    obj17 = obj2;
                                    c3 = 5;
                                    break;
                                }
                                obj16 = obj3;
                                obj17 = obj2;
                                c3 = 65535;
                                break;
                            case -908189618:
                                if (next6.equals(str6)) {
                                    obj16 = obj3;
                                    obj17 = obj2;
                                    c3 = 6;
                                    break;
                                }
                                obj16 = obj3;
                                obj17 = obj2;
                                c3 = 65535;
                                break;
                            case -908189617:
                                if (next6.equals("scaleY")) {
                                    obj16 = obj3;
                                    obj17 = obj2;
                                    c3 = 7;
                                    break;
                                }
                                obj16 = obj3;
                                obj17 = obj2;
                                c3 = 65535;
                                break;
                            case -40300674:
                                if (next6.equals("rotation")) {
                                    obj16 = obj3;
                                    obj17 = obj2;
                                    c3 = '\b';
                                    break;
                                }
                                obj16 = obj3;
                                obj17 = obj2;
                                c3 = 65535;
                                break;
                            case -4379043:
                                if (next6.equals("elevation")) {
                                    obj16 = obj3;
                                    obj17 = obj2;
                                    c3 = '\t';
                                    break;
                                }
                                obj16 = obj3;
                                obj17 = obj2;
                                c3 = 65535;
                                break;
                            case 37232917:
                                if (next6.equals("transitionPathRotate")) {
                                    obj16 = obj3;
                                    obj17 = obj2;
                                    c3 = '\n';
                                    break;
                                }
                                obj16 = obj3;
                                obj17 = obj2;
                                c3 = 65535;
                                break;
                            case 92909918:
                                if (next6.equals("alpha")) {
                                    obj16 = obj3;
                                    obj17 = obj2;
                                    c3 = 11;
                                    break;
                                }
                                obj16 = obj3;
                                obj17 = obj2;
                                c3 = 65535;
                                break;
                            default:
                                obj16 = obj3;
                                obj17 = obj2;
                                c3 = 65535;
                                break;
                        }
                        switch (c3) {
                            case 0:
                                gVar = new n5.g();
                                obj18 = obj;
                                gVar.i = j;
                                break;
                            case 1:
                                gVar = new n5.h();
                                obj18 = obj;
                                gVar.i = j;
                                break;
                            case 2:
                                gVar = new n5.k();
                                obj18 = obj;
                                gVar.i = j;
                                break;
                            case 3:
                                gVar = new n5.l();
                                obj18 = obj;
                                gVar.i = j;
                                break;
                            case 4:
                                gVar = new n5.m();
                                obj18 = obj;
                                gVar.i = j;
                                break;
                            case 5:
                                gVar = new n5.e();
                                obj18 = obj;
                                gVar.i = j;
                                break;
                            case 6:
                                gVar = new n5.i();
                                obj18 = obj;
                                gVar.i = j;
                                break;
                            case 7:
                                gVar = new n5.j();
                                obj18 = obj;
                                gVar.i = j;
                                break;
                            case '\b':
                                gVar = new n5.f();
                                obj18 = obj;
                                gVar.i = j;
                                break;
                            case '\t':
                                gVar = new n5.c();
                                obj18 = obj;
                                gVar.i = j;
                                break;
                            case '\n':
                                gVar = new n5.d();
                                obj18 = obj;
                                gVar.i = j;
                                break;
                            case 11:
                                gVar = new n5.a();
                                obj18 = obj;
                                gVar.i = j;
                                break;
                            default:
                                obj18 = obj;
                                gVar = null;
                                break;
                        }
                    } else {
                        SparseArray sparseArray2 = new SparseArray();
                        String str42 = next6.split(",")[1];
                        it2 = it11;
                        Iterator<x4> it12 = i5Var2.v.iterator();
                        while (it12.hasNext()) {
                            Iterator<x4> it13 = it12;
                            x4 next7 = it12.next();
                            HashMap<String, Integer> map4 = map2;
                            HashMap<String, y6> map5 = next7.d;
                            if (map5 != null && (y6Var = map5.get(str42)) != null) {
                                sparseArray2.append(next7.a, y6Var);
                            }
                            map2 = map4;
                            it12 = it13;
                        }
                        map = map2;
                        gVar = new n5.b(next6, sparseArray2);
                        obj16 = obj3;
                        obj17 = obj2;
                        obj18 = obj;
                    }
                    if (gVar != null) {
                        gVar.f = next6;
                        i5Var2.w.put(next6, gVar);
                    }
                    obj2 = obj17;
                    obj = obj18;
                    map2 = map;
                    obj3 = obj16;
                    it11 = it2;
                }
            }
            HashMap<String, Integer> map6 = map2;
            Object obj29 = obj3;
            Object obj30 = obj2;
            Object obj31 = obj;
            ArrayList<x4> arrayList4 = i5Var2.v;
            if (arrayList4 != null) {
                Iterator<x4> it14 = arrayList4.iterator();
                while (it14.hasNext()) {
                    x4 next8 = it14.next();
                    if (next8 instanceof f5) {
                        f5 f5Var = (f5) next8;
                        HashMap<String, n5> map7 = i5Var2.w;
                        Objects.requireNonNull(f5Var);
                        Iterator<String> it15 = map7.keySet().iterator();
                        while (it15.hasNext()) {
                            Iterator<x4> it16 = it14;
                            String next9 = it15.next();
                            n5 n5Var = map7.get(next9);
                            HashMap<String, n5> map8 = map7;
                            if (next9.startsWith("CUSTOM")) {
                                y6 y6Var3 = f5Var.d.get(next9.substring(7));
                                if (y6Var3 != null) {
                                    n5.b bVar2 = (n5.b) n5Var;
                                    Iterator<String> it17 = it15;
                                    int i7 = f5Var.a;
                                    float f = f5Var.s;
                                    Object obj32 = obj30;
                                    int i8 = f5Var.r;
                                    Object obj33 = obj29;
                                    float f2 = f5Var.t;
                                    bVar2.k.append(i7, y6Var3);
                                    bVar2.l.append(i7, new float[]{f, f2});
                                    bVar2.b = Math.max(bVar2.b, i8);
                                    it14 = it16;
                                    it15 = it17;
                                    map7 = map8;
                                    obj30 = obj32;
                                    obj29 = obj33;
                                    f5Var = f5Var;
                                } else {
                                    it14 = it16;
                                    map7 = map8;
                                }
                            } else {
                                Object obj34 = obj29;
                                Object obj35 = obj30;
                                f5 f5Var2 = f5Var;
                                Iterator<String> it18 = it15;
                                switch (next9.hashCode()) {
                                    case -1249320806:
                                        obj11 = obj31;
                                        obj12 = obj35;
                                        obj13 = obj34;
                                        if (next9.equals(obj12)) {
                                            c2 = 0;
                                            break;
                                        } else {
                                            c2 = 65535;
                                            break;
                                        }
                                    case -1249320805:
                                        obj11 = obj31;
                                        obj13 = obj34;
                                        if (next9.equals(obj13)) {
                                            obj12 = obj35;
                                            c2 = 1;
                                            break;
                                        } else {
                                            obj12 = obj35;
                                            c2 = 65535;
                                            break;
                                        }
                                    case -1225497657:
                                        obj11 = obj31;
                                        if (next9.equals(obj11)) {
                                            obj12 = obj35;
                                            obj13 = obj34;
                                            c2 = 2;
                                            break;
                                        }
                                        obj12 = obj35;
                                        obj13 = obj34;
                                        c2 = 65535;
                                        break;
                                    case -1225497656:
                                        if (next9.equals(str5)) {
                                            obj11 = obj31;
                                            obj12 = obj35;
                                            obj13 = obj34;
                                            c2 = 3;
                                            break;
                                        }
                                        obj11 = obj31;
                                        obj12 = obj35;
                                        obj13 = obj34;
                                        c2 = 65535;
                                        break;
                                    case -1225497655:
                                        if (next9.equals(str7)) {
                                            obj11 = obj31;
                                            obj12 = obj35;
                                            obj13 = obj34;
                                            c2 = 4;
                                            break;
                                        }
                                        obj11 = obj31;
                                        obj12 = obj35;
                                        obj13 = obj34;
                                        c2 = 65535;
                                        break;
                                    case -1001078227:
                                        if (next9.equals(str8)) {
                                            obj11 = obj31;
                                            obj12 = obj35;
                                            obj13 = obj34;
                                            c2 = 5;
                                            break;
                                        }
                                        obj11 = obj31;
                                        obj12 = obj35;
                                        obj13 = obj34;
                                        c2 = 65535;
                                        break;
                                    case -908189618:
                                        if (next9.equals(str6)) {
                                            obj11 = obj31;
                                            obj12 = obj35;
                                            obj13 = obj34;
                                            c2 = 6;
                                            break;
                                        }
                                        obj11 = obj31;
                                        obj12 = obj35;
                                        obj13 = obj34;
                                        c2 = 65535;
                                        break;
                                    case -908189617:
                                        if (next9.equals("scaleY")) {
                                            obj11 = obj31;
                                            obj12 = obj35;
                                            obj13 = obj34;
                                            c2 = 7;
                                            break;
                                        }
                                        obj11 = obj31;
                                        obj12 = obj35;
                                        obj13 = obj34;
                                        c2 = 65535;
                                        break;
                                    case -40300674:
                                        if (next9.equals("rotation")) {
                                            obj11 = obj31;
                                            obj12 = obj35;
                                            obj13 = obj34;
                                            c2 = '\b';
                                            break;
                                        }
                                        obj11 = obj31;
                                        obj12 = obj35;
                                        obj13 = obj34;
                                        c2 = 65535;
                                        break;
                                    case -4379043:
                                        if (next9.equals("elevation")) {
                                            obj11 = obj31;
                                            obj12 = obj35;
                                            obj13 = obj34;
                                            c2 = '\t';
                                            break;
                                        }
                                        obj11 = obj31;
                                        obj12 = obj35;
                                        obj13 = obj34;
                                        c2 = 65535;
                                        break;
                                    case 37232917:
                                        if (next9.equals("transitionPathRotate")) {
                                            obj11 = obj31;
                                            obj12 = obj35;
                                            obj13 = obj34;
                                            c2 = '\n';
                                            break;
                                        }
                                        obj11 = obj31;
                                        obj12 = obj35;
                                        obj13 = obj34;
                                        c2 = 65535;
                                        break;
                                    case 92909918:
                                        if (next9.equals("alpha")) {
                                            obj11 = obj31;
                                            obj12 = obj35;
                                            obj13 = obj34;
                                            c2 = 11;
                                            break;
                                        }
                                        obj11 = obj31;
                                        obj12 = obj35;
                                        obj13 = obj34;
                                        c2 = 65535;
                                        break;
                                    default:
                                        obj11 = obj31;
                                        obj12 = obj35;
                                        obj13 = obj34;
                                        c2 = 65535;
                                        break;
                                }
                                switch (c2) {
                                    case 0:
                                        obj14 = obj13;
                                        obj15 = obj12;
                                        f5Var = f5Var2;
                                        if (!Float.isNaN(f5Var.i)) {
                                            n5Var.c(f5Var.a, f5Var.i, f5Var.s, f5Var.r, f5Var.t);
                                            break;
                                        }
                                        break;
                                    case 1:
                                        obj14 = obj13;
                                        obj15 = obj12;
                                        f5Var = f5Var2;
                                        if (!Float.isNaN(f5Var.j)) {
                                            n5Var.c(f5Var.a, f5Var.j, f5Var.s, f5Var.r, f5Var.t);
                                            break;
                                        }
                                        break;
                                    case 2:
                                        obj14 = obj13;
                                        obj15 = obj12;
                                        f5Var = f5Var2;
                                        if (!Float.isNaN(f5Var.n)) {
                                            n5Var.c(f5Var.a, f5Var.n, f5Var.s, f5Var.r, f5Var.t);
                                            break;
                                        }
                                        break;
                                    case 3:
                                        obj14 = obj13;
                                        obj15 = obj12;
                                        f5Var = f5Var2;
                                        if (!Float.isNaN(f5Var.o)) {
                                            n5Var.c(f5Var.a, f5Var.o, f5Var.s, f5Var.r, f5Var.t);
                                            break;
                                        }
                                        break;
                                    case 4:
                                        obj14 = obj13;
                                        obj15 = obj12;
                                        f5Var = f5Var2;
                                        if (!Float.isNaN(f5Var.p)) {
                                            n5Var.c(f5Var.a, f5Var.p, f5Var.s, f5Var.r, f5Var.t);
                                            break;
                                        }
                                        break;
                                    case 5:
                                        obj14 = obj13;
                                        obj15 = obj12;
                                        f5Var = f5Var2;
                                        if (!Float.isNaN(f5Var.q)) {
                                            n5Var.c(f5Var.a, f5Var.q, f5Var.s, f5Var.r, f5Var.t);
                                            break;
                                        }
                                        break;
                                    case 6:
                                        obj14 = obj13;
                                        obj15 = obj12;
                                        f5Var = f5Var2;
                                        if (!Float.isNaN(f5Var.l)) {
                                            n5Var.c(f5Var.a, f5Var.l, f5Var.s, f5Var.r, f5Var.t);
                                            break;
                                        }
                                        break;
                                    case 7:
                                        obj14 = obj13;
                                        obj15 = obj12;
                                        f5Var = f5Var2;
                                        if (!Float.isNaN(f5Var.m)) {
                                            n5Var.c(f5Var.a, f5Var.m, f5Var.s, f5Var.r, f5Var.t);
                                            break;
                                        }
                                        break;
                                    case '\b':
                                        obj14 = obj13;
                                        obj15 = obj12;
                                        f5Var = f5Var2;
                                        if (!Float.isNaN(f5Var.h)) {
                                            n5Var.c(f5Var.a, f5Var.h, f5Var.s, f5Var.r, f5Var.t);
                                            break;
                                        }
                                        break;
                                    case '\t':
                                        obj14 = obj13;
                                        obj15 = obj12;
                                        f5Var = f5Var2;
                                        if (!Float.isNaN(f5Var.g)) {
                                            n5Var.c(f5Var.a, f5Var.g, f5Var.s, f5Var.r, f5Var.t);
                                            break;
                                        }
                                        break;
                                    case '\n':
                                        obj14 = obj13;
                                        obj15 = obj12;
                                        f5Var = f5Var2;
                                        if (!Float.isNaN(f5Var.k)) {
                                            n5Var.c(f5Var.a, f5Var.k, f5Var.s, f5Var.r, f5Var.t);
                                            break;
                                        }
                                        break;
                                    case 11:
                                        f5Var = f5Var2;
                                        if (Float.isNaN(f5Var.f)) {
                                            obj14 = obj13;
                                            obj15 = obj12;
                                            break;
                                        } else {
                                            obj15 = obj12;
                                            obj14 = obj13;
                                            n5Var.c(f5Var.a, f5Var.f, f5Var.s, f5Var.r, f5Var.t);
                                            break;
                                        }
                                    default:
                                        obj14 = obj13;
                                        obj15 = obj12;
                                        f5Var = f5Var2;
                                        Log.e("KeyTimeCycles", "UNKNOWN addValues \"" + next9 + "\"");
                                        break;
                                }
                                it14 = it16;
                                it15 = it18;
                                obj30 = obj15;
                                map7 = map8;
                                obj29 = obj14;
                                obj31 = obj11;
                            }
                        }
                    }
                    it14 = it14;
                    obj30 = obj30;
                    obj29 = obj29;
                    obj31 = obj31;
                    i5Var2 = this;
                }
            }
            obj5 = obj29;
            obj4 = obj31;
            obj6 = obj30;
            i5Var = this;
            for (String str43 : i5Var.w.keySet()) {
                HashMap<String, Integer> map9 = map6;
                i5Var.w.get(str43).e(map9.containsKey(str43) ? map9.get(str43).intValue() : 0);
                map6 = map9;
            }
        }
        int size = i5Var.t.size() + 2;
        k5[] k5VarArr = new k5[size];
        k5VarArr[0] = i5Var.d;
        k5VarArr[size - 1] = i5Var.e;
        if (i5Var.t.size() > 0 && i5Var.c == -1) {
            i5Var.c = 0;
        }
        Iterator<k5> it19 = i5Var.t.iterator();
        int i9 = 1;
        while (it19.hasNext()) {
            k5VarArr[i9] = it19.next();
            i9++;
        }
        HashSet hashSet9 = new HashSet();
        Iterator<String> it20 = i5Var.e.o.keySet().iterator();
        while (it20.hasNext()) {
            String next10 = it20.next();
            Iterator<String> it21 = it20;
            if (i5Var.d.o.containsKey(next10)) {
                StringBuilder sb = new StringBuilder();
                obj10 = obj4;
                sb.append("CUSTOM,");
                sb.append(next10);
                String string = sb.toString();
                hashSet3 = hashSet;
                if (!hashSet3.contains(string)) {
                    hashSet9.add(next10);
                }
            } else {
                obj10 = obj4;
                hashSet3 = hashSet;
            }
            hashSet = hashSet3;
            obj4 = obj10;
            it20 = it21;
        }
        Object obj36 = obj4;
        String[] strArr = (String[]) hashSet9.toArray(new String[0]);
        i5Var.p = strArr;
        i5Var.q = new int[strArr.length];
        int i10 = 0;
        while (true) {
            String[] strArr2 = i5Var.p;
            if (i10 < strArr2.length) {
                String str44 = strArr2[i10];
                i5Var.q[i10] = 0;
                int i11 = 0;
                while (true) {
                    if (i11 >= size) {
                        break;
                    }
                    if (k5VarArr[i11].o.containsKey(str44)) {
                        int[] iArr2 = i5Var.q;
                        iArr2[i10] = k5VarArr[i11].o.get(str44).d() + iArr2[i10];
                    } else {
                        i11++;
                    }
                }
                i10++;
            } else {
                boolean z = k5VarArr[0].n != -1;
                int length = strArr2.length + 18;
                boolean[] zArr = new boolean[length];
                int i12 = 1;
                while (i12 < size) {
                    String str45 = str5;
                    k5 k5Var2 = k5VarArr[i12];
                    String str46 = str7;
                    k5 k5Var3 = k5VarArr[i12 - 1];
                    Objects.requireNonNull(k5Var2);
                    zArr[0] = zArr[0] | k5Var2.k(k5Var2.h, k5Var3.h);
                    zArr[1] = zArr[1] | k5Var2.k(k5Var2.i, k5Var3.i) | z;
                    zArr[2] = zArr[2] | k5Var2.k(k5Var2.j, k5Var3.j) | z;
                    zArr[3] = k5Var2.k(k5Var2.k, k5Var3.k) | zArr[3];
                    zArr[4] = zArr[4] | k5Var2.k(k5Var2.l, k5Var3.l);
                    i12++;
                    str5 = str45;
                    str37 = str37;
                    str8 = str8;
                    str6 = str6;
                    str7 = str46;
                }
                String str47 = str6;
                String str48 = str8;
                String str49 = str7;
                String str50 = str5;
                String str51 = str37;
                int i13 = 0;
                for (int i14 = 1; i14 < length; i14++) {
                    if (zArr[i14]) {
                        i13++;
                    }
                }
                int[] iArr3 = new int[i13];
                i5Var.m = iArr3;
                i5Var.n = new double[iArr3.length];
                i5Var.o = new double[iArr3.length];
                int i15 = 0;
                for (int i16 = 1; i16 < length; i16++) {
                    if (zArr[i16]) {
                        i5Var.m[i15] = i16;
                        i15++;
                    }
                }
                double[][] dArr2 = (double[][]) Array.newInstance((Class<?>) double.class, size, i5Var.m.length);
                double[] dArr3 = new double[size];
                for (int i17 = 0; i17 < size; i17++) {
                    k5 k5Var4 = k5VarArr[i17];
                    double[] dArr4 = dArr2[i17];
                    int[] iArr4 = i5Var.m;
                    float[] fArr2 = {k5Var4.h, k5Var4.i, k5Var4.j, k5Var4.k, k5Var4.l, k5Var4.m};
                    int i18 = 0;
                    int i19 = 0;
                    while (i18 < iArr4.length) {
                        String str52 = str33;
                        if (iArr4[i18] < 6) {
                            iArr = iArr4;
                            fArr = fArr2;
                            dArr4[i19] = fArr2[iArr4[i18]];
                            i19++;
                        } else {
                            iArr = iArr4;
                            fArr = fArr2;
                        }
                        i18++;
                        str33 = str52;
                        iArr4 = iArr;
                        fArr2 = fArr;
                    }
                    dArr3[i17] = k5VarArr[i17].g;
                }
                String str53 = str33;
                int i20 = 0;
                while (true) {
                    int[] iArr5 = i5Var.m;
                    if (i20 < iArr5.length) {
                        if (iArr5[i20] < k5.s.length) {
                            String strS = jo.s(new StringBuilder(), k5.s[i5Var.m[i20]], " [");
                            for (int i21 = 0; i21 < size; i21++) {
                                StringBuilder sbZ2 = jo.z(strS);
                                sbZ2.append(dArr2[i21][i20]);
                                strS = sbZ2.toString();
                            }
                        }
                        i20++;
                    } else {
                        i5Var.h = new p4[i5Var.p.length + 1];
                        int i22 = 0;
                        while (true) {
                            String[] strArr3 = i5Var.p;
                            if (i22 >= strArr3.length) {
                                String str54 = str34;
                                i5Var.h[0] = p4.a(i5Var.c, dArr3, dArr2);
                                if (k5VarArr[0].n != -1) {
                                    int[] iArr6 = new int[size];
                                    double[] dArr5 = new double[size];
                                    double[][] dArr6 = (double[][]) Array.newInstance((Class<?>) double.class, size, 2);
                                    for (int i23 = 0; i23 < size; i23++) {
                                        iArr6[i23] = k5VarArr[i23].n;
                                        dArr5[i23] = k5VarArr[i23].g;
                                        dArr6[i23][0] = k5VarArr[i23].i;
                                        dArr6[i23][1] = k5VarArr[i23].j;
                                    }
                                    i5Var.i = new o4(iArr6, dArr5, dArr6);
                                }
                                float f3 = Float.NaN;
                                i5Var.y = new HashMap<>();
                                if (i5Var.v != null) {
                                    Iterator<String> it22 = hashSet2.iterator();
                                    while (it22.hasNext()) {
                                        String next11 = it22.next();
                                        if (next11.startsWith("CUSTOM")) {
                                            it = it22;
                                            cVar = new b5.c();
                                            obj7 = obj6;
                                            obj8 = obj36;
                                            str9 = str50;
                                            str10 = str51;
                                            str11 = str48;
                                            str12 = str47;
                                            str13 = str53;
                                            str14 = str54;
                                            str15 = str49;
                                            obj9 = obj5;
                                        } else {
                                            switch (next11.hashCode()) {
                                                case -1249320806:
                                                    obj7 = obj6;
                                                    obj8 = obj36;
                                                    str9 = str50;
                                                    str10 = str51;
                                                    str11 = str48;
                                                    str12 = str47;
                                                    str13 = str53;
                                                    str14 = str54;
                                                    str15 = str49;
                                                    obj9 = obj5;
                                                    if (next11.equals(obj7)) {
                                                        c = 0;
                                                        break;
                                                    } else {
                                                        c = 65535;
                                                        break;
                                                    }
                                                case -1249320805:
                                                    obj8 = obj36;
                                                    str9 = str50;
                                                    str10 = str51;
                                                    str11 = str48;
                                                    str12 = str47;
                                                    str13 = str53;
                                                    str14 = str54;
                                                    str15 = str49;
                                                    obj9 = obj5;
                                                    if (next11.equals(obj9)) {
                                                        obj7 = obj6;
                                                        c = 1;
                                                        break;
                                                    } else {
                                                        obj7 = obj6;
                                                        c = 65535;
                                                        break;
                                                    }
                                                case -1225497657:
                                                    obj8 = obj36;
                                                    str9 = str50;
                                                    str10 = str51;
                                                    str11 = str48;
                                                    str12 = str47;
                                                    str13 = str53;
                                                    str14 = str54;
                                                    str15 = str49;
                                                    if (next11.equals(obj8)) {
                                                        obj7 = obj6;
                                                        obj9 = obj5;
                                                        c = 2;
                                                        break;
                                                    } else {
                                                        obj7 = obj6;
                                                        obj9 = obj5;
                                                        c = 65535;
                                                        break;
                                                    }
                                                case -1225497656:
                                                    str9 = str50;
                                                    str10 = str51;
                                                    str11 = str48;
                                                    str12 = str47;
                                                    str13 = str53;
                                                    str14 = str54;
                                                    str15 = str49;
                                                    if (next11.equals(str9)) {
                                                        obj7 = obj6;
                                                        obj8 = obj36;
                                                        obj9 = obj5;
                                                        c = 3;
                                                        break;
                                                    } else {
                                                        obj7 = obj6;
                                                        obj8 = obj36;
                                                        obj9 = obj5;
                                                        c = 65535;
                                                        break;
                                                    }
                                                case -1225497655:
                                                    str10 = str51;
                                                    str11 = str48;
                                                    str12 = str47;
                                                    str13 = str53;
                                                    str14 = str54;
                                                    str15 = str49;
                                                    if (next11.equals(str15)) {
                                                        obj7 = obj6;
                                                        obj8 = obj36;
                                                        str9 = str50;
                                                        obj9 = obj5;
                                                        c = 4;
                                                        break;
                                                    } else {
                                                        obj7 = obj6;
                                                        obj8 = obj36;
                                                        str9 = str50;
                                                        obj9 = obj5;
                                                        c = 65535;
                                                        break;
                                                    }
                                                case -1001078227:
                                                    str10 = str51;
                                                    str11 = str48;
                                                    str12 = str47;
                                                    str13 = str53;
                                                    str14 = str54;
                                                    if (next11.equals(str11)) {
                                                        obj7 = obj6;
                                                        obj8 = obj36;
                                                        str9 = str50;
                                                        str15 = str49;
                                                        obj9 = obj5;
                                                        c = 5;
                                                        break;
                                                    }
                                                    obj7 = obj6;
                                                    obj8 = obj36;
                                                    str9 = str50;
                                                    str15 = str49;
                                                    obj9 = obj5;
                                                    c = 65535;
                                                    break;
                                                case -908189618:
                                                    str10 = str51;
                                                    str12 = str47;
                                                    str13 = str53;
                                                    str14 = str54;
                                                    if (next11.equals(str12)) {
                                                        obj7 = obj6;
                                                        obj8 = obj36;
                                                        str9 = str50;
                                                        str11 = str48;
                                                        str15 = str49;
                                                        obj9 = obj5;
                                                        c = 6;
                                                        break;
                                                    } else {
                                                        str11 = str48;
                                                        obj7 = obj6;
                                                        obj8 = obj36;
                                                        str9 = str50;
                                                        str15 = str49;
                                                        obj9 = obj5;
                                                        c = 65535;
                                                        break;
                                                    }
                                                case -908189617:
                                                    str10 = str51;
                                                    str13 = str53;
                                                    str14 = str54;
                                                    if (next11.equals(str10)) {
                                                        obj7 = obj6;
                                                        obj8 = obj36;
                                                        str9 = str50;
                                                        str11 = str48;
                                                        str12 = str47;
                                                        str15 = str49;
                                                        obj9 = obj5;
                                                        c = 7;
                                                        break;
                                                    }
                                                    obj7 = obj6;
                                                    obj8 = obj36;
                                                    str9 = str50;
                                                    str11 = str48;
                                                    str12 = str47;
                                                    str15 = str49;
                                                    obj9 = obj5;
                                                    c = 65535;
                                                    break;
                                                case -797520672:
                                                    str13 = str53;
                                                    str14 = str54;
                                                    if (next11.equals("waveVariesBy")) {
                                                        obj7 = obj6;
                                                        obj8 = obj36;
                                                        str9 = str50;
                                                        str10 = str51;
                                                        str11 = str48;
                                                        str12 = str47;
                                                        str15 = str49;
                                                        obj9 = obj5;
                                                        c = '\b';
                                                        break;
                                                    }
                                                    str10 = str51;
                                                    obj7 = obj6;
                                                    obj8 = obj36;
                                                    str9 = str50;
                                                    str11 = str48;
                                                    str12 = str47;
                                                    str15 = str49;
                                                    obj9 = obj5;
                                                    c = 65535;
                                                    break;
                                                case -40300674:
                                                    str13 = str53;
                                                    str14 = str54;
                                                    if (next11.equals(str13)) {
                                                        obj7 = obj6;
                                                        obj8 = obj36;
                                                        str9 = str50;
                                                        str10 = str51;
                                                        str11 = str48;
                                                        str12 = str47;
                                                        str15 = str49;
                                                        obj9 = obj5;
                                                        c = '\t';
                                                        break;
                                                    }
                                                    str10 = str51;
                                                    obj7 = obj6;
                                                    obj8 = obj36;
                                                    str9 = str50;
                                                    str11 = str48;
                                                    str12 = str47;
                                                    str15 = str49;
                                                    obj9 = obj5;
                                                    c = 65535;
                                                    break;
                                                case -4379043:
                                                    str14 = str54;
                                                    if (next11.equals(str32)) {
                                                        obj7 = obj6;
                                                        obj8 = obj36;
                                                        str9 = str50;
                                                        str10 = str51;
                                                        str11 = str48;
                                                        str12 = str47;
                                                        str13 = str53;
                                                        str15 = str49;
                                                        obj9 = obj5;
                                                        c = '\n';
                                                        break;
                                                    }
                                                    obj7 = obj6;
                                                    obj8 = obj36;
                                                    str9 = str50;
                                                    str10 = str51;
                                                    str11 = str48;
                                                    str12 = str47;
                                                    str13 = str53;
                                                    str15 = str49;
                                                    obj9 = obj5;
                                                    c = 65535;
                                                    break;
                                                case 37232917:
                                                    str14 = str54;
                                                    if (next11.equals(str14)) {
                                                        obj7 = obj6;
                                                        obj8 = obj36;
                                                        str9 = str50;
                                                        str10 = str51;
                                                        str11 = str48;
                                                        str12 = str47;
                                                        str13 = str53;
                                                        str15 = str49;
                                                        obj9 = obj5;
                                                        c = 11;
                                                        break;
                                                    }
                                                    obj7 = obj6;
                                                    obj8 = obj36;
                                                    str9 = str50;
                                                    str10 = str51;
                                                    str11 = str48;
                                                    str12 = str47;
                                                    str13 = str53;
                                                    str15 = str49;
                                                    obj9 = obj5;
                                                    c = 65535;
                                                    break;
                                                case 92909918:
                                                    if (next11.equals(str31)) {
                                                        obj7 = obj6;
                                                        obj8 = obj36;
                                                        str9 = str50;
                                                        str10 = str51;
                                                        str11 = str48;
                                                        str12 = str47;
                                                        str13 = str53;
                                                        str14 = str54;
                                                        str15 = str49;
                                                        obj9 = obj5;
                                                        c = '\f';
                                                        break;
                                                    }
                                                    obj7 = obj6;
                                                    obj8 = obj36;
                                                    str9 = str50;
                                                    str10 = str51;
                                                    str11 = str48;
                                                    str12 = str47;
                                                    str13 = str53;
                                                    str14 = str54;
                                                    str15 = str49;
                                                    obj9 = obj5;
                                                    c = 65535;
                                                    break;
                                                case 156108012:
                                                    if (next11.equals("waveOffset")) {
                                                        obj7 = obj6;
                                                        obj8 = obj36;
                                                        str9 = str50;
                                                        str10 = str51;
                                                        str11 = str48;
                                                        str12 = str47;
                                                        str13 = str53;
                                                        str14 = str54;
                                                        str15 = str49;
                                                        obj9 = obj5;
                                                        c = CharUtils.CR;
                                                        break;
                                                    }
                                                    obj7 = obj6;
                                                    obj8 = obj36;
                                                    str9 = str50;
                                                    str10 = str51;
                                                    str11 = str48;
                                                    str12 = str47;
                                                    str13 = str53;
                                                    str14 = str54;
                                                    str15 = str49;
                                                    obj9 = obj5;
                                                    c = 65535;
                                                    break;
                                                default:
                                                    obj7 = obj6;
                                                    obj8 = obj36;
                                                    str9 = str50;
                                                    str10 = str51;
                                                    str11 = str48;
                                                    str12 = str47;
                                                    str13 = str53;
                                                    str14 = str54;
                                                    str15 = str49;
                                                    obj9 = obj5;
                                                    c = 65535;
                                                    break;
                                            }
                                            switch (c) {
                                                case 0:
                                                    iVar = new b5.i();
                                                    break;
                                                case 1:
                                                    iVar = new b5.j();
                                                    break;
                                                case 2:
                                                    iVar = new b5.m();
                                                    break;
                                                case 3:
                                                    iVar = new b5.n();
                                                    break;
                                                case 4:
                                                    iVar = new b5.o();
                                                    break;
                                                case 5:
                                                    iVar = new b5.g();
                                                    break;
                                                case 6:
                                                    iVar = new b5.k();
                                                    break;
                                                case 7:
                                                    iVar = new b5.l();
                                                    break;
                                                case '\b':
                                                    iVar = new b5.b();
                                                    break;
                                                case '\t':
                                                    iVar = new b5.h();
                                                    break;
                                                case '\n':
                                                    iVar = new b5.e();
                                                    break;
                                                case 11:
                                                    iVar = new b5.f();
                                                    break;
                                                case '\f':
                                                    iVar = new b5.b();
                                                    break;
                                                case '\r':
                                                    iVar = new b5.b();
                                                    break;
                                                default:
                                                    iVar = null;
                                                    break;
                                            }
                                            it = it22;
                                            cVar = iVar;
                                        }
                                        if (cVar == null) {
                                            str54 = str14;
                                            str53 = str13;
                                            str51 = str10;
                                            str16 = str12;
                                            str17 = str31;
                                            str18 = str32;
                                            str19 = str11;
                                        } else {
                                            str54 = str14;
                                            str53 = str13;
                                            if ((cVar.e == 1) && Float.isNaN(f3)) {
                                                float[] fArr3 = new float[2];
                                                float f4 = 1.0f / 99;
                                                double d = 0.0d;
                                                float fHypot = 0.0f;
                                                str51 = str10;
                                                str16 = str12;
                                                double d2 = 0.0d;
                                                int i24 = 0;
                                                while (i24 < 100) {
                                                    float f5 = i24 * f4;
                                                    String str55 = str31;
                                                    String str56 = str32;
                                                    double d3 = f5;
                                                    float f6 = f4;
                                                    q4 q4Var = i5Var.d.e;
                                                    Iterator<k5> it23 = i5Var.t.iterator();
                                                    float f7 = Float.NaN;
                                                    float f8 = 0.0f;
                                                    q4 q4Var2 = q4Var;
                                                    while (it23.hasNext()) {
                                                        k5 next12 = it23.next();
                                                        Iterator<k5> it24 = it23;
                                                        q4 q4Var3 = next12.e;
                                                        if (q4Var3 != null) {
                                                            float f9 = next12.g;
                                                            if (f9 < f5) {
                                                                f8 = f9;
                                                                q4Var2 = q4Var3;
                                                            } else if (Float.isNaN(f7)) {
                                                                f7 = next12.g;
                                                            }
                                                        }
                                                        it23 = it24;
                                                    }
                                                    if (q4Var2 != null) {
                                                        if (Float.isNaN(f7)) {
                                                            f7 = 1.0f;
                                                        }
                                                        str20 = str11;
                                                        dA = (((float) q4Var2.a((f5 - f8) / r27)) * (f7 - f8)) + f8;
                                                    } else {
                                                        str20 = str11;
                                                        dA = d3;
                                                    }
                                                    i5Var.h[0].c(dA, i5Var.n);
                                                    i5Var.d.l(i5Var.m, i5Var.n, fArr3, 0);
                                                    if (i24 > 0) {
                                                        str21 = str20;
                                                        fHypot = (float) (Math.hypot(d - fArr3[1], d2 - fArr3[0]) + fHypot);
                                                    } else {
                                                        str21 = str20;
                                                    }
                                                    i24++;
                                                    f4 = f6;
                                                    d2 = fArr3[0];
                                                    d = fArr3[1];
                                                    str31 = str55;
                                                    str32 = str56;
                                                    str11 = str21;
                                                }
                                                str17 = str31;
                                                str18 = str32;
                                                str19 = str11;
                                                f3 = fHypot;
                                            } else {
                                                str51 = str10;
                                                str16 = str12;
                                                str17 = str31;
                                                str18 = str32;
                                                str19 = str11;
                                            }
                                            cVar.c = next11;
                                            i5Var.y.put(next11, cVar);
                                        }
                                        it22 = it;
                                        str49 = str15;
                                        str50 = str9;
                                        obj36 = obj8;
                                        obj6 = obj7;
                                        str31 = str17;
                                        str32 = str18;
                                        str48 = str19;
                                        obj5 = obj9;
                                        str47 = str16;
                                    }
                                    Iterator<x4> it25 = i5Var.v.iterator();
                                    while (it25.hasNext()) {
                                        x4 next13 = it25.next();
                                        if (next13 instanceof a5) {
                                            ((a5) next13).e(i5Var.y);
                                        }
                                    }
                                    Iterator<b5> it26 = i5Var.y.values().iterator();
                                    while (it26.hasNext()) {
                                        it26.next().d(f3);
                                    }
                                    return;
                                }
                                return;
                            }
                            String str57 = strArr3[i22];
                            int i25 = 0;
                            int i26 = 0;
                            double[] dArr7 = null;
                            double[][] dArr8 = null;
                            while (i25 < size) {
                                if (k5VarArr[i25].o.containsKey(str57)) {
                                    if (dArr8 == null) {
                                        dArr7 = new double[size];
                                        dArr8 = (double[][]) Array.newInstance((Class<?>) double.class, size, k5VarArr[i25].o.get(str57).d());
                                    }
                                    dArr7[i26] = k5VarArr[i25].g;
                                    k5 k5Var5 = k5VarArr[i25];
                                    double[] dArr9 = dArr8[i26];
                                    y6 y6Var4 = k5Var5.o.get(str57);
                                    str22 = str57;
                                    double[] dArr10 = dArr7;
                                    if (y6Var4.d() == 1) {
                                        dArr = dArr8;
                                        dArr9[0] = y6Var4.b();
                                    } else {
                                        dArr = dArr8;
                                        int iD = y6Var4.d();
                                        float[] fArr4 = new float[iD];
                                        y6Var4.c(fArr4);
                                        int i27 = 0;
                                        int i28 = 0;
                                        while (i27 < iD) {
                                            dArr9[i28] = fArr4[i27];
                                            i27++;
                                            iD = iD;
                                            i28++;
                                            str34 = str34;
                                            fArr4 = fArr4;
                                        }
                                    }
                                    str23 = str34;
                                    i26++;
                                    dArr7 = dArr10;
                                    dArr8 = dArr;
                                } else {
                                    str22 = str57;
                                    str23 = str34;
                                }
                                i25++;
                                str57 = str22;
                                str34 = str23;
                            }
                            i22++;
                            i5Var.h[i22] = p4.a(i5Var.c, Arrays.copyOf(dArr7, i26), (double[][]) Arrays.copyOf(dArr8, i26));
                            str34 = str34;
                        }
                    }
                }
            }
        }
    }

    public String toString() {
        StringBuilder sbZ = jo.z(" start: x: ");
        sbZ.append(this.d.i);
        sbZ.append(" y: ");
        sbZ.append(this.d.j);
        sbZ.append(" end: x: ");
        sbZ.append(this.e.i);
        sbZ.append(" y: ");
        sbZ.append(this.e.j);
        return sbZ.toString();
    }
}
