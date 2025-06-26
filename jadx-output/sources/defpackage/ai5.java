package defpackage;

import java.io.File;
import java.io.FilenameFilter;

/* loaded from: classes.dex */
public final /* synthetic */ class ai5 implements FilenameFilter {
    public static final ai5 e = new ai5();

    @Override // java.io.FilenameFilter
    public boolean accept(File file, String str) {
        FilenameFilter filenameFilter = ii5.x;
        return str.startsWith(".ae");
    }
}
