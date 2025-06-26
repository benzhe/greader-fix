package defpackage;

import android.content.ContentResolver;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.graphics.fonts.Font;
import android.graphics.fonts.FontFamily;
import android.graphics.fonts.FontStyle;
import android.os.CancellationSignal;
import android.os.ParcelFileDescriptor;
import defpackage.j9;
import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes.dex */
public class l8 extends n8 {
    @Override // defpackage.n8
    public Typeface a(Context context, x7 x7Var, Resources resources, int i) throws IOException {
        y7[] y7VarArr = x7Var.a;
        int length = y7VarArr.length;
        FontFamily.Builder builder = null;
        int i2 = 0;
        while (true) {
            int i3 = 1;
            if (i2 >= length) {
                break;
            }
            y7 y7Var = y7VarArr[i2];
            try {
                Font.Builder weight = new Font.Builder(resources, y7Var.f).setWeight(y7Var.b);
                if (!y7Var.c) {
                    i3 = 0;
                }
                Font fontBuild = weight.setSlant(i3).setTtcIndex(y7Var.e).setFontVariationSettings(y7Var.d).build();
                if (builder == null) {
                    builder = new FontFamily.Builder(fontBuild);
                } else {
                    builder.addFont(fontBuild);
                }
            } catch (IOException unused) {
            }
            i2++;
        }
        if (builder == null) {
            return null;
        }
        return new Typeface.CustomFallbackBuilder(builder.build()).setStyle(new FontStyle((i & 1) != 0 ? 700 : 400, (i & 2) != 0 ? 1 : 0)).build();
    }

    @Override // defpackage.n8
    public Typeface b(Context context, CancellationSignal cancellationSignal, j9.c[] cVarArr, int i) throws IOException {
        ParcelFileDescriptor parcelFileDescriptorOpenFileDescriptor;
        ContentResolver contentResolver = context.getContentResolver();
        int length = cVarArr.length;
        FontFamily.Builder builder = null;
        int i2 = 0;
        while (true) {
            int i3 = 1;
            if (i2 >= length) {
                if (builder == null) {
                    return null;
                }
                return new Typeface.CustomFallbackBuilder(builder.build()).setStyle(new FontStyle((i & 1) != 0 ? 700 : 400, (i & 2) != 0 ? 1 : 0)).build();
            }
            j9.c cVar = cVarArr[i2];
            try {
                parcelFileDescriptorOpenFileDescriptor = contentResolver.openFileDescriptor(cVar.a, "r", cancellationSignal);
            } catch (IOException unused) {
            }
            if (parcelFileDescriptorOpenFileDescriptor == null) {
                if (parcelFileDescriptorOpenFileDescriptor != null) {
                }
                i2++;
            } else {
                try {
                    Font.Builder weight = new Font.Builder(parcelFileDescriptorOpenFileDescriptor).setWeight(cVar.c);
                    if (!cVar.d) {
                        i3 = 0;
                    }
                    Font fontBuild = weight.setSlant(i3).setTtcIndex(cVar.b).build();
                    if (builder == null) {
                        builder = new FontFamily.Builder(fontBuild);
                    } else {
                        builder.addFont(fontBuild);
                    }
                } catch (Throwable th) {
                    try {
                        parcelFileDescriptorOpenFileDescriptor.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                    throw th;
                }
            }
            parcelFileDescriptorOpenFileDescriptor.close();
            i2++;
        }
    }

    @Override // defpackage.n8
    public Typeface c(Context context, InputStream inputStream) {
        throw new RuntimeException("Do not use this function in API 29 or later.");
    }

    @Override // defpackage.n8
    public Typeface d(Context context, Resources resources, int i, String str, int i2) throws IOException {
        try {
            Font fontBuild = new Font.Builder(resources, i).build();
            return new Typeface.CustomFallbackBuilder(new FontFamily.Builder(fontBuild).build()).setStyle(fontBuild.getStyle()).build();
        } catch (IOException unused) {
            return null;
        }
    }
}
