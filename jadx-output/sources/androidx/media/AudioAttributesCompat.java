package androidx.media;

import android.util.SparseIntArray;
import defpackage.wi;
import defpackage.zd;

/* loaded from: classes.dex */
public class AudioAttributesCompat implements wi {
    public static final SparseIntArray b;
    public zd a;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        b = sparseIntArray;
        sparseIntArray.put(5, 1);
        sparseIntArray.put(6, 2);
        sparseIntArray.put(7, 2);
        sparseIntArray.put(8, 1);
        sparseIntArray.put(9, 1);
        sparseIntArray.put(10, 1);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof AudioAttributesCompat)) {
            return false;
        }
        AudioAttributesCompat audioAttributesCompat = (AudioAttributesCompat) obj;
        zd zdVar = this.a;
        return zdVar == null ? audioAttributesCompat.a == null : zdVar.equals(audioAttributesCompat.a);
    }

    public int hashCode() {
        return this.a.hashCode();
    }

    public String toString() {
        return this.a.toString();
    }
}
