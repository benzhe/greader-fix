package defpackage;

import com.noinnion.android.greader.ui.subscription.SubscribeSearchFragment;
import com.noinnion.android.reader.common.subscription.Feed;

/* loaded from: classes2.dex */
public class ou6 implements bn6 {
    public final /* synthetic */ SubscribeSearchFragment a;

    public ou6(SubscribeSearchFragment subscribeSearchFragment) {
        this.a = subscribeSearchFragment;
    }

    @Override // defpackage.bn6
    public void a(Object obj) {
        if (obj instanceof Feed) {
            SubscribeSearchFragment.d(this.a, (Feed) obj);
        }
    }
}
