package defpackage;

import java.util.List;

/* loaded from: classes2.dex */
public final class vn6 {
    public final List<String> a;
    public final String b;

    public vn6(List<String> list, String str) {
        im7.e(list, "itemIds");
        this.a = list;
        this.b = str;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof vn6)) {
            return false;
        }
        vn6 vn6Var = (vn6) obj;
        return im7.a(this.a, vn6Var.a) && im7.a(this.b, vn6Var.b);
    }

    public int hashCode() {
        List<String> list = this.a;
        int iHashCode = (list != null ? list.hashCode() : 0) * 31;
        String str = this.b;
        return iHashCode + (str != null ? str.hashCode() : 0);
    }

    public String toString() {
        StringBuilder sbZ = jo.z("ItemIdsResult(itemIds=");
        sbZ.append(this.a);
        sbZ.append(", continuation=");
        return jo.s(sbZ, this.b, ")");
    }
}
