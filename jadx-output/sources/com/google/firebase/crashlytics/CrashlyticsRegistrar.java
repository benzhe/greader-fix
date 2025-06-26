package com.google.firebase.crashlytics;

import com.google.firebase.crashlytics.CrashlyticsRegistrar;
import defpackage.bf5;
import defpackage.ig5;
import defpackage.n56;
import defpackage.pe5;
import defpackage.sf5;
import defpackage.wf5;
import defpackage.xf5;
import defpackage.yg5;
import defpackage.z96;
import defpackage.zg5;
import java.util.Arrays;
import java.util.List;

/* loaded from: classes.dex */
public class CrashlyticsRegistrar implements xf5 {
    @Override // defpackage.xf5
    public List<sf5<?>> getComponents() {
        sf5.b bVarA = sf5.a(yg5.class);
        bVarA.a(new ig5(pe5.class, 1, 0));
        bVarA.a(new ig5(z96.class, 1, 0));
        bVarA.a(new ig5(bf5.class, 0, 0));
        bVarA.a(new ig5(zg5.class, 0, 0));
        bVarA.d(new wf5(this) { // from class: wg5
            public final CrashlyticsRegistrar a;

            {
                this.a = this;
            }

            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Removed duplicated region for block: B:39:0x0275  */
            /* JADX WARN: Removed duplicated region for block: B:70:0x03af  */
            /* JADX WARN: Type inference failed for: r3v17, types: [ih5, kh5] */
            /* JADX WARN: Type inference failed for: r4v23, types: [ih5, jh5] */
            /* JADX WARN: Type inference failed for: r5v7, types: [lh5] */
            @Override // defpackage.wf5
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public java.lang.Object a(defpackage.tf5 r44) throws android.content.res.Resources.NotFoundException, android.content.pm.PackageManager.NameNotFoundException {
                /*
                    Method dump skipped, instructions count: 949
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: defpackage.wg5.a(tf5):java.lang.Object");
            }
        });
        bVarA.c();
        return Arrays.asList(bVarA.b(), n56.F("fire-cls", "17.3.0"));
    }
}
