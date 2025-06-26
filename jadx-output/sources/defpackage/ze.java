package defpackage;

import android.text.TextUtils;
import java.util.Objects;

/* loaded from: classes.dex */
public class ze implements xe {
    public String a;
    public int b;
    public int c;

    public ze(String str, int i, int i2) {
        this.a = str;
        this.b = i;
        this.c = i2;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ze)) {
            return false;
        }
        ze zeVar = (ze) obj;
        return TextUtils.equals(this.a, zeVar.a) && this.b == zeVar.b && this.c == zeVar.c;
    }

    public int hashCode() {
        return Objects.hash(this.a, Integer.valueOf(this.b), Integer.valueOf(this.c));
    }
}
