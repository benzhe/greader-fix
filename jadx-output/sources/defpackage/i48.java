package defpackage;

import java.lang.reflect.Method;
import java.util.Queue;

/* loaded from: classes2.dex */
public class i48 implements a48 {
    public final String e;
    public volatile a48 f;
    public Boolean g;
    public Method h;
    public c48 i;
    public Queue<e48> j;
    public final boolean k;

    public i48(String str, Queue<e48> queue, boolean z) {
        this.e = str;
        this.j = queue;
        this.k = z;
    }

    @Override // defpackage.a48
    public void a(String str, Object obj, Object obj2) {
        f().a(str, obj, obj2);
    }

    @Override // defpackage.a48
    public void b(String str, Throwable th) {
        f().b(str, th);
    }

    @Override // defpackage.a48
    public String c() {
        return this.e;
    }

    @Override // defpackage.a48
    public void d(String str) {
        f().d(str);
    }

    @Override // defpackage.a48
    public void e(String str, Object obj) {
        f().e(str, obj);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && i48.class == obj.getClass() && this.e.equals(((i48) obj).e);
    }

    public a48 f() {
        if (this.f != null) {
            return this.f;
        }
        if (this.k) {
            return g48.e;
        }
        if (this.i == null) {
            this.i = new c48(this, this.j);
        }
        return this.i;
    }

    public boolean g() {
        Boolean bool = this.g;
        if (bool != null) {
            return bool.booleanValue();
        }
        try {
            this.h = this.f.getClass().getMethod("log", d48.class);
            this.g = Boolean.TRUE;
        } catch (NoSuchMethodException unused) {
            this.g = Boolean.FALSE;
        }
        return this.g.booleanValue();
    }

    public int hashCode() {
        return this.e.hashCode();
    }
}
