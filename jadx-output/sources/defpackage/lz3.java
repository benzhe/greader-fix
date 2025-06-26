package defpackage;

import java.lang.reflect.Field;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class lz3 {
    public int A;
    public int B;
    public Field C;
    public Object D;
    public Object E;
    public Object F;
    public final mz3 a;
    public final Object[] b;
    public Class<?> c;
    public final int d;
    public final int e;
    public final int f;
    public final int g;
    public final int h;
    public final int i;
    public final int j;
    public final int k;
    public final int l;
    public final int m;
    public final int[] n;
    public int o;
    public int p;
    public int q = Integer.MAX_VALUE;
    public int r = Integer.MIN_VALUE;
    public int s = 0;
    public int t = 0;
    public int u = 0;
    public int v = 0;
    public int w = 0;
    public int x;
    public int y;
    public int z;

    public lz3(Class<?> cls, String str, Object[] objArr) {
        this.c = cls;
        mz3 mz3Var = new mz3(str);
        this.a = mz3Var;
        this.b = objArr;
        this.d = mz3Var.a();
        int iA = mz3Var.a();
        this.e = iA;
        if (iA == 0) {
            this.f = 0;
            this.g = 0;
            this.h = 0;
            this.i = 0;
            this.j = 0;
            this.l = 0;
            this.k = 0;
            this.m = 0;
            this.n = null;
            return;
        }
        int iA2 = mz3Var.a();
        this.f = iA2;
        int iA3 = mz3Var.a();
        this.g = iA3;
        this.h = mz3Var.a();
        this.i = mz3Var.a();
        this.l = mz3Var.a();
        this.k = mz3Var.a();
        this.j = mz3Var.a();
        this.m = mz3Var.a();
        int iA4 = mz3Var.a();
        this.n = iA4 != 0 ? new int[iA4] : null;
        this.o = (iA2 << 1) + iA3;
    }

    public static Field b(Class<?> cls, String str) {
        try {
            return cls.getDeclaredField(str);
        } catch (NoSuchFieldException unused) {
            Field[] declaredFields = cls.getDeclaredFields();
            for (Field field : declaredFields) {
                if (str.equals(field.getName())) {
                    return field;
                }
            }
            String name = cls.getName();
            String string = Arrays.toString(declaredFields);
            throw new RuntimeException(jo.s(jo.y(jo.x(string, name.length() + jo.x(str, 40)), "Field ", str, " for ", name), " not found. Known fields are ", string));
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x007f  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x0140  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean a() {
        /*
            Method dump skipped, instructions count: 341
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.lz3.a():boolean");
    }

    public final Object c() {
        Object[] objArr = this.b;
        int i = this.o;
        this.o = i + 1;
        return objArr[i];
    }

    public final boolean d() {
        return (this.d & 1) == 1;
    }

    public final boolean e() {
        return d() && this.z <= nx3.w.e;
    }
}
