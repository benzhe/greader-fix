package defpackage;

import defpackage.xl5;
import java.io.File;
import java.util.Map;

/* loaded from: classes.dex */
public class wl5 implements xl5 {
    public final File a;

    public wl5(File file) {
        this.a = file;
    }

    @Override // defpackage.xl5
    public Map<String, String> a() {
        return null;
    }

    @Override // defpackage.xl5
    public String b() {
        return this.a.getName();
    }

    @Override // defpackage.xl5
    public File c() {
        return null;
    }

    @Override // defpackage.xl5
    public File[] d() {
        return this.a.listFiles();
    }

    @Override // defpackage.xl5
    public String e() {
        return null;
    }

    @Override // defpackage.xl5
    public xl5.a getType() {
        return xl5.a.NATIVE;
    }

    @Override // defpackage.xl5
    public void remove() {
        for (File file : d()) {
            ah5 ah5Var = ah5.a;
            StringBuilder sbZ = jo.z("Removing native report file at ");
            sbZ.append(file.getPath());
            ah5Var.b(sbZ.toString());
            file.delete();
        }
        ah5 ah5Var2 = ah5.a;
        StringBuilder sbZ2 = jo.z("Removing native report directory at ");
        sbZ2.append(this.a);
        ah5Var2.b(sbZ2.toString());
        this.a.delete();
    }
}
