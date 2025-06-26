package defpackage;

import android.content.Context;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class vs implements ps {
    public final a a;
    public final ts b;
    public final Map<String, xs> c;

    public static class a {
        public final Context a;
        public Map<String, String> b = null;

        public a(Context context) {
            this.a = context;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x003a  */
        /* JADX WARN: Removed duplicated region for block: B:17:0x0044  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public defpackage.os a(java.lang.String r15) throws android.content.pm.PackageManager.NameNotFoundException {
            /*
                Method dump skipped, instructions count: 254
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: vs.a.a(java.lang.String):os");
        }
    }

    public vs(Context context, ts tsVar) {
        a aVar = new a(context);
        this.c = new HashMap();
        this.a = aVar;
        this.b = tsVar;
    }

    @Override // defpackage.ps
    public synchronized xs a(String str) {
        if (this.c.containsKey(str)) {
            return this.c.get(str);
        }
        os osVarA = this.a.a(str);
        if (osVarA == null) {
            return null;
        }
        ts tsVar = this.b;
        xs xsVarCreate = osVarA.create(new ns(tsVar.a, tsVar.b, tsVar.c, str));
        this.c.put(str, xsVarCreate);
        return xsVarCreate;
    }
}
