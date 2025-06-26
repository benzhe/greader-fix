package defpackage;

import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/* loaded from: classes.dex */
public final class ug5 extends pf5 {
    public final Set<Class<?>> a;
    public final Set<Class<?>> b;
    public final Set<Class<?>> c;
    public final Set<Class<?>> d;
    public final Set<Class<?>> e;
    public final tf5 f;

    public static class a implements mo5 {
        public final mo5 a;

        public a(Set<Class<?>> set, mo5 mo5Var) {
            this.a = mo5Var;
        }
    }

    public ug5(sf5<?> sf5Var, tf5 tf5Var) {
        HashSet hashSet = new HashSet();
        HashSet hashSet2 = new HashSet();
        HashSet hashSet3 = new HashSet();
        HashSet hashSet4 = new HashSet();
        HashSet hashSet5 = new HashSet();
        for (ig5 ig5Var : sf5Var.b) {
            int i = ig5Var.c;
            if (!(i == 0)) {
                if (i == 2) {
                    hashSet3.add(ig5Var.a);
                } else if (ig5Var.a()) {
                    hashSet5.add(ig5Var.a);
                } else {
                    hashSet2.add(ig5Var.a);
                }
            } else if (ig5Var.a()) {
                hashSet4.add(ig5Var.a);
            } else {
                hashSet.add(ig5Var.a);
            }
        }
        if (!sf5Var.f.isEmpty()) {
            hashSet.add(mo5.class);
        }
        this.a = Collections.unmodifiableSet(hashSet);
        this.b = Collections.unmodifiableSet(hashSet2);
        Collections.unmodifiableSet(hashSet3);
        this.c = Collections.unmodifiableSet(hashSet4);
        this.d = Collections.unmodifiableSet(hashSet5);
        this.e = sf5Var.f;
        this.f = tf5Var;
    }

    @Override // defpackage.pf5, defpackage.tf5
    public <T> T a(Class<T> cls) {
        if (!this.a.contains(cls)) {
            throw new kg5(String.format("Attempting to request an undeclared dependency %s.", cls));
        }
        T t = (T) this.f.a(cls);
        return !cls.equals(mo5.class) ? t : (T) new a(this.e, (mo5) t);
    }

    @Override // defpackage.tf5
    public <T> s96<T> b(Class<T> cls) {
        if (this.b.contains(cls)) {
            return this.f.b(cls);
        }
        throw new kg5(String.format("Attempting to request an undeclared dependency Provider<%s>.", cls));
    }

    @Override // defpackage.tf5
    public <T> s96<Set<T>> c(Class<T> cls) {
        if (this.d.contains(cls)) {
            return this.f.c(cls);
        }
        throw new kg5(String.format("Attempting to request an undeclared dependency Provider<Set<%s>>.", cls));
    }

    @Override // defpackage.pf5, defpackage.tf5
    public <T> Set<T> d(Class<T> cls) {
        if (this.c.contains(cls)) {
            return this.f.d(cls);
        }
        throw new kg5(String.format("Attempting to request an undeclared dependency Set<%s>.", cls));
    }
}
