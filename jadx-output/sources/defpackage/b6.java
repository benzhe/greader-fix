package defpackage;

import defpackage.x5;
import java.util.HashSet;
import java.util.Iterator;

/* loaded from: classes.dex */
public class b6 {
    public final c6 b;
    public final a c;
    public b6 d;
    public x5 g;
    public HashSet<b6> a = null;
    public int e = 0;
    public int f = -1;

    public enum a {
        NONE,
        LEFT,
        TOP,
        RIGHT,
        BOTTOM,
        BASELINE,
        CENTER,
        CENTER_X,
        CENTER_Y
    }

    public b6(c6 c6Var, a aVar) {
        this.b = c6Var;
        this.c = aVar;
    }

    public boolean a(b6 b6Var, int i) {
        return b(b6Var, i, -1, false);
    }

    public boolean b(b6 b6Var, int i, int i2, boolean z) {
        if (b6Var == null) {
            h();
            return true;
        }
        if (!z && !g(b6Var)) {
            return false;
        }
        this.d = b6Var;
        if (b6Var.a == null) {
            b6Var.a = new HashSet<>();
        }
        this.d.a.add(this);
        if (i > 0) {
            this.e = i;
        } else {
            this.e = 0;
        }
        this.f = i2;
        return true;
    }

    public int c() {
        b6 b6Var;
        if (this.b.e0 == 8) {
            return 0;
        }
        int i = this.f;
        return (i <= -1 || (b6Var = this.d) == null || b6Var.b.e0 != 8) ? this.e : i;
    }

    public final b6 d() {
        switch (this.c) {
            case NONE:
            case BASELINE:
            case CENTER:
            case CENTER_X:
            case CENTER_Y:
                return null;
            case LEFT:
                return this.b.C;
            case TOP:
                return this.b.D;
            case RIGHT:
                return this.b.A;
            case BOTTOM:
                return this.b.B;
            default:
                throw new AssertionError(this.c.name());
        }
    }

    public boolean e() {
        HashSet<b6> hashSet = this.a;
        if (hashSet == null) {
            return false;
        }
        Iterator<b6> it = hashSet.iterator();
        while (it.hasNext()) {
            if (it.next().d().f()) {
                return true;
            }
        }
        return false;
    }

    public boolean f() {
        return this.d != null;
    }

    public boolean g(b6 b6Var) {
        a aVar = a.CENTER_Y;
        a aVar2 = a.CENTER_X;
        a aVar3 = a.BASELINE;
        if (b6Var == null) {
            return false;
        }
        a aVar4 = b6Var.c;
        a aVar5 = this.c;
        if (aVar4 == aVar5) {
            return aVar5 != aVar3 || (b6Var.b.y && this.b.y);
        }
        switch (aVar5) {
            case NONE:
            case BASELINE:
            case CENTER_X:
            case CENTER_Y:
                return false;
            case LEFT:
            case RIGHT:
                boolean z = aVar4 == a.LEFT || aVar4 == a.RIGHT;
                if (b6Var.b instanceof f6) {
                    return z || aVar4 == aVar2;
                }
                return z;
            case TOP:
            case BOTTOM:
                boolean z2 = aVar4 == a.TOP || aVar4 == a.BOTTOM;
                if (b6Var.b instanceof f6) {
                    return z2 || aVar4 == aVar;
                }
                return z2;
            case CENTER:
                return (aVar4 == aVar3 || aVar4 == aVar2 || aVar4 == aVar) ? false : true;
            default:
                throw new AssertionError(this.c.name());
        }
    }

    public void h() {
        HashSet<b6> hashSet;
        b6 b6Var = this.d;
        if (b6Var != null && (hashSet = b6Var.a) != null) {
            hashSet.remove(this);
        }
        this.d = null;
        this.e = 0;
        this.f = -1;
    }

    public void i() {
        x5 x5Var = this.g;
        if (x5Var == null) {
            this.g = new x5(x5.a.UNRESTRICTED);
        } else {
            x5Var.c();
        }
    }

    public void j(int i) {
        if (f()) {
            this.f = i;
        }
    }

    public String toString() {
        return this.b.f0 + ":" + this.c.toString();
    }
}
