package defpackage;

import defpackage.de5;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.BitSet;
import java.util.Locale;
import java.util.Objects;
import org.apache.commons.text.lookup.InetAddressKeys;

/* loaded from: classes2.dex */
public final class i47 {
    public static final d<String> c = new b();
    public static final de5 d;
    public Object[] a;
    public int b;

    /* JADX WARN: Unexpected interfaces in signature: [java.lang.Object<byte[]>] */
    public class a {
    }

    public class b implements d<String> {
        @Override // i47.d
        public String a(String str) {
            return str;
        }

        @Override // i47.d
        public String b(String str) {
            return str;
        }
    }

    public static class c<T> extends f<T> {
        public final d<T> f;

        public c(String str, boolean z, d dVar, a aVar) {
            super(str, z, dVar, null);
            c50.p(!str.endsWith("-bin"), "ASCII header is named %s.  Only binary headers may end with %s", str, "-bin");
            c50.A(dVar, "marshaller");
            this.f = dVar;
        }

        @Override // i47.f
        public T c(byte[] bArr) {
            return this.f.b(new String(bArr, kd5.a));
        }

        @Override // i47.f
        public byte[] d(T t) {
            return this.f.a(t).getBytes(kd5.a);
        }
    }

    public interface d<T> {
        String a(T t);

        T b(String str);
    }

    public interface e<T> {
        InputStream a(T t);
    }

    public static abstract class f<T> {
        public static final BitSet e;
        public final String a;
        public final String b;
        public final byte[] c;
        public final Object d;

        static {
            BitSet bitSet = new BitSet(127);
            bitSet.set(45);
            bitSet.set(95);
            bitSet.set(46);
            for (char c = '0'; c <= '9'; c = (char) (c + 1)) {
                bitSet.set(c);
            }
            for (char c2 = 'a'; c2 <= 'z'; c2 = (char) (c2 + 1)) {
                bitSet.set(c2);
            }
            e = bitSet;
        }

        public f(String str, boolean z, Object obj, a aVar) {
            c50.A(str, InetAddressKeys.KEY_NAME);
            this.a = str;
            String lowerCase = str.toLowerCase(Locale.ROOT);
            c50.A(lowerCase, InetAddressKeys.KEY_NAME);
            c50.t(!lowerCase.isEmpty(), "token must have at least 1 tchar");
            for (int i = 0; i < lowerCase.length(); i++) {
                char cCharAt = lowerCase.charAt(i);
                if ((!z || cCharAt != ':' || i != 0) && !e.get(cCharAt)) {
                    throw new IllegalArgumentException(c50.q0("Invalid character '%s' in key name '%s'", Character.valueOf(cCharAt), lowerCase));
                }
            }
            this.b = lowerCase;
            this.c = lowerCase.getBytes(kd5.a);
            this.d = obj;
        }

        public static <T> f<T> a(String str, d<T> dVar) {
            return new c(str, false, dVar, null);
        }

        public static <T> f<T> b(String str, boolean z, i<T> iVar) {
            return new h(str, z, iVar, null);
        }

        public abstract T c(byte[] bArr);

        public abstract byte[] d(T t);

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            return this.b.equals(((f) obj).b);
        }

        public final int hashCode() {
            return this.b.hashCode();
        }

