package defpackage;

import com.noinnion.android.greader.client.rss.syndication.namespace.NSRSS20;
import com.noinnion.android.greader.service.TtsService;

/* loaded from: classes2.dex */
public final class pp6<T, R> implements uc7<String, kv6> {
    public final /* synthetic */ TtsService.c e;

    public pp6(TtsService.c cVar) {
        this.e = cVar;
    }

    @Override // defpackage.uc7
    public kv6 apply(String str) {
        String str2 = str;
        im7.e(str2, NSRSS20.LANGUAGE);
        kv6 kv6Var = this.e.f;
        kv6Var.d = str2;
        return kv6Var;
    }
}
