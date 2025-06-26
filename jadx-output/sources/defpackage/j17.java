package defpackage;

import defpackage.g17;
import java.util.Objects;

/* loaded from: classes2.dex */
public final class j17 {
    public final h17 a;
    public final g17 b;
    public final Object c = this;

    public static class b {
        public h17 a;
        public g17.b b = new g17.b();

        public b a(String str, String str2) {
            g17.b bVar = this.b;
            Objects.requireNonNull(bVar);
            if (str.isEmpty()) {
                throw new IllegalArgumentException("name is empty");
            }
            int length = str.length();
            int i = 0;
            for (int i2 = 0; i2 < length; i2++) {
                char cCharAt = str.charAt(i2);
                if (cCharAt <= 31 || cCharAt >= 127) {
                    throw new IllegalArgumentException(String.format("Unexpected char %#04x at %d in header name: %s", Integer.valueOf(cCharAt), Integer.valueOf(i2), str));
                }
            }
            if (str2 == null) {
                throw new IllegalArgumentException("value == null");
            }
            int length2 = str2.length();
            for (int i3 = 0; i3 < length2; i3++) {
                char cCharAt2 = str2.charAt(i3);
                if (cCharAt2 <= 31 || cCharAt2 >= 127) {
                    throw new IllegalArgumentException(String.format("Unexpected char %#04x at %d in header value: %s", Integer.valueOf(cCharAt2), Integer.valueOf(i3), str2));
                }
            }
            while (i < bVar.a.size()) {
                if (str.equalsIgnoreCase(bVar.a.get(i))) {
                    bVar.a.remove(i);
                    bVar.a.remove(i);
                    i -= 2;
                }
                i += 2;
            }
            bVar.a.add(str);
            bVar.a.add(str2.trim());
            return this;
        }
    }

    public j17(b bVar, a aVar) {
        this.a = bVar.a;
        this.b = new g17(bVar.b, null);
    }

    public String toString() {
        StringBuilder sbC = jo.C("Request{method=", "GET", ", url=");
        sbC.append(this.a);
        sbC.append(", tag=");
        Object obj = this.c;
        if (obj == this) {
            obj = null;
        }
        sbC.append(obj);
        sbC.append('}');
        return sbC.toString();
    }
}
