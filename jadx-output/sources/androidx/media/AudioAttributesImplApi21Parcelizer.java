package androidx.media;

import android.media.AudioAttributes;
import defpackage.ae;
import defpackage.ui;
import java.util.Objects;

/* loaded from: classes.dex */
public final class AudioAttributesImplApi21Parcelizer {
    public static ae read(ui uiVar) {
        ae aeVar = new ae();
        aeVar.a = (AudioAttributes) uiVar.m(aeVar.a, 1);
        aeVar.b = uiVar.k(aeVar.b, 2);
        return aeVar;
    }

    public static void write(ae aeVar, ui uiVar) {
        Objects.requireNonNull(uiVar);
        AudioAttributes audioAttributes = aeVar.a;
        uiVar.p(1);
        uiVar.u(audioAttributes);
        int i = aeVar.b;
        uiVar.p(2);
        uiVar.t(i);
    }
}
