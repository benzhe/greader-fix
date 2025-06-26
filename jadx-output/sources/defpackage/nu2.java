package defpackage;

import java.io.File;
import java.io.FilenameFilter;
import java.util.Objects;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public final class nu2 implements FilenameFilter {
    public final Pattern e;

    public nu2(Pattern pattern) {
        Objects.requireNonNull(pattern);
        this.e = pattern;
    }

    @Override // java.io.FilenameFilter
    public final boolean accept(File file, String str) {
        return this.e.matcher(str).matches();
    }
}
