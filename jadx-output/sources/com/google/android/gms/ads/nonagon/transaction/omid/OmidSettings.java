package com.google.android.gms.ads.nonagon.transaction.omid;

import defpackage.ox;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class OmidSettings {
    public final JSONObject a;

    public OmidSettings(JSONObject jSONObject) {
        this.a = jSONObject;
    }

    public OmidMediaType getMediaType() {
        int iOptInt = this.a.optInt("media_type", -1);
        return iOptInt != 0 ? iOptInt != 1 ? OmidMediaType.UNKNOWN : OmidMediaType.VIDEO : OmidMediaType.DISPLAY;
    }

    public String getVideoEventsOwner() {
        if (ox.a[getMediaType().ordinal()] != 1) {
            return "javascript";
        }
        return null;
    }
}
