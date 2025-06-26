package defpackage;

import defpackage.sx3;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.ConcurrentHashMap;
import sx3.a;

/* loaded from: classes.dex */
public abstract class sx3<MessageType extends sx3<MessageType, BuilderType>, BuilderType extends a<MessageType, BuilderType>> extends jw3<MessageType, BuilderType> {
    private static Map<Object, sx3<?, ?>> zzjr = new ConcurrentHashMap();
    public c04 zzjp = c04.f;
    private int zzjq = -1;

    public static abstract class a<MessageType extends sx3<MessageType, BuilderType>, BuilderType extends a<MessageType, BuilderType>> extends kw3<MessageType, BuilderType> {
        public final MessageType e;
        public MessageType f;
        public boolean g = false;

        public a(MessageType messagetype) {
            this.e = messagetype;
            this.f = (MessageType) messagetype.d(4, null, null);
        }

        @Override // defpackage.zy3
        public final /* synthetic */ xy3 b() {
            return this.e;
        }

        public final BuilderType c(MessageType messagetype) {
            d();
            MessageType messagetype2 = this.f;
            iz3.c.b(messagetype2).g(messagetype2, messagetype);
            return this;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public /* synthetic */ Object clone() throws CloneNotSupportedException {
            a aVar = (a) this.e.d(5, null, null);
            aVar.c((sx3) e());
            return aVar;
        }

        public void d() {
            if (this.g) {
                MessageType messagetype = (MessageType) this.f.d(4, null, null);
                iz3.c.b(messagetype).g(messagetype, this.f);
                this.f = messagetype;
                this.g = false;
            }
        }

        public xy3 e() {
            if (!this.g) {
                MessageType messagetype = this.f;
                iz3.c.b(messagetype).b(messagetype);
                this.g = true;
            }
            return this.f;
        }
    }

    public static class b<T extends sx3<T, ?>> extends lw3<T> {
        public b(T t) {
        }
    }

    public static abstract class c<MessageType extends c<MessageType, BuilderType>, BuilderType extends Object<MessageType, BuilderType>> extends sx3<MessageType, BuilderType> implements zy3 {
        public jx3<d> zzjv = jx3.d;
    }

    public static final class d implements mx3<d> {
        @Override // defpackage.mx3
        public final int c() {
            return 0;
        }

        @Override // java.lang.Comparable
        public final /* synthetic */ int compareTo(Object obj) {
            Objects.requireNonNull((d) obj);
            return 0;
        }

        @Override // defpackage.mx3
        public final boolean e() {
            return false;
        }

        @Override // defpackage.mx3
        public final boolean j() {
            return false;
        }

        @Override // defpackage.mx3
        public final p04 m() {
            return null;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // defpackage.mx3
        public final yy3 p(yy3 yy3Var, xy3 xy3Var) {
            return ((a) yy3Var).c((sx3) xy3Var);
        }

        @Override // defpackage.mx3
        public final u04 v() {
            throw null;
        }

        @Override // defpackage.mx3
        public final cz3 z(cz3 cz3Var, cz3 cz3Var2) {
            throw new UnsupportedOperationException();
        }
    }

    public enum e {
        public static final /* synthetic */ int[] a = {1, 2, 3, 4, 5, 6, 7};
    }

    public static Object e(Method method, Object obj, Object... objArr) {
        try {
            return method.invoke(obj, objArr);
        } catch (IllegalAccessException e2) {
            throw new RuntimeException("Couldn't use Java reflection to implement protocol message reflection.", e2);
        } catch (InvocationTargetException e3) {
            Throwable cause = e3.getCause();
            if (cause instanceof RuntimeException) {
                throw ((RuntimeException) cause);
            }
            if (cause instanceof Error) {
                throw ((Error) cause);
            }
            throw new RuntimeException("Unexpected exception thrown by generated accessor method.", cause);
        }
    }

    public static <T extends sx3<?, ?>> void f(Class<T> cls, T t) {
        zzjr.put(cls, t);
    }

    public static <T extends sx3<?, ?>> T g(Class<T> cls) throws ClassNotFoundException {
        T t = (T) zzjr.get(cls);
        if (t == null) {
            try {
                Class.forName(cls.getName(), true, cls.getClassLoader());
                t = (T) zzjr.get(cls);
            } catch (ClassNotFoundException e2) {
                throw new IllegalStateException("Class initialization cannot fail.", e2);
            }
        }
        if (t != null) {
            return t;
        }
        String name = cls.getName();
        throw new IllegalStateException(name.length() != 0 ? "Unable to get default instance for: ".concat(name) : new String("Unable to get default instance for: "));
    }

    @Override // defpackage.jw3
    public final void a(int i) {
        this.zzjq = i;
    }

    @Override // defpackage.zy3
    public final /* synthetic */ xy3 b() {
        return (sx3) d(6, null, null);
    }

    @Override // defpackage.jw3
    public final int c() {
        return this.zzjq;
    }

    public abstract Object d(int i, Object obj, Object obj2);

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (((sx3) d(6, null, null)).getClass().isInstance(obj)) {
            return iz3.c.b(this).a(this, (sx3) obj);
        }
        return false;
    }

    public int hashCode() {
        int i = this.zzex;
        if (i != 0) {
            return i;
        }
        int iD = iz3.c.b(this).d(this);
        this.zzex = iD;
        return iD;
    }

    @Override // defpackage.zy3
    public final boolean isInitialized() {
        byte bByteValue = ((Byte) d(1, null, null)).byteValue();
        if (bByteValue == 1) {
            return true;
        }
        if (bByteValue == 0) {
            return false;
        }
        boolean zE = iz3.c.b(this).e(this);
        d(2, zE ? this : null, null);
        return zE;
    }

    @Override // defpackage.xy3
    public final int o() {
        if (this.zzjq == -1) {
            this.zzjq = iz3.c.b(this).h(this);
        }
        return this.zzjq;
    }

    @Override // defpackage.xy3
    public final /* synthetic */ yy3 p() {
        a aVar = (a) d(5, null, null);
        aVar.c(this);
        return aVar;
    }

    @Override // defpackage.xy3
    public final void q(zw3 zw3Var) throws IOException {
        nz3 nz3VarA = iz3.c.a(getClass());
        bx3 bx3Var = zw3Var.a;
        if (bx3Var == null) {
            bx3Var = new bx3(zw3Var);
        }
        nz3VarA.f(this, bx3Var);
    }

    @Override // defpackage.xy3
    public final /* synthetic */ yy3 r() {
        return (a) d(5, null, null);
    }

    public String toString() throws SecurityException {
        String string = super.toString();
        StringBuilder sb = new StringBuilder();
        sb.append("# ");
        sb.append(string);
        c50.h2(this, sb, 0);
        return sb.toString();
    }
}
