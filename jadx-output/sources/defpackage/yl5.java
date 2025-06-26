package defpackage;

import defpackage.xl5;
import java.io.File;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class yl5 implements xl5 {
    public final File a;
    public final File[] b;
    public final Map<String, String> c;

    public yl5(File file, Map<String, String> map) {
        this.a = file;
        this.b = new File[]{file};
        this.c = new HashMap(map);
    }

    @Override // defpackage.xl5
    public Map<String, String> a() {
        return Collections.unmodifiableMap(this.c);
    }

    @Override // defpackage.xl5
    public String b() {
        String strE = e();
        return strE.substring(0, strE.lastIndexOf(46));
    }

    @Override // defpackage.xl5
    public File c() {
        return this.a;
    }

    @Override // defpackage.xl5
    public File[] d() {
        return this.b;
    }

    @Override // defpackage.xl5
    public String e() {
        return this.a.getName();
    }

    @Override // defpackage.xl5
    public xl5.a getType() {
        return xl5.a.JAVA;
    }

    @Override // defpackage.xl5
    public void remove() {
        ah5 ah5Var = ah5.a;
        StringBuilder sbZ = jo.z("Removing report at ");
        sbZ.append(this.a.getPath());
        ah5Var.b(sbZ.toString());
        this.a.delete();
    }
}
