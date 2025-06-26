package com.google.firebase.analytics.connector.internal;

import android.content.Context;
import androidx.annotation.Keep;
import androidx.annotation.RecentlyNonNull;
import defpackage.bf5;
import defpackage.ef5;
import defpackage.ig5;
import defpackage.n56;
import defpackage.no5;
import defpackage.pe5;
import defpackage.sf5;
import defpackage.xf5;
import java.util.Arrays;
import java.util.List;

@Keep
/* loaded from: classes.dex */
public class AnalyticsConnectorRegistrar implements xf5 {
    public static final /* synthetic */ int zza = 0;

    @Override // defpackage.xf5
    @RecentlyNonNull
    @Keep
    public List<sf5<?>> getComponents() {
        sf5.b bVarA = sf5.a(bf5.class);
        bVarA.a(new ig5(pe5.class, 1, 0));
        bVarA.a(new ig5(Context.class, 1, 0));
        bVarA.a(new ig5(no5.class, 1, 0));
        bVarA.d(ef5.a);
        bVarA.c();
        return Arrays.asList(bVarA.b(), n56.F("fire-analytics", "18.0.1"));
    }
}
