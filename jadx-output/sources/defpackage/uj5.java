package defpackage;

import android.content.Context;
import defpackage.ii5;
import java.io.File;

/* loaded from: classes.dex */
public class uj5 {
    public static final c d = new c(null);
    public final Context a;
    public final b b;
    public tj5 c = d;

    public interface b {
    }

    public static final class c implements tj5 {
        public c(a aVar) {
        }

        @Override // defpackage.tj5
        public void a() {
        }

        @Override // defpackage.tj5
        public String b() {
            return null;
        }

        @Override // defpackage.tj5
        public byte[] c() {
            return null;
        }

        @Override // defpackage.tj5
        public void d() {
        }

        @Override // defpackage.tj5
        public void e(long j, String str) {
        }
    }

    public uj5(Context context, b bVar) {
        this.a = context;
        this.b = bVar;
        a(null);
    }

    public final void a(String str) {
        this.c.a();
        this.c = d;
        if (str == null) {
            return;
        }
        if (!vh5.i(this.a, "com.crashlytics.CollectCustomLogs", true)) {
            ah5.a.b("Preferences requested no custom logs. Aborting log file creation.");
        } else {
            this.c = new xj5(new File(((ii5.j) this.b).a(), jo.o("crashlytics-userlog-", str, ".temp")), 65536);
        }
    }
}
