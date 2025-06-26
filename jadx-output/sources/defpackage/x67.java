package defpackage;

import defpackage.e57;
import defpackage.i47;
import defpackage.z37;
import java.nio.charset.Charset;
import okhttp3.internal.http2.Header;

/* loaded from: classes2.dex */
public abstract class x67 extends e57.c {
    public static final z37.a<Integer> y;
    public static final i47.f<Integer> z;
    public x47 u;
    public i47 v;
    public Charset w;
    public boolean x;

    public class a implements z37.a<Integer> {
        @Override // i47.i
        public byte[] a(Object obj) {
            throw new UnsupportedOperationException();
        }

        @Override // i47.i
        public Object b(byte[] bArr) {
            if (bArr.length >= 3) {
                return Integer.valueOf((bArr[2] - 48) + jo.b(bArr[1], -48, 10, (bArr[0] - 48) * 100));
            }
            StringBuilder sbZ = jo.z("Malformed status code ");
            sbZ.append(new String(bArr, z37.a));
            throw new NumberFormatException(sbZ.toString());
        }
    }

    static {
        a aVar = new a();
        y = aVar;
        z = z37.a(Header.RESPONSE_STATUS_UTF8, aVar);
    }

    public x67(int i, a97 a97Var, g97 g97Var) {
        super(i, a97Var, g97Var);
        this.w = kd5.b;
    }

    public static Charset j(i47 i47Var) {
        String str = (String) i47Var.d(u67.g);
        if (str != null) {
            try {
                return Charset.forName(str.split("charset=", 2)[r2.length - 1].trim());
            } catch (Exception unused) {
            }
        }
        return kd5.b;
    }

    public final x47 k(i47 i47Var) {
        char cCharAt;
        Integer num = (Integer) i47Var.d(z);
        if (num == null) {
            return x47.m.h("Missing HTTP status code");
        }
        String str = (String) i47Var.d(u67.g);
        boolean z2 = false;
        if (str != null && 16 <= str.length()) {
            String lowerCase = str.toLowerCase();
            if (lowerCase.startsWith("application/grpc") && (lowerCase.length() == 16 || (cCharAt = lowerCase.charAt(16)) == '+' || cCharAt == ';')) {
                z2 = true;
            }
        }
        if (z2) {
            return null;
        }
        return u67.f(num.intValue()).b("invalid content-type: " + str);
    }
}
