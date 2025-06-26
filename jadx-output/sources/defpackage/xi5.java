package defpackage;

import java.io.File;
import java.io.IOException;

/* loaded from: classes.dex */
public class xi5 {
    public final String a;
    public final ol5 b;

    public xi5(String str, ol5 ol5Var) {
        this.a = str;
        this.b = ol5Var;
    }

    public boolean a() {
        try {
            return b().createNewFile();
        } catch (IOException e) {
            ah5 ah5Var = ah5.a;
            StringBuilder sbZ = jo.z("Error creating marker: ");
            sbZ.append(this.a);
            ah5Var.e(sbZ.toString(), e);
            return false;
        }
    }

    public final File b() {
        return new File(this.b.a(), this.a);
    }
}
