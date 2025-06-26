package defpackage;

import defpackage.l47;
import defpackage.x87;
import java.net.URI;
import java.util.concurrent.Executor;
import org.apache.commons.text.lookup.StringLookupFactory;

/* loaded from: classes2.dex */
public abstract class o57 extends n47 {
    @Override // l47.c
    public String a() {
        return StringLookupFactory.KEY_DNS;
    }

    @Override // l47.c
    public l47 b(URI uri, l47.a aVar) throws ClassNotFoundException {
        boolean z;
        if (!StringLookupFactory.KEY_DNS.equals(uri.getScheme())) {
            return null;
        }
        String path = uri.getPath();
        c50.A(path, "targetPath");
        c50.p(path.startsWith("/"), "the path component (%s) of the target (%s) must start with '/'", path, uri);
        String strSubstring = path.substring(1);
        uri.getAuthority();
        x87.c<Executor> cVar = u67.m;
        pd5 pd5Var = new pd5();
        try {
            Class.forName("android.app.Application", false, getClass().getClassLoader());
            z = true;
        } catch (Exception unused) {
            z = false;
        }
        return new j67(strSubstring, aVar, cVar, pd5Var, z, k67.e);
    }

    @Override // defpackage.n47
    public boolean c() {
        return true;
    }
}
