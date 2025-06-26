package defpackage;

import defpackage.pk4;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import pk4.b;

/* loaded from: classes.dex */
public abstract class pk4<MessageType extends pk4<MessageType, BuilderType>, BuilderType extends b<MessageType, BuilderType>> extends mj4<MessageType, BuilderType> {
    private static Map<Object, pk4<?, ?>> zzd = new ConcurrentHashMap();
    public bn4 zzb = bn4.e;
    private int zzc = -1;

    public static class a<T extends pk4<T, ?>> extends rj4<T> {
        public a(T t) {
        }
    }

    public static abstract class b<MessageType extends pk4<MessageType, BuilderType>, BuilderType extends b<MessageType, BuilderType>> extends pj4<MessageType, BuilderType> {
        public final MessageType e;
        public MessageType f;
        public boolean g = false;

        public b(MessageType messagetype) {
            this.e = messagetype;
            this.f = (MessageType) messagetype.j(4, null, null);
        }

        public static void d(MessageType messagetype, MessageType messagetype2) {
            km4.c.b(messagetype).d(messagetype, messagetype2);
        }

        public final BuilderType c(MessageType messagetype) {
            if (this.g) {
                f();
                this.g = false;
            }
            d(this.f, messagetype);
            return this;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public /* synthetic */ Object clone() throws CloneNotSupportedException {
            b bVar = (b) this.e.j(5, null, null);
            bVar.c((pk4) n());
            return bVar;
        }

        public void f() {
            MessageType messagetype = (MessageType) this.f.j(4, null, null);
            km4.c.b(messagetype).d(messagetype, this.f);
            this.f = messagetype;
        }

        @Override // defpackage.zl4
        /* renamed from: g, reason: merged with bridge method [inline-methods] */
        public MessageType n() {
            if (this.g) {
                return this.f;
            }
            MessageType messagetype = this.f;
            km4.c.b(messagetype).a(messagetype);
            this.g = true;
            return this.f;
        }

        public am4 j() {
            pk4 pk4Var = (pk4) n();
            if (pk4Var.e()) {
                return pk4Var;
            }
            throw new an4();
        }

        @Override // defpackage.bm4
        public final /* synthetic */ am4 m() {
            return this.e;
        }
    }

    public static abstract class c<MessageType extends c<MessageType, BuilderType>, BuilderType extends d<MessageType, BuilderType>> extends pk4<MessageType, BuilderType> implements bm4 {
        public kk4<f> zzc = kk4.d;
    }

    public static abstract class d<MessageType extends c<MessageType, BuilderType>, BuilderType extends d<MessageType, BuilderType>> extends b<MessageType, BuilderType> implements bm4 {
        public d(MessageType messagetype) {
            super(messagetype);
        }

        @Override // pk4.b
        public void f() {
            super.f();
            MessageType messagetype = this.f;
            ((c) messagetype).zzc = (kk4) ((c) messagetype).zzc.clone();
        }

        @Override // pk4.b
        /* renamed from: g */
        public /* synthetic */ pk4 n() {
            return (c) n();
        }

        @Override // pk4.b, defpackage.zl4
        public /* synthetic */ am4 n() {
            if (this.g) {
                return (c) this.f;
            }
            ((c) this.f).zzc.h();
            return (c) super.n();
        }
    }

    public enum e {
        public static final /* synthetic */ int[] a = {1, 2, 3, 4, 5, 6, 7};

        public static int[] a() {
            return (int[]) a.clone();
        }
    }

    public static final class f implements mk4<f> {
        @Override // defpackage.mk4
        public final fm4 A(fm4 fm4Var, fm4 fm4Var2) {
            throw new NoSuchMethodError();
        }

        @Override // defpackage.mk4
        public final int a() {
            throw new NoSuchMethodError();
        }

        @Override // defpackage.mk4
        public final qn4 b() {
            throw new NoSuchMethodError();
        }

        @Override // defpackage.mk4
        public final tn4 c() {
            throw new NoSuchMethodError();
        }

        @Override // java.lang.Comparable
        public final /* synthetic */ int compareTo(Object obj) {
            throw new NoSuchMethodError();
        }

        @Override // defpackage.mk4
        public final boolean d() {
            throw new NoSuchMethodError();
        }

        @Override // defpackage.mk4
        public final boolean h() {
            throw new NoSuchMethodError();
        }

        @Override // defpackage.mk4
        public final zl4 s(zl4 zl4Var, am4 am4Var) {
            throw new NoSuchMethodError();
        }
    }

    public static <T extends pk4<?, ?>> T g(Class<T> cls) throws ClassNotFoundException {
        pk4<?, ?> pk4Var = zzd.get(cls);
        if (pk4Var == null) {
            try {
                Class.forName(cls.getName(), true, cls.getClassLoader());
                pk4Var = zzd.get(cls);
            } catch (ClassNotFoundException e2) {
                throw new IllegalStateException("Class initialization cannot fail.", e2);
            }
        }
        if (pk4Var == null) {
            pk4Var = (T) ((pk4) in4.c(cls)).j(6, null, null);
            if (pk4Var == null) {
                throw new IllegalStateException();
            }
            zzd.put(cls, pk4Var);
        }
        return (T) pk4Var;
    }

    public static Object k(Method method, Object obj, Object... objArr) {
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

    public static <T extends pk4<?, ?>> void l(Class<T> cls, T t) {
        zzd.put(cls, t);
    }

    @Override // defpackage.am4
    public final void b(ck4 ck4Var) throws IOException {
        om4 om4VarB = km4.c.b(this);
        ek4 ek4Var = ck4Var.a;
        if (ek4Var == null) {
            ek4Var = new ek4(ck4Var);
        }
        om4VarB.g(this, ek4Var);
    }

    @Override // defpackage.mj4
    public final void c(int i) {
        this.zzc = i;
    }

    @Override // defpackage.bm4
    public final boolean e() {
        byte bByteValue = ((Byte) j(1, null, null)).byteValue();
        if (bByteValue == 1) {
            return true;
        }
        if (bByteValue == 0) {
            return false;
        }
        boolean zB = km4.c.b(this).b(this);
        j(2, zB ? this : null, null);
        return zB;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            return km4.c.b(this).e(this, (pk4) obj);
        }
        return false;
    }

    @Override // defpackage.mj4
    public final int f() {
        return this.zzc;
    }

    public int hashCode() {
        int i = this.zza;
        if (i != 0) {
            return i;
        }
        int iC = km4.c.b(this).c(this);
        this.zza = iC;
        return iC;
    }

    @Override // defpackage.am4
    public final int i() {
        if (this.zzc == -1) {
            this.zzc = km4.c.b(this).f(this);
        }
        return this.zzc;
    }

    public abstract Object j(int i, Object obj, Object obj2);

    @Override // defpackage.bm4
    public final /* synthetic */ am4 m() {
        return (pk4) j(6, null, null);
    }

    public final <MessageType extends pk4<MessageType, BuilderType>, BuilderType extends b<MessageType, BuilderType>> BuilderType o() {
        return (BuilderType) j(5, null, null);
    }

    @Override // defpackage.am4
    public final /* synthetic */ zl4 r() {
        b bVar = (b) j(5, null, null);
        bVar.c(this);
        return bVar;
    }

    public String toString() throws SecurityException {
        String string = super.toString();
        StringBuilder sb = new StringBuilder();
        sb.append("# ");
        sb.append(string);
        c50.i2(this, sb, 0);
        return sb.toString();
    }
}
