package defpackage;

import java.io.IOException;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.WildcardType;
import java.util.Collection;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class hf6 implements ee6 {
    public final ne6 e;

    public static final class a<E> extends de6<Collection<E>> {
        public final de6<E> a;
        public final af6<? extends Collection<E>> b;

        public a(od6 od6Var, Type type, de6<E> de6Var, af6<? extends Collection<E>> af6Var) {
            this.a = new tf6(od6Var, de6Var, type);
            this.b = af6Var;
        }

        @Override // defpackage.de6
        public Object a(eg6 eg6Var) throws IOException {
            if (eg6Var.Q() == fg6.NULL) {
                eg6Var.E();
                return null;
            }
            Collection<E> collectionA = this.b.a();
            eg6Var.a();
            while (eg6Var.m()) {
                collectionA.add(this.a.a(eg6Var));
            }
            eg6Var.f();
            return collectionA;
        }

        @Override // defpackage.de6
        public void b(gg6 gg6Var, Object obj) throws IOException {
            Collection collection = (Collection) obj;
            if (collection == null) {
                gg6Var.m();
                return;
            }
            gg6Var.b();
            Iterator<E> it = collection.iterator();
            while (it.hasNext()) {
                this.a.b(gg6Var, it.next());
            }
            gg6Var.f();
        }
    }

    public hf6(ne6 ne6Var) {
        this.e = ne6Var;
    }

    @Override // defpackage.ee6
    public <T> de6<T> b(od6 od6Var, dg6<T> dg6Var) {
        Type type = dg6Var.b;
        Class<? super T> cls = dg6Var.a;
        if (!Collection.class.isAssignableFrom(cls)) {
            return null;
        }
        Type typeF = he6.f(type, cls, Collection.class);
        if (typeF instanceof WildcardType) {
            typeF = ((WildcardType) typeF).getUpperBounds()[0];
        }
        Class cls2 = typeF instanceof ParameterizedType ? ((ParameterizedType) typeF).getActualTypeArguments()[0] : Object.class;
        return new a(od6Var, cls2, od6Var.d(new dg6<>(cls2)), this.e.a(dg6Var));
    }
}
