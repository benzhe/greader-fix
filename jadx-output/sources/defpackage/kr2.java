package defpackage;

import defpackage.hr2;

/* loaded from: classes.dex */
public final class kr2 implements z63<Integer, hr2.a> {
    @Override // defpackage.z63
    public final hr2.a convert(Integer num) {
        hr2.a aVar = hr2.a.BLOCKED_REASON_UNKNOWN;
        int iIntValue = num.intValue();
        hr2.a aVar2 = iIntValue != 1 ? iIntValue != 2 ? null : hr2.a.BLOCKED_REASON_BACKGROUND : aVar;
        return aVar2 == null ? aVar : aVar2;
    }
}
