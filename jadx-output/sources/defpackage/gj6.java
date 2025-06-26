package defpackage;

import defpackage.ak6;
import defpackage.cj6;
import defpackage.gj6;
import defpackage.ii6;
import defpackage.jj6;
import gj6.a;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes.dex */
public abstract class gj6<MessageType extends gj6<MessageType, BuilderType>, BuilderType extends a<MessageType, BuilderType>> extends ii6<MessageType, BuilderType> {
    private static Map<Object, gj6<?, ?>> defaultInstanceMap = new ConcurrentHashMap();
    public zk6 unknownFields = zk6.f;
    public int memoizedSerializedSize = -1;

    public static abstract class a<MessageType extends gj6<MessageType, BuilderType>, BuilderType extends a<MessageType, BuilderType>> extends ii6.a<MessageType, BuilderType> {
        public final MessageType e;
        public MessageType f;
        public boolean g = false;

        public a(MessageType messagetype) {
            this.e = messagetype;
            this.f = (MessageType) messagetype.r(f.NEW_MUTABLE_INSTANCE, null, null);
        }

        @Override // defpackage.bk6
        public ak6 c() {
            return this.e;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public Object clone() throws CloneNotSupportedException {
            a aVarJ = this.e.j();
            aVarJ.p(m());
            return aVarJ;
        }

        public final MessageType l() {
            MessageType messagetype = (MessageType) m();
            if (messagetype.isInitialized()) {
                return messagetype;
            }
            throw new xk6();
        }

        public MessageType m() {
            if (this.g) {
                return this.f;
            }
            MessageType messagetype = this.f;
            Objects.requireNonNull(messagetype);
            lk6.c.b(messagetype).f(messagetype);
            this.g = true;
            return this.f;
        }

        public final void o() {
            if (this.g) {
                MessageType messagetype = (MessageType) this.f.r(f.NEW_MUTABLE_INSTANCE, null, null);
                lk6.c.b(messagetype).b(messagetype, this.f);
                this.f = messagetype;
                this.g = false;
            }
        }

        public BuilderType p(MessageType messagetype) {
            o();
            q(this.f, messagetype);
            return this;
        }

        public final void q(MessageType messagetype, MessageType messagetype2) {
            lk6.c.b(messagetype).b(messagetype, messagetype2);
        }
    }

    public static class b<T extends gj6<T, ?>> extends ji6<T> {
        public final T b;

        public b(T t) {
            this.b = t;
        }
    }

    public static abstract class c<MessageType extends c<MessageType, BuilderType>, BuilderType extends Object<MessageType, BuilderType>> extends gj6<MessageType, BuilderType> implements Object<MessageType, BuilderType> {
        public cj6<d> extensions = cj6.d;

        public cj6<d> B() {
            cj6<d> cj6Var = this.extensions;
            if (cj6Var.b) {
                this.extensions = cj6Var.clone();
            }
            return this.extensions;
        }

        @Override // defpackage.gj6, defpackage.bk6
        public /* bridge */ /* synthetic */ ak6 c() {
            return c();
        }

        @Override // defpackage.gj6, defpackage.ak6
        public /* bridge */ /* synthetic */ ak6.a d() {
            return d();
        }

        @Override // defpackage.gj6, defpackage.ak6
        public /* bridge */ /* synthetic */ ak6.a j() {
            return j();
        }
    }

    public static final class d implements cj6.a<d> {
        @Override // cj6.a
        public gl6 F() {
            throw null;
        }

        @Override // cj6.a
        public boolean G() {
            return false;
        }

        @Override // java.lang.Comparable
        public int compareTo(Object obj) {
            Objects.requireNonNull((d) obj);
            return 0;
        }

        @Override // cj6.a
        public int g() {
            return 0;
        }

        @Override // cj6.a
        public boolean o() {
            return false;
        }

        @Override // cj6.a
        public fl6 q() {
            return null;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // cj6.a
        public ak6.a u(ak6.a aVar, ak6 ak6Var) {
            a aVar2 = (a) aVar;
            aVar2.p((gj6) ak6Var);
            return aVar2;
        }
    }

    public static class e<ContainingType extends ak6, Type> extends wi6<ContainingType, Type> {
    }

    public enum f {
        GET_MEMOIZED_IS_INITIALIZED,
        SET_MEMOIZED_IS_INITIALIZED,
        BUILD_MESSAGE_INFO,
        NEW_MUTABLE_INSTANCE,
        NEW_BUILDER,
        GET_DEFAULT_INSTANCE,
        GET_PARSER
    }

    public static <T extends gj6<T, ?>> T p(T t) throws kj6 {
        if (t == null || t.isInitialized()) {
            return t;
        }
        throw new kj6(new xk6().getMessage());
    }

    public static <T extends gj6<?, ?>> T s(Class<T> cls) throws ClassNotFoundException {
        gj6<?, ?> gj6Var = defaultInstanceMap.get(cls);
        if (gj6Var == null) {
            try {
                Class.forName(cls.getName(), true, cls.getClassLoader());
                gj6Var = defaultInstanceMap.get(cls);
            } catch (ClassNotFoundException e2) {
                throw new IllegalStateException("Class initialization cannot fail.", e2);
            }
        }
        if (gj6Var == null) {
            gj6Var = (T) ((gj6) cl6.a(cls)).c();
            if (gj6Var == null) {
                throw new IllegalStateException();
            }
            defaultInstanceMap.put(cls, gj6Var);
        }
        return (T) gj6Var;
    }

