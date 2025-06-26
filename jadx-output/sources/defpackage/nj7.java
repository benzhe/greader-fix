package defpackage;

import org.apache.commons.io.FilenameUtils;

/* loaded from: classes2.dex */
public final class nj7 implements Comparable<nj7> {
    public static final nj7 i = new nj7(1, 4, 30);
    public final int e;
    public final int f;
    public final int g;
    public final int h;

    public nj7(int i2, int i3, int i4) {
        this.f = i2;
        this.g = i3;
        this.h = i4;
        if (i2 >= 0 && 255 >= i2 && i3 >= 0 && 255 >= i3 && i4 >= 0 && 255 >= i4) {
            this.e = (i2 << 16) + (i3 << 8) + i4;
            return;
        }
        throw new IllegalArgumentException(("Version components are out of range: " + i2 + FilenameUtils.EXTENSION_SEPARATOR + i3 + FilenameUtils.EXTENSION_SEPARATOR + i4).toString());
    }

    @Override // java.lang.Comparable
    public int compareTo(nj7 nj7Var) {
        nj7 nj7Var2 = nj7Var;
        im7.e(nj7Var2, "other");
        return this.e - nj7Var2.e;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof nj7)) {
            obj = null;
        }
        nj7 nj7Var = (nj7) obj;
        return nj7Var != null && this.e == nj7Var.e;
    }

    public int hashCode() {
        return this.e;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f);
        sb.append(FilenameUtils.EXTENSION_SEPARATOR);
        sb.append(this.g);
        sb.append(FilenameUtils.EXTENSION_SEPARATOR);
        sb.append(this.h);
        return sb.toString();
    }
}
