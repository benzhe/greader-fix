package defpackage;

import java.io.File;

/* loaded from: classes2.dex */
public class mx6 implements Comparable<Object> {
    public long e;
    public File f;

    public mx6(File file) {
        this.f = file;
        this.e = file.lastModified();
    }

    @Override // java.lang.Comparable
    public int compareTo(Object obj) {
        long j = ((mx6) obj).e;
        long j2 = this.e;
        if (j2 < j) {
            return -1;
        }
        return j2 == j ? 0 : 1;
    }
}
