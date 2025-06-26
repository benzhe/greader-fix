package defpackage;

import android.graphics.Color;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final class g70 extends p70 {
    public static final int m;
    public static final int n;
    public static final int o;
    public final String e;
    public final List<h70> f = new ArrayList();
    public final List<u70> g = new ArrayList();
    public final int h;
    public final int i;
    public final int j;
    public final int k;
    public final int l;

    static {
        int iRgb = Color.rgb(12, 174, 206);
        m = iRgb;
        n = Color.rgb(204, 204, 204);
        o = iRgb;
    }

    public g70(String str, List<h70> list, Integer num, Integer num2, Integer num3, int i, int i2, boolean z) {
        this.e = str;
        for (int i3 = 0; i3 < list.size(); i3++) {
            h70 h70Var = list.get(i3);
            this.f.add(h70Var);
            this.g.add(h70Var);
        }
        this.h = num != null ? num.intValue() : n;
        this.i = num2 != null ? num2.intValue() : o;
        this.j = num3 != null ? num3.intValue() : 12;
        this.k = i;
        this.l = i2;
    }

    @Override // defpackage.m70
    public final String N0() {
        return this.e;
    }

    @Override // defpackage.m70
    public final List<u70> P5() {
        return this.g;
    }
}
