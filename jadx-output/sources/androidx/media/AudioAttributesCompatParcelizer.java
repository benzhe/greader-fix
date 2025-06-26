package androidx.media;

import defpackage.ui;
import defpackage.wi;
import defpackage.zd;
import java.lang.reflect.InvocationTargetException;
import java.util.Objects;

/* loaded from: classes.dex */
public final class AudioAttributesCompatParcelizer {
    public static AudioAttributesCompat read(ui uiVar) {
        AudioAttributesCompat audioAttributesCompat = new AudioAttributesCompat();
        wi wiVarO = audioAttributesCompat.a;
        if (uiVar.i(1)) {
            wiVarO = uiVar.o();
        }
        audioAttributesCompat.a = (zd) wiVarO;
        return audioAttributesCompat;
    }

    public static void write(AudioAttributesCompat audioAttributesCompat, ui uiVar) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        Objects.requireNonNull(uiVar);
        zd zdVar = audioAttributesCompat.a;
        uiVar.p(1);
        uiVar.w(zdVar);
    }
}
