package defpackage;

import defpackage.i47;
import java.nio.charset.Charset;

/* loaded from: classes2.dex */
public final class z37 {
    public static final Charset a = Charset.forName("US-ASCII");
    public static final de5 b = i47.d;

    public interface a<T> extends i47.i<T> {
    }

    public static <T> i47.f<T> a(String str, a<T> aVar) {
        boolean z = false;
        if (!str.isEmpty() && str.charAt(0) == ':') {
            z = true;
        }
        return i47.f.b(str, z, aVar);
    }
}
