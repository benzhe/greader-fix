package defpackage;

import android.media.AudioAttributes;

/* loaded from: classes.dex */
public class ae implements zd {
    public AudioAttributes a;
    public int b = -1;

    public boolean equals(Object obj) {
        if (obj instanceof ae) {
            return this.a.equals(((ae) obj).a);
        }
        return false;
    }

    public int hashCode() {
        return this.a.hashCode();
    }

    public String toString() {
        StringBuilder sbZ = jo.z("AudioAttributesCompat: audioattributes=");
        sbZ.append(this.a);
        return sbZ.toString();
    }
}
