package defpackage;

import defpackage.c94;
import defpackage.z84;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes.dex */
public abstract class c94<MessageType extends c94<MessageType, BuilderType>, BuilderType extends z84<MessageType, BuilderType>> extends t74<MessageType, BuilderType> {
    private static final Map<Object, c94<?, ?>> zza = new ConcurrentHashMap();
    public bb4 zzc = bb4.f;
    public int zzd = -1;

    public static Object j(Method method, Object obj, Object... objArr) {
        try {
            return method.invoke(obj, objArr);
        } catch (IllegalAccessException e) {
            throw new RuntimeException("Couldn't use Java reflection to implement protocol message reflection.", e);
        } catch (InvocationTargetException e2) {
            Throwable cause = e2.getCause();
            if (cause instanceof RuntimeException) {
                throw ((RuntimeException) cause);
            }
            if (cause instanceof Error) {
                throw ((Error) cause);
            }
            throw new RuntimeException("Unexpected exception thrown by generated accessor method.", cause);
        }
    }

    public static h94 k(h94 h94Var) {
        t94 t94Var = (t94) h94Var;
        int i = t94Var.g;
        return t94Var.w(i == 0 ? 10 : i + i);
    }

    public static <E> i94<E> l(i94<E> i94Var) {
        int size = i94Var.size();
        return i94Var.w(size == 0 ? 10 : size + size);
    }

    public static <T extends c94> T p(Class<T> cls) throws ClassNotFoundException {
        Map<Object, c94<?, ?>> map = zza;
        c94<?, ?> c94Var = map.get(cls);
        if (c94Var == null) {
            try {
                Class.forName(cls.getName(), true, cls.getClassLoader());
                c94Var = map.get(cls);
            } catch (ClassNotFoundException e) {
                throw new IllegalStateException("Class initialization cannot fail.", e);
            }
        }
        if (c94Var == null) {
            c94Var = (c94) ((c94) lb4.i(cls)).r(6, null, null);
            if (c94Var == null) {
                throw new IllegalStateException();
            }
            map.put(cls, c94Var);
        }
        return c94Var;
    }

    public static <T extends c94> void q(Class<T> cls, T t) {
        zza.put(cls, t);
    }

    @Override // defpackage.da4
    public final /* bridge */ /* synthetic */ s74 b() {
        return (z84) r(5, null, null);
    }

    /*  JADX ERROR: StackOverflowError in pass: MethodInvokeVisitor
        java.lang.StackOverflowError
        	at jadx.core.dex.nodes.utils.MethodUtils.processMethodArgsOverloaded(MethodUtils.java:99)
        	at jadx.core.dex.nodes.utils.MethodUtils.processMethodArgsOverloaded(MethodUtils.java:114)
        	at jadx.core.dex.nodes.utils.MethodUtils.processMethodArgsOverloaded(MethodUtils.java:120)
        */
    @Override // defpackage.da4
    public final /* bridge */ /* synthetic */ defpackage.s74 c() {
        /*
            r2 = this;
            r0 = 5
            r1 = 0
            java.lang.Object r0 = r2.r(r0, r1, r1)
            z84 r0 = (defpackage.z84) r0
            r0.h(r2)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.c94.c():s74");
    }

    @Override // defpackage.da4
    public final int e() {
        int i = this.zzd;
        if (i != -1) {
            return i;
        }
        int iE = ka4.c.a(getClass()).e(this);
        this.zzd = iE;
        return iE;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            return ka4.c.a(getClass()).d(this, (c94) obj);
        }
        return false;
    }

    @Override // defpackage.ea4
    public final /* bridge */ /* synthetic */ da4 f() {
        return (c94) r(6, null, null);
    }

    @Override // defpackage.t74
    public final int g() {
        return this.zzd;
    }

    @Override // defpackage.t74
    public final void h(int i) {
        this.zzd = i;
    }

    public final int hashCode() {
        int i = this.zzb;
        if (i != 0) {
            return i;
        }
        int iB = ka4.c.a(getClass()).b(this);
        this.zzb = iB;
        return iB;
    }

    public final <MessageType extends c94<MessageType, BuilderType>, BuilderType extends z84<MessageType, BuilderType>> BuilderType m() {
        return (BuilderType) r(5, null, null);
    }

    public final BuilderType n() {
        BuilderType buildertype = (BuilderType) r(5, null, null);
        buildertype.h(this);
        return buildertype;
    }

    public final void o(l84 l84Var) throws IOException {
        na4 na4VarA = ka4.c.a(getClass());
        m84 m84Var = l84Var.a;
        if (m84Var == null) {
            m84Var = new m84(l84Var);
        }
        na4VarA.i(this, m84Var);
    }

    public abstract Object r(int i, Object obj, Object obj2);

    public final String toString() throws SecurityException {
        String string = super.toString();
        StringBuilder sb = new StringBuilder();
        sb.append("# ");
        sb.append(string);
        c50.C3(this, sb, 0);
        return sb.toString();
    }
}
