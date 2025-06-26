package defpackage;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* loaded from: classes.dex */
public final class zg3 extends ah3 {
    public final long P0;
    public final List<ch3> Q0;
    public final List<zg3> R0;

    public zg3(int i, long j) {
        super(i);
        this.P0 = j;
        this.Q0 = new ArrayList();
        this.R0 = new ArrayList();
    }

    public final ch3 b(int i) {
        int size = this.Q0.size();
        for (int i2 = 0; i2 < size; i2++) {
            ch3 ch3Var = this.Q0.get(i2);
            if (ch3Var.a == i) {
                return ch3Var;
            }
        }
        return null;
    }

    public final zg3 c(int i) {
        int size = this.R0.size();
        for (int i2 = 0; i2 < size; i2++) {
            zg3 zg3Var = this.R0.get(i2);
            if (zg3Var.a == i) {
                return zg3Var;
            }
        }
        return null;
    }

    @Override // defpackage.ah3
    public final String toString() {
        String strA = ah3.a(this.a);
        String string = Arrays.toString(this.Q0.toArray());
        String string2 = Arrays.toString(this.R0.toArray());
        StringBuilder sbY = jo.y(jo.x(string2, jo.x(string, jo.x(strA, 22))), strA, " leaves: ", string, " containers: ");
        sbY.append(string2);
        return sbY.toString();
    }
}
