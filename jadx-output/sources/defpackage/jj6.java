package defpackage;

import defpackage.gj6;
import defpackage.ii6;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.List;
import java.util.Objects;
import java.util.RandomAccess;
import org.apache.commons.lang3.CharEncoding;

/* loaded from: classes.dex */
public final class jj6 {
    public static final Charset a = Charset.forName("UTF-8");
    public static final byte[] b;

    public interface a {
        int g();
    }

    public interface b {
        boolean a(int i);
    }

    public interface c extends d<Integer> {
    }

    public interface d<E> extends List<E>, RandomAccess {
        d<E> E(int i);

        boolean F0();

        void t();
    }

    static {
        Charset.forName(CharEncoding.ISO_8859_1);
        byte[] bArr = new byte[0];
        b = bArr;
        ByteBuffer.wrap(bArr);
        ri6.g(bArr, 0, 0, false);
    }

    public static int a(boolean z) {
        return z ? 1231 : 1237;
    }

    public static int b(long j) {
        return (int) (j ^ (j >>> 32));
    }

    public static Object c(Object obj, Object obj2) {
        ak6 ak6Var = (ak6) obj2;
        ii6.a aVar = (ii6.a) ((ak6) obj).d();
        Objects.requireNonNull(aVar);
        gj6.a aVar2 = (gj6.a) aVar;
        if (!aVar2.e.getClass().isInstance(ak6Var)) {
            throw new IllegalArgumentException("mergeFrom(MessageLite) can only merge messages of the same type.");
        }
        aVar2.o();
        aVar2.q(aVar2.f, (gj6) ((ii6) ak6Var));
        return aVar2.m();
    }
}
