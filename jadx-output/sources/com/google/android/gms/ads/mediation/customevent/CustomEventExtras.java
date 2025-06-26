package com.google.android.gms.ads.mediation.customevent;

import com.google.ads.mediation.NetworkExtras;
import java.util.HashMap;

@Deprecated
/* loaded from: classes.dex */
public final class CustomEventExtras implements NetworkExtras {
    public final HashMap<String, Object> a = new HashMap<>();

    public final Object getExtra(String str) {
        return this.a.get(str);
    }

    public final void setExtra(String str, Object obj) {
        this.a.put(str, obj);
    }
}