    public static Object u(Method method, Object obj, Object... objArr) {
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

    public static <E> jj6.d<E> v(jj6.d<E> dVar) {
        int size = dVar.size();
        return dVar.E(size == 0 ? 10 : size * 2);
    }

    public static <T extends gj6<T, ?>> T x(T t, byte[] bArr) throws kj6 {
        int length = bArr.length;
        yi6 yi6VarA = yi6.a();
        T t2 = (T) t.r(f.NEW_MUTABLE_INSTANCE, null, null);
        try {
            qk6 qk6VarB = lk6.c.b(t2);
            qk6VarB.i(t2, bArr, 0, 0 + length, new ni6(yi6VarA));
            qk6VarB.f(t2);
            if (t2.memoizedHashCode != 0) {
                throw new RuntimeException();
            }
            p(t2);
            return t2;
        } catch (IOException e2) {
            if (e2.getCause() instanceof kj6) {
                throw ((kj6) e2.getCause());
            }
            throw new kj6(e2.getMessage());
        } catch (IndexOutOfBoundsException unused) {
            throw kj6.h();
        }
    }

    public static <T extends gj6<T, ?>> T y(T t, ri6 ri6Var, yi6 yi6Var) throws kj6 {
        T t2 = (T) t.r(f.NEW_MUTABLE_INSTANCE, null, null);
        try {
            qk6 qk6VarB = lk6.c.b(t2);
            si6 si6Var = ri6Var.d;
            if (si6Var == null) {
                si6Var = new si6(ri6Var);
            }
            qk6VarB.h(t2, si6Var, yi6Var);
            qk6VarB.f(t2);
            return t2;
        } catch (IOException e2) {
            if (e2.getCause() instanceof kj6) {
                throw ((kj6) e2.getCause());
            }
            throw new kj6(e2.getMessage());
        } catch (RuntimeException e3) {
            if (e3.getCause() instanceof kj6) {
                throw ((kj6) e3.getCause());
            }
            throw e3;
        }
    }

    public static <T extends gj6<?, ?>> void z(Class<T> cls, T t) {
        defaultInstanceMap.put(cls, t);
    }

    @Override // defpackage.ak6
    /* renamed from: A, reason: merged with bridge method [inline-methods] */
    public final BuilderType d() {
        BuilderType buildertype = (BuilderType) r(f.NEW_BUILDER, null, null);
        buildertype.o();
        buildertype.q(buildertype.f, this);
        return buildertype;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            return lk6.c.b(this).a(this, (gj6) obj);
        }
        return false;
    }

    @Override // defpackage.ak6
    public void f(ti6 ti6Var) throws IOException {
        qk6 qk6VarB = lk6.c.b(this);
        ui6 ui6Var = ti6Var.a;
        if (ui6Var == null) {
            ui6Var = new ui6(ti6Var);
        }
        qk6VarB.e(this, ui6Var);
    }

    @Override // defpackage.ak6
    public int h() {
        if (this.memoizedSerializedSize == -1) {
            this.memoizedSerializedSize = lk6.c.b(this).j(this);
        }
        return this.memoizedSerializedSize;
    }

    public int hashCode() {
        int i = this.memoizedHashCode;
        if (i != 0) {
            return i;
        }
        int iD = lk6.c.b(this).d(this);
        this.memoizedHashCode = iD;
        return iD;
    }

    @Override // defpackage.bk6
    public final boolean isInitialized() {
        byte bByteValue = ((Byte) r(f.GET_MEMOIZED_IS_INITIALIZED, null, null)).byteValue();
        if (bByteValue == 1) {
            return true;
        }
        if (bByteValue == 0) {
            return false;
        }
        boolean zG = lk6.c.b(this).g(this);
        r(f.SET_MEMOIZED_IS_INITIALIZED, zG ? this : null, null);
        return zG;
    }

    @Override // defpackage.ak6
    public final ik6<MessageType> k() {
        return (ik6) r(f.GET_PARSER, null, null);
    }

    @Override // defpackage.ii6
    public int l() {
        return this.memoizedSerializedSize;
    }

    @Override // defpackage.ii6
    public void o(int i) {
        this.memoizedSerializedSize = i;
    }

    public final <MessageType extends gj6<MessageType, BuilderType>, BuilderType extends a<MessageType, BuilderType>> BuilderType q() {
        return (BuilderType) r(f.NEW_BUILDER, null, null);
    }

    public abstract Object r(f fVar, Object obj, Object obj2);

    @Override // defpackage.bk6
    /* renamed from: t, reason: merged with bridge method [inline-methods] */
    public final MessageType c() {
        return (MessageType) r(f.GET_DEFAULT_INSTANCE, null, null);
    }

    public String toString() throws SecurityException {
        String string = super.toString();
        StringBuilder sb = new StringBuilder();
        sb.append("# ");
        sb.append(string);
        n56.G1(this, sb, 0);
        return sb.toString();
    }

    @Override // defpackage.ak6
    /* renamed from: w, reason: merged with bridge method [inline-methods] */
    public final BuilderType j() {
        return (BuilderType) r(f.NEW_BUILDER, null, null);
    }
}
