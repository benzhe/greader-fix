package defpackage;

import android.graphics.Insets;
import android.os.Build;
import android.view.DisplayCutout;
import android.view.WindowInsets;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.util.Objects;

/* loaded from: classes.dex */
public class qa {
    public static final qa b;
    public final h a;

    public static class c {
        public final qa a = new qa((qa) null);

        public qa a() {
            throw null;
        }

        public void b(e8 e8Var) {
        }

        public void c(e8 e8Var) {
            throw null;
        }
    }

    public static class d extends h {
        public final WindowInsets b;
        public e8 c;

        public d(qa qaVar, WindowInsets windowInsets) {
            super(qaVar);
            this.c = null;
            this.b = windowInsets;
        }

        @Override // qa.h
        public final e8 g() {
            if (this.c == null) {
                this.c = e8.a(this.b.getSystemWindowInsetLeft(), this.b.getSystemWindowInsetTop(), this.b.getSystemWindowInsetRight(), this.b.getSystemWindowInsetBottom());
            }
            return this.c;
        }

        @Override // qa.h
        public qa h(int i, int i2, int i3, int i4) {
            qa qaVarK = qa.k(this.b);
            c bVar = Build.VERSION.SDK_INT >= 29 ? new b(qaVarK) : new a(qaVarK);
            bVar.c(qa.g(g(), i, i2, i3, i4));
            bVar.b(qa.g(f(), i, i2, i3, i4));
            return bVar.a();
        }

        @Override // qa.h
        public boolean j() {
            return this.b.isRound();
        }
    }

    public static class e extends d {
        public e8 d;

        public e(qa qaVar, WindowInsets windowInsets) {
            super(qaVar, windowInsets);
            this.d = null;
        }

        @Override // qa.h
        public qa b() {
            return qa.k(this.b.consumeStableInsets());
        }

        @Override // qa.h
        public qa c() {
            return qa.k(this.b.consumeSystemWindowInsets());
        }

        @Override // qa.h
        public final e8 f() {
            if (this.d == null) {
                this.d = e8.a(this.b.getStableInsetLeft(), this.b.getStableInsetTop(), this.b.getStableInsetRight(), this.b.getStableInsetBottom());
            }
            return this.d;
        }

        @Override // qa.h
        public boolean i() {
            return this.b.isConsumed();
        }
    }

    public static class f extends e {
        public f(qa qaVar, WindowInsets windowInsets) {
            super(qaVar, windowInsets);
        }

        @Override // qa.h
        public qa a() {
            return qa.k(this.b.consumeDisplayCutout());
        }

        @Override // qa.h
        public x9 d() {
            DisplayCutout displayCutout = this.b.getDisplayCutout();
            if (displayCutout == null) {
                return null;
            }
            return new x9(displayCutout);
        }

