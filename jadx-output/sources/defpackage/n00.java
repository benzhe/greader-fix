package defpackage;

import android.content.Context;
import android.content.ServiceConnection;
import android.net.Uri;
import com.noinnion.android.greader.client.rss.syndication.namespace.NSContent;
import java.util.Arrays;

/* loaded from: classes.dex */
public abstract class n00 {
    public static final Object a = new Object();
    public static n00 b;

    public static final class a {
        public static final Uri e = new Uri.Builder().scheme(NSContent.NSTAG).authority("com.google.android.gms.chimera").build();
        public final String a;
        public final String b;
        public final int c;
        public final boolean d;

        public a(String str, String str2, int i, boolean z) {
            bi.g(str);
            this.a = str;
            bi.g(str2);
            this.b = str2;
            this.c = i;
            this.d = z;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return bi.B(this.a, aVar.a) && bi.B(this.b, aVar.b) && bi.B(null, null) && this.c == aVar.c && this.d == aVar.d;
        }

        public final int hashCode() {
            return Arrays.hashCode(new Object[]{this.a, this.b, null, Integer.valueOf(this.c), Boolean.valueOf(this.d)});
        }

        public final String toString() {
            String str = this.a;
            if (str != null) {
                return str;
            }
            throw null;
        }
    }

    public static n00 a(Context context) {
        synchronized (a) {
            if (b == null) {
                b = new k10(context.getApplicationContext());
            }
        }
        return b;
    }

    public abstract boolean b(a aVar, ServiceConnection serviceConnection, String str);

    public abstract void c(a aVar, ServiceConnection serviceConnection, String str);
}
