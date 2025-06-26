package defpackage;

import android.os.Bundle;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* loaded from: classes.dex */
public interface bf5 {

    public interface a {
        void a(Set<String> set);
    }

    public interface b {
        void a(int i, Bundle bundle);
    }

    public static class c {
        public String a;
        public String b;
        public Object c;
        public String d;
        public long e;
        public String f;
        public Bundle g;
        public String h;
        public Bundle i;
        public long j;
        public String k;
        public Bundle l;
        public long m;
        public boolean n;
        public long o;
    }

    void W(String str, String str2, Bundle bundle);

    Map<String, Object> a(boolean z);

    void b(c cVar);

    int c(String str);

    void clearConditionalUserProperty(String str, String str2, Bundle bundle);

    List<c> d(String str, String str2);

    void e(String str, String str2, Object obj);

    a f(String str, b bVar);
}
