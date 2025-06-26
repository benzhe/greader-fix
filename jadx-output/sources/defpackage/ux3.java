package defpackage;

import defpackage.sx3;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.Objects;
import org.apache.commons.lang3.CharEncoding;

/* loaded from: classes.dex */
public final class ux3 {
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
                throw new yx3("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
            }
            if ((0 - 0) + length > Integer.MAX_VALUE) {
                throw yx3.a();
            }
            int i2 = i + 0 + 0;
        } catch (yx3 e) {
            throw new IllegalArgumentException(e);
        }
    }

    public static Object a(Object obj, Object obj2) {
        xy3 xy3Var = (xy3) obj2;
        kw3 kw3Var = (kw3) ((xy3) obj).p();
        Objects.requireNonNull(kw3Var);
        sx3.a aVar = (sx3.a) kw3Var;
        if (!aVar.e.getClass().isInstance(xy3Var)) {
            throw new IllegalArgumentException("mergeFrom(MessageLite) can only merge messages of the same type.");
        }
        aVar.c((sx3) ((jw3) xy3Var));
        return aVar.e();
    }

    public static int b(boolean z) {
        return z ? 1231 : 1237;
    }

    public static int c(long j) {
        return (int) (j ^ (j >>> 32));
    }
}
