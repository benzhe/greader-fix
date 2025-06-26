package defpackage;

import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Objects;
import java.util.Set;
import org.apache.commons.text.StringSubstitutor;

/* loaded from: classes.dex */
public final class sf5<T> {
    public final Set<Class<? super T>> a;
    public final Set<ig5> b;
    public final int c;
    public final int d;
    public final wf5<T> e;
    public final Set<Class<?>> f;

    public static class b<T> {
        public final Set<Class<? super T>> a;
        public final Set<ig5> b;
        public int c;
        public int d;
        public wf5<T> e;
        public Set<Class<?>> f;

        public b(Class cls, Class[] clsArr, a aVar) {
            HashSet hashSet = new HashSet();
            this.a = hashSet;
            this.b = new HashSet();
            this.c = 0;
            this.d = 0;
            this.f = new HashSet();
            Objects.requireNonNull(cls, "Null interface");
            hashSet.add(cls);
            for (Class cls2 : clsArr) {
                Objects.requireNonNull(cls2, "Null interface");
            }
            Collections.addAll(this.a, clsArr);
        }

        public b<T> a(ig5 ig5Var) {
            if (!(!this.a.contains(ig5Var.a))) {
                throw new IllegalArgumentException("Components are not allowed to depend on interfaces they themselves provide.");
            }
            this.b.add(ig5Var);
            return this;
        }

        public sf5<T> b() {
            if (this.e != null) {
                return new sf5<>(new HashSet(this.a), new HashSet(this.b), this.c, this.d, this.e, this.f, null);
            }
            throw new IllegalStateException("Missing required property: factory.");
        }

        public b<T> c() {
            if (!(this.c == 0)) {
                throw new IllegalStateException("Instantiation type has already been set.");
            }
            this.c = 2;
            return this;
        }

        public b<T> d(wf5<T> wf5Var) {
            this.e = wf5Var;
            return this;
        }
    }

    public sf5(Set set, Set set2, int i, int i2, wf5 wf5Var, Set set3, a aVar) {
        this.a = Collections.unmodifiableSet(set);
        this.b = Collections.unmodifiableSet(set2);
        this.c = i;
        this.d = i2;
        this.e = wf5Var;
        this.f = Collections.unmodifiableSet(set3);
    }

    public static <T> b<T> a(Class<T> cls) {
        return new b<>(cls, new Class[0], null);
    }

    @SafeVarargs
    public static <T> sf5<T> c(final T t, Class<T> cls, Class<? super T>... clsArr) {
        b bVar = new b(cls, clsArr, null);
        bVar.d(new wf5(t) { // from class: qf5
            public final Object a;

            {
                this.a = t;
            }

            @Override // defpackage.wf5
            public Object a(tf5 tf5Var) {
                return this.a;
            }
        });
        return bVar.b();
    }

    public boolean b() {
        return this.d == 0;
    }

    public String toString() {
        return "Component<" + Arrays.toString(this.a.toArray()) + ">{" + this.c + ", type=" + this.d + ", deps=" + Arrays.toString(this.b.toArray()) + StringSubstitutor.DEFAULT_VAR_END;
    }
}
