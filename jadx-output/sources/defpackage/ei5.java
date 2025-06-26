package defpackage;

import java.io.File;
import java.io.FilenameFilter;
import java.util.Set;

/* loaded from: classes.dex */
public class ei5 implements FilenameFilter {
    public final /* synthetic */ Set e;

    public ei5(ii5 ii5Var, Set set) {
        this.e = set;
    }

    @Override // java.io.FilenameFilter
    public boolean accept(File file, String str) {
        if (str.length() < 35) {
            return false;
        }
        return this.e.contains(str.substring(0, 35));
    }
}
