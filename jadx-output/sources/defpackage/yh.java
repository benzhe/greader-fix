package defpackage;

import android.view.View;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class yh {
    public View b;
    public final Map<String, Object> a = new HashMap();
    public final ArrayList<qh> c = new ArrayList<>();

    @Deprecated
    public yh() {
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof yh)) {
            return false;
        }
        yh yhVar = (yh) obj;
        return this.b == yhVar.b && this.a.equals(yhVar.a);
    }

    public int hashCode() {
        return this.a.hashCode() + (this.b.hashCode() * 31);
    }

    public String toString() {
        StringBuilder sbZ = jo.z("TransitionValues@");
        sbZ.append(Integer.toHexString(hashCode()));
        sbZ.append(":\n");
        StringBuilder sbB = jo.B(sbZ.toString(), "    view = ");
        sbB.append(this.b);
        sbB.append("\n");
        String strN = jo.n(sbB.toString(), "    values:");
        for (String str : this.a.keySet()) {
            strN = strN + "    " + str + ": " + this.a.get(str) + "\n";
        }
        return strN;
    }

    public yh(View view) {
        this.b = view;
    }
}