        @Override // qa.h
        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof f) {
                return Objects.equals(this.b, ((f) obj).b);
            }
            return false;
        }

        @Override // qa.h
        public int hashCode() {
            return this.b.hashCode();
        }
    }

    public static class g extends f {
        public e8 e;

        public g(qa qaVar, WindowInsets windowInsets) {
            super(qaVar, windowInsets);
            this.e = null;
        }

        @Override // qa.h
        public e8 e() {
            if (this.e == null) {
                Insets mandatorySystemGestureInsets = this.b.getMandatorySystemGestureInsets();
                this.e = e8.a(mandatorySystemGestureInsets.left, mandatorySystemGestureInsets.top, mandatorySystemGestureInsets.right, mandatorySystemGestureInsets.bottom);
            }
            return this.e;
        }

        @Override // qa.d, qa.h
        public qa h(int i, int i2, int i3, int i4) {
            return qa.k(this.b.inset(i, i2, i3, i4));
        }
    }

    public static class h {
        public final qa a;

        public h(qa qaVar) {
            this.a = qaVar;
        }

        public qa a() {
            return this.a;
        }

        public qa b() {
            return this.a;
        }

        public qa c() {
            return this.a;
        }

        public x9 d() {
            return null;
        }

        public e8 e() {
            return g();
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof h)) {
                return false;
            }
            h hVar = (h) obj;
            return j() == hVar.j() && i() == hVar.i() && Objects.equals(g(), hVar.g()) && Objects.equals(f(), hVar.f()) && Objects.equals(d(), hVar.d());
        }

        public e8 f() {
            return e8.e;
        }

        public e8 g() {
            return e8.e;
        }

        public qa h(int i, int i2, int i3, int i4) {
            return qa.b;
        }

        public int hashCode() {
            return Objects.hash(Boolean.valueOf(j()), Boolean.valueOf(i()), g(), f(), d());
        }

        public boolean i() {
            return false;
        }

        public boolean j() {
            return false;
        }
    }

    static {
        b = (Build.VERSION.SDK_INT >= 29 ? new b() : new a()).a().a.a().a.b().a();
    }

    public qa(WindowInsets windowInsets) {
        int i = Build.VERSION.SDK_INT;
        if (i >= 29) {
            this.a = new g(this, windowInsets);
        } else if (i >= 28) {
            this.a = new f(this, windowInsets);
        } else {
            this.a = new e(this, windowInsets);
        }
    }

    public static e8 g(e8 e8Var, int i, int i2, int i3, int i4) {
        int iMax = Math.max(0, e8Var.a - i);
        int iMax2 = Math.max(0, e8Var.b - i2);
        int iMax3 = Math.max(0, e8Var.c - i3);
        int iMax4 = Math.max(0, e8Var.d - i4);
        return (iMax == i && iMax2 == i2 && iMax3 == i3 && iMax4 == i4) ? e8Var : e8.a(iMax, iMax2, iMax3, iMax4);
    }

    public static qa k(WindowInsets windowInsets) {
        Objects.requireNonNull(windowInsets);
        return new qa(windowInsets);
    }

    public qa a() {
        return this.a.c();
    }

    public int b() {
        return f().d;
    }

    public int c() {
        return f().a;
    }

    public int d() {
        return f().c;
    }

    public int e() {
        return f().b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof qa) {
            return Objects.equals(this.a, ((qa) obj).a);
        }
        return false;
    }

    public e8 f() {
        return this.a.g();
    }

    public boolean h() {
        return this.a.i();
    }

    public int hashCode() {
        h hVar = this.a;
        if (hVar == null) {
            return 0;
        }
        return hVar.hashCode();
    }

    @Deprecated
    public qa i(int i, int i2, int i3, int i4) {
        c bVar = Build.VERSION.SDK_INT >= 29 ? new b(this) : new a(this);
        bVar.c(e8.a(i, i2, i3, i4));
        return bVar.a();
    }

    public WindowInsets j() {
        h hVar = this.a;
        if (hVar instanceof d) {
            return ((d) hVar).b;
        }
        return null;
    }

    public static class b extends c {
        public final WindowInsets.Builder b;

        public b() {
            this.b = new WindowInsets.Builder();
        }

        @Override // qa.c
        public qa a() {
            return qa.k(this.b.build());
        }

        @Override // qa.c
        public void b(e8 e8Var) {
            this.b.setStableInsets(Insets.of(e8Var.a, e8Var.b, e8Var.c, e8Var.d));
        }

        @Override // qa.c
        public void c(e8 e8Var) {
            this.b.setSystemWindowInsets(Insets.of(e8Var.a, e8Var.b, e8Var.c, e8Var.d));
        }

        public b(qa qaVar) {
            WindowInsets.Builder builder;
            WindowInsets windowInsetsJ = qaVar.j();
            if (windowInsetsJ != null) {
                builder = new WindowInsets.Builder(windowInsetsJ);
            } else {
                builder = new WindowInsets.Builder();
            }
            this.b = builder;
        }
    }

    public qa(qa qaVar) {
        this.a = new h(this);
    }

    public static class a extends c {
        public static Field c = null;
        public static boolean d = false;
        public static Constructor<WindowInsets> e = null;
        public static boolean f = false;
        public WindowInsets b;

        /* JADX WARN: Removed duplicated region for block: B:17:0x0037  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public a() throws java.lang.IllegalAccessException, java.lang.InstantiationException, java.lang.IllegalArgumentException, java.lang.reflect.InvocationTargetException {
            /*
                r7 = this;
                r7.<init>()
                boolean r0 = qa.a.d
                r1 = 1
                java.lang.String r2 = "WindowInsetsCompat"
                if (r0 != 0) goto L1d
                java.lang.Class<android.view.WindowInsets> r0 = android.view.WindowInsets.class
                java.lang.String r3 = "CONSUMED"
                java.lang.reflect.Field r0 = r0.getDeclaredField(r3)     // Catch: java.lang.ReflectiveOperationException -> L15
                qa.a.c = r0     // Catch: java.lang.ReflectiveOperationException -> L15
                goto L1b
            L15:
                r0 = move-exception
                java.lang.String r3 = "Could not retrieve WindowInsets.CONSUMED field"
                android.util.Log.i(r2, r3, r0)
            L1b:
                qa.a.d = r1
            L1d:
                java.lang.reflect.Field r0 = qa.a.c
                r3 = 0
                if (r0 == 0) goto L37
                java.lang.Object r0 = r0.get(r3)     // Catch: java.lang.ReflectiveOperationException -> L31
                android.view.WindowInsets r0 = (android.view.WindowInsets) r0     // Catch: java.lang.ReflectiveOperationException -> L31
                if (r0 == 0) goto L37
                android.view.WindowInsets r4 = new android.view.WindowInsets     // Catch: java.lang.ReflectiveOperationException -> L31
                r4.<init>(r0)     // Catch: java.lang.ReflectiveOperationException -> L31
                r3 = r4
                goto L6e
            L31:
                r0 = move-exception
                java.lang.String r4 = "Could not get value from WindowInsets.CONSUMED field"
                android.util.Log.i(r2, r4, r0)
            L37:
                boolean r0 = qa.a.f
                r4 = 0
                if (r0 != 0) goto L53
                java.lang.Class<android.view.WindowInsets> r0 = android.view.WindowInsets.class
                java.lang.Class[] r5 = new java.lang.Class[r1]     // Catch: java.lang.ReflectiveOperationException -> L4b
                java.lang.Class<android.graphics.Rect> r6 = android.graphics.Rect.class
                r5[r4] = r6     // Catch: java.lang.ReflectiveOperationException -> L4b
                java.lang.reflect.Constructor r0 = r0.getConstructor(r5)     // Catch: java.lang.ReflectiveOperationException -> L4b
                qa.a.e = r0     // Catch: java.lang.ReflectiveOperationException -> L4b
                goto L51
            L4b:
                r0 = move-exception
                java.lang.String r5 = "Could not retrieve WindowInsets(Rect) constructor"
                android.util.Log.i(r2, r5, r0)
            L51:
                qa.a.f = r1
            L53:
                java.lang.reflect.Constructor<android.view.WindowInsets> r0 = qa.a.e
                if (r0 == 0) goto L6e
                java.lang.Object[] r1 = new java.lang.Object[r1]     // Catch: java.lang.ReflectiveOperationException -> L68
                android.graphics.Rect r5 = new android.graphics.Rect     // Catch: java.lang.ReflectiveOperationException -> L68
                r5.<init>()     // Catch: java.lang.ReflectiveOperationException -> L68
                r1[r4] = r5     // Catch: java.lang.ReflectiveOperationException -> L68
                java.lang.Object r0 = r0.newInstance(r1)     // Catch: java.lang.ReflectiveOperationException -> L68
                android.view.WindowInsets r0 = (android.view.WindowInsets) r0     // Catch: java.lang.ReflectiveOperationException -> L68
                r3 = r0
                goto L6e
            L68:
                r0 = move-exception
                java.lang.String r1 = "Could not invoke WindowInsets(Rect) constructor"
                android.util.Log.i(r2, r1, r0)
            L6e:
                r7.b = r3
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: qa.a.<init>():void");
        }

        @Override // qa.c
        public qa a() {
            return qa.k(this.b);
        }

        @Override // qa.c
        public void c(e8 e8Var) {
            WindowInsets windowInsets = this.b;
            if (windowInsets != null) {
                this.b = windowInsets.replaceSystemWindowInsets(e8Var.a, e8Var.b, e8Var.c, e8Var.d);
            }
        }

        public a(qa qaVar) {
            this.b = qaVar.j();
        }
    }
}
