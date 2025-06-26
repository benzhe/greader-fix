package com.google.android.datatransport.cct;

import androidx.annotation.Keep;
import defpackage.er;
import defpackage.os;
import defpackage.ss;
import defpackage.xs;

@Keep
/* loaded from: classes.dex */
public class CctBackendFactory implements os {
    @Override // defpackage.os
    public xs create(ss ssVar) {
        return new er(ssVar.a(), ssVar.d(), ssVar.c());
    }
}
