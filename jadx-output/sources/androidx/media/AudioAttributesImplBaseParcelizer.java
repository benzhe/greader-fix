package androidx.media;

import defpackage.be;
import defpackage.ui;
import java.util.Objects;

/* loaded from: classes.dex */
public final class AudioAttributesImplBaseParcelizer {
    public static be read(ui uiVar) {
        be beVar = new be();
        beVar.a = uiVar.k(beVar.a, 1);
        beVar.b = uiVar.k(beVar.b, 2);
        beVar.c = uiVar.k(beVar.c, 3);
        beVar.d = uiVar.k(beVar.d, 4);
        return beVar;
    }

    public static void write(be beVar, ui uiVar) {
        Objects.requireNonNull(uiVar);
        int i = beVar.a;
        uiVar.p(1);
        uiVar.t(i);
        int i2 = beVar.b;
        uiVar.p(2);
        uiVar.t(i2);
        int i3 = beVar.c;
        uiVar.p(3);
        uiVar.t(i3);
        int i4 = beVar.d;
        uiVar.p(4);
        uiVar.t(i4);
    }
}
