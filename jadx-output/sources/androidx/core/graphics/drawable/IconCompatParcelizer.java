package androidx.core.graphics.drawable;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.os.Parcelable;
import defpackage.ui;
import java.nio.charset.Charset;
import java.util.Objects;
import org.apache.commons.lang3.CharEncoding;

/* loaded from: classes.dex */
public class IconCompatParcelizer {
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static IconCompat read(ui uiVar) {
        IconCompat iconCompat = new IconCompat();
        iconCompat.a = uiVar.k(iconCompat.a, 1);
        byte[] bArrG = iconCompat.c;
        if (uiVar.i(2)) {
            bArrG = uiVar.g();
        }
        iconCompat.c = bArrG;
        iconCompat.d = uiVar.m(iconCompat.d, 3);
        iconCompat.e = uiVar.k(iconCompat.e, 4);
        iconCompat.f = uiVar.k(iconCompat.f, 5);
        iconCompat.g = (ColorStateList) uiVar.m(iconCompat.g, 6);
        String strN = iconCompat.i;
        if (uiVar.i(7)) {
            strN = uiVar.n();
        }
        iconCompat.i = strN;
        iconCompat.h = PorterDuff.Mode.valueOf(strN);
        switch (iconCompat.a) {
            case -1:
                Parcelable parcelable = iconCompat.d;
                if (parcelable == null) {
                    throw new IllegalArgumentException("Invalid icon");
                }
                iconCompat.b = parcelable;
                return iconCompat;
            case 0:
            default:
                return iconCompat;
            case 1:
            case 5:
                Parcelable parcelable2 = iconCompat.d;
                if (parcelable2 != null) {
                    iconCompat.b = parcelable2;
                } else {
                    byte[] bArr = iconCompat.c;
                    iconCompat.b = bArr;
                    iconCompat.a = 3;
                    iconCompat.e = 0;
                    iconCompat.f = bArr.length;
                }
                return iconCompat;
            case 2:
            case 4:
            case 6:
                iconCompat.b = new String(iconCompat.c, Charset.forName(CharEncoding.UTF_16));
                return iconCompat;
            case 3:
                iconCompat.b = iconCompat.c;
                return iconCompat;
        }
    }

    public static void write(IconCompat iconCompat, ui uiVar) {
        Objects.requireNonNull(uiVar);
        iconCompat.i = iconCompat.h.name();
        switch (iconCompat.a) {
            case -1:
                iconCompat.d = (Parcelable) iconCompat.b;
                break;
            case 1:
            case 5:
                iconCompat.d = (Parcelable) iconCompat.b;
                break;
            case 2:
                iconCompat.c = ((String) iconCompat.b).getBytes(Charset.forName(CharEncoding.UTF_16));
                break;
            case 3:
                iconCompat.c = (byte[]) iconCompat.b;
                break;
            case 4:
            case 6:
                iconCompat.c = iconCompat.b.toString().getBytes(Charset.forName(CharEncoding.UTF_16));
                break;
        }
        int i = iconCompat.a;
        if (-1 != i) {
            uiVar.p(1);
            uiVar.t(i);
        }
        byte[] bArr = iconCompat.c;
        if (bArr != null) {
            uiVar.p(2);
            uiVar.r(bArr);
        }
        Parcelable parcelable = iconCompat.d;
        if (parcelable != null) {
            uiVar.p(3);
            uiVar.u(parcelable);
        }
        int i2 = iconCompat.e;
        if (i2 != 0) {
            uiVar.p(4);
            uiVar.t(i2);
        }
        int i3 = iconCompat.f;
        if (i3 != 0) {
            uiVar.p(5);
            uiVar.t(i3);
        }
        ColorStateList colorStateList = iconCompat.g;
        if (colorStateList != null) {
            uiVar.p(6);
            uiVar.u(colorStateList);
        }
        String str = iconCompat.i;
        if (str != null) {
            uiVar.p(7);
            uiVar.v(str);
        }
    }
}
