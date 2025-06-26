package com.noinnion.android.greader.client.rss.syndication.handler;

import com.noinnion.android.greader.client.rss.syndication.handler.TypeGetter;
import defpackage.jo;

/* loaded from: classes2.dex */
public class UnsupportedFeedtypeException extends Exception {
    private static final long serialVersionUID = 9105878964928170669L;
    private TypeGetter.Type type;

    public UnsupportedFeedtypeException(TypeGetter.Type type) {
        this.type = type;
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        if (this.type == TypeGetter.Type.INVALID) {
            return "Invalid type";
        }
        StringBuilder sbZ = jo.z("Type ");
        sbZ.append(this.type);
        sbZ.append(" not supported");
        return sbZ.toString();
    }

    public TypeGetter.Type getType() {
        return this.type;
    }
}
