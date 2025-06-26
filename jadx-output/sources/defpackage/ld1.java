package defpackage;

import com.google.android.gms.ads.doubleclick.AppEventListener;
import java.util.Set;

/* loaded from: classes.dex */
public final class ld1 extends xd1<AppEventListener> implements ta0 {
    public ld1(Set<sf1<AppEventListener>> set) {
        super(set);
    }

    @Override // defpackage.ta0
    public final synchronized void onAppEvent(final String str, final String str2) {
        D0(new zd1(str, str2) { // from class: kd1
            public final String a;
            public final String b;

            {
                this.a = str;
                this.b = str2;
            }

            @Override // defpackage.zd1
            public final void e(Object obj) {
                ((AppEventListener) obj).onAppEvent(this.a, this.b);
            }
        });
    }
}
