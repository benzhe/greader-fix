package defpackage;

import java.io.IOException;
import java.lang.reflect.Array;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.Type;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class gf6<E> extends de6<Object> {
    public static final ee6 c = new a();
    public final Class<E> a;
    public final de6<E> b;

    public class a implements ee6 {
        @Override // defpackage.ee6
        public <T> de6<T> b(od6 od6Var, dg6<T> dg6Var) {
            Type type = dg6Var.b;
            boolean z = type instanceof GenericArrayType;
            if (!z && (!(type instanceof Class) || !((Class) type).isArray())) {
                return null;
            }
            Type genericComponentType = z ? ((GenericArrayType) type).getGenericComponentType() : ((Class) type).getComponentType();
            return new gf6(od6Var, od6Var.d(new dg6<>(genericComponentType)), he6.e(genericComponentType));
        }
    }

    public gf6(od6 od6Var, de6<E> de6Var, Class<E> cls) {
        this.b = new tf6(od6Var, de6Var, cls);
        this.a = cls;
    }

    @Override // defpackage.de6
    public Object a(eg6 eg6Var) throws IOException, ArrayIndexOutOfBoundsException, IllegalArgumentException, NegativeArraySizeException {
        if (eg6Var.Q() == fg6.NULL) {
            eg6Var.E();
            return null;
        }
        ArrayList arrayList = new ArrayList();
        eg6Var.a();
        while (eg6Var.m()) {
            arrayList.add(this.b.a(eg6Var));
        }
        eg6Var.f();
        int size = arrayList.size();
        Object objNewInstance = Array.newInstance((Class<?>) this.a, size);
        for (int i = 0; i < size; i++) {
            Array.set(objNewInstance, i, arrayList.get(i));
        }
        return objNewInstance;
    }

    @Override // defpackage.de6
    public void b(gg6 gg6Var, Object obj) throws IOException, ArrayIndexOutOfBoundsException, IllegalArgumentException {
        if (obj == null) {
            gg6Var.m();
            return;
        }
        gg6Var.b();
        int length = Array.getLength(obj);
        for (int i = 0; i < length; i++) {
            this.b.b(gg6Var, Array.get(obj, i));
        }
        gg6Var.f();
    }
}