        public String toString() {
            return jo.s(jo.z("Key{name='"), this.b, "'}");
        }
    }

    public static final class g<T> {
        public final e<T> a;
        public final T b;
        public volatile byte[] c;

        public byte[] a() {
            if (this.c == null) {
                synchronized (this) {
                    if (this.c == null) {
                        InputStream inputStreamA = this.a.a(this.b);
                        d<String> dVar = i47.c;
                        try {
                            this.c = ee5.b(inputStreamA);
                        } catch (IOException e) {
                            throw new RuntimeException("failure reading serialized stream", e);
                        }
                    }
                }
            }
            return this.c;
        }
    }

    public static final class h<T> extends f<T> {
        public final i<T> f;

        public h(String str, boolean z, i iVar, a aVar) {
            super(str, z, iVar, null);
            c50.p(!str.endsWith("-bin"), "ASCII header is named %s.  Only binary headers may end with %s", str, "-bin");
            c50.A(iVar, "marshaller");
            this.f = iVar;
        }

        @Override // i47.f
        public T c(byte[] bArr) {
            return this.f.b(bArr);
        }

        @Override // i47.f
        public byte[] d(T t) {
            return this.f.a(t);
        }
    }

    public interface i<T> {
        byte[] a(T t);

        T b(byte[] bArr);
    }

    static {
        de5.e eVar = (de5.e) de5.a;
        Character ch = eVar.d;
        de5 de5VarH = eVar;
        if (ch != null) {
            de5VarH = eVar.h(eVar.c, null);
        }
        d = de5VarH;
    }

    public i47(byte[]... bArr) {
        this.b = bArr.length / 2;
        this.a = bArr;
    }

    public final int a() {
        Object[] objArr = this.a;
        if (objArr != null) {
            return objArr.length;
        }
        return 0;
    }

    public <T> void b(f<T> fVar) {
        if (e()) {
            return;
        }
        int i2 = 0;
        int i3 = 0;
        while (true) {
            int i4 = this.b;
            if (i2 >= i4) {
                Arrays.fill(this.a, i3 * 2, i4 * 2, (Object) null);
                this.b = i3;
                return;
            }
            if (!Arrays.equals(fVar.c, g(i2))) {
                this.a[i3 * 2] = g(i2);
                j(i3, i(i2));
                i3++;
            }
            i2++;
        }
    }

    public final void c(int i2) {
        Object[] objArr = new Object[i2];
        if (!e()) {
            System.arraycopy(this.a, 0, objArr, 0, this.b * 2);
        }
        this.a = objArr;
    }

    public <T> T d(f<T> fVar) {
        int i2 = this.b;
        do {
            i2--;
            if (i2 < 0) {
                return null;
            }
        } while (!Arrays.equals(fVar.c, g(i2)));
        Object obj = this.a[(i2 * 2) + 1];
        if (obj instanceof byte[]) {
            return fVar.c((byte[]) obj);
        }
        g gVar = (g) obj;
        Objects.requireNonNull(gVar);
        return fVar.c(gVar.a());
    }

    public final boolean e() {
        return this.b == 0;
    }

    public void f(i47 i47Var) {
        if (i47Var.e()) {
            return;
        }
        int iA = a() - (this.b * 2);
        if (e() || iA < i47Var.b * 2) {
            c((this.b * 2) + (i47Var.b * 2));
        }
        System.arraycopy(i47Var.a, 0, this.a, this.b * 2, i47Var.b * 2);
        this.b += i47Var.b;
    }

    public final byte[] g(int i2) {
        return (byte[]) this.a[i2 * 2];
    }

    public <T> void h(f<T> fVar, T t) {
        c50.A(fVar, "key");
        c50.A(t, "value");
        int i2 = this.b * 2;
        if (i2 == 0 || i2 == a()) {
            c(Math.max(this.b * 2 * 2, 8));
        }
        int i3 = this.b * 2;
        this.a[i3] = fVar.c;
        this.a[i3 + 1] = fVar.d(t);
        this.b++;
    }

    public final Object i(int i2) {
        return this.a[(i2 * 2) + 1];
    }

    public final void j(int i2, Object obj) {
        if (this.a instanceof byte[][]) {
            c(a());
        }
        this.a[(i2 * 2) + 1] = obj;
    }

    public final byte[] k(int i2) {
        Object obj = this.a[(i2 * 2) + 1];
        return obj instanceof byte[] ? (byte[]) obj : ((g) obj).a();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("Metadata(");
        for (int i2 = 0; i2 < this.b; i2++) {
            if (i2 != 0) {
                sb.append(',');
            }
            byte[] bArrG = g(i2);
            Charset charset = kd5.a;
            String str = new String(bArrG, charset);
            sb.append(str);
            sb.append('=');
            if (str.endsWith("-bin")) {
                sb.append(d.c(k(i2)));
            } else {
                sb.append(new String(k(i2), charset));
            }
        }
        sb.append(')');
        return sb.toString();
    }

    public i47() {
    }
}
