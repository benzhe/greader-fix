package defpackage;

import defpackage.pf6;
import java.io.IOException;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;

/* loaded from: classes.dex */
public final class tf6<T> extends de6<T> {
    public final od6 a;
    public final de6<T> b;
    public final Type c;

    public tf6(od6 od6Var, de6<T> de6Var, Type type) {
        this.a = od6Var;
        this.b = de6Var;
        this.c = type;
    }

    @Override // defpackage.de6
    public T a(eg6 eg6Var) throws IOException {
        return this.b.a(eg6Var);
    }

    @Override // defpackage.de6
    public void b(gg6 gg6Var, T t) throws IOException {
        de6<T> de6VarD = this.b;
        Type type = this.c;
        if (t != null && (type == Object.class || (type instanceof TypeVariable) || (type instanceof Class))) {
            type = t.getClass();
        }
        if (type != this.c) {
            de6VarD = this.a.d(new dg6<>(type));
            if (de6VarD instanceof pf6.a) {
                de6<T> de6Var = this.b;
                if (!(de6Var instanceof pf6.a)) {
                    de6VarD = de6Var;
                }
            }
        }
        de6VarD.b(gg6Var, t);
    }
}
