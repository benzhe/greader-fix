package pl.droidsonroids.gif;

import defpackage.s78;
import java.io.IOException;
import java.util.Locale;

/* loaded from: classes2.dex */
public class GifIOException extends IOException {
    public static final /* synthetic */ int e = 0;

    /* JADX WARN: Illegal instructions before constructor call */
    public GifIOException(int i) {
        s78 s78Var;
        s78[] s78VarArrValues = s78.values();
        int i2 = 0;
        while (true) {
            if (i2 >= 21) {
                s78Var = s78.UNKNOWN;
                s78Var.f = i;
                break;
            } else {
                s78Var = s78VarArrValues[i2];
                if (s78Var.f == i) {
                    break;
                } else {
                    i2++;
                }
            }
        }
        super(String.format(Locale.ENGLISH, "GifError %d: %s", Integer.valueOf(s78Var.f), s78Var.e));
    }
}
