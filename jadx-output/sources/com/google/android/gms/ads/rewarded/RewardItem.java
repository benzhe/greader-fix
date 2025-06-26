package com.google.android.gms.ads.rewarded;

import defpackage.qx;

/* loaded from: classes.dex */
public interface RewardItem {
    public static final RewardItem DEFAULT_REWARD = new qx();

    int getAmount();

    String getType();
}
