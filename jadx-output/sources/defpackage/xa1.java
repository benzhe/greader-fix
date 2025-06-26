package defpackage;

import android.content.Context;
import java.util.Set;

/* loaded from: classes.dex */
public final class xa1 extends xd1<ua1> {
    public xa1(Set<sf1<ua1>> set) {
        super(set);
    }

    public final void G0(final Context context) {
        D0(new zd1(context) { // from class: wa1
            public final Context a;

            {
                this.a = context;
            }

            @Override // defpackage.zd1
            public final void e(Object obj) {
                ((ua1) obj).r(this.a);
            }
        });
    }

    public final void H0(final Context context) {
        D0(new zd1(context) { // from class: za1
            public final Context a;

            {
                this.a = context;
            }

            @Override // defpackage.zd1
            public final void e(Object obj) {
                ((ua1) obj).x(this.a);
            }
        });
    }

    public final void I0(final Context context) {
        D0(new zd1(context) { // from class: ya1
            public final Context a;

            {
                this.a = context;
            }

            @Override // defpackage.zd1
            public final void e(Object obj) {
                ((ua1) obj).s(this.a);
            }
        });
    }
}
