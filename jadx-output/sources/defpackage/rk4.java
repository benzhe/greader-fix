package defpackage;

import defpackage.pk4;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.Objects;
import org.apache.commons.lang3.CharEncoding;

/* loaded from: classes.dex */
public final class rk4 {
    public static final Charset a = Charset.forName("UTF-8");
    public static final byte[] b;

    static {
        Charset.forName(CharEncoding.ISO_8859_1);
        byte[] bArr = new byte[0];
        b = bArr;
        ByteBuffer.wrap(bArr);
        int length = bArr.length;
        int i = length + 0;
        try {
            if (length < 0) {
                throw new zk4("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
            }
            if ((0 - 0) + length > Integer.MAX_VALUE) {
                throw new zk4("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
            }
            int i2 = i + 0 + 0;
        } catch (zk4 e) {
            throw new IllegalArgumentException(e);
        }
    }

    public static int a(long j) {
        return (int) (j ^ (j >>> 32));
    }

    public static Object b(Object obj, Object obj2) {
        am4 am4Var = (am4) obj2;
        pj4 pj4Var = (pj4) ((am4) obj).r();
        Objects.requireNonNull(pj4Var);
        pk4.b bVar = (pk4.b) pj4Var;
        if (!bVar.e.getClass().isInstance(am4Var)) {
            throw new IllegalArgumentException("mergeFrom(MessageLite) can only merge messages of the same type.");
        }
        bVar.c((pk4) ((mj4) am4Var));
        return bVar.n();
    }
}
