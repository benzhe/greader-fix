package defpackage;

import android.content.ContentResolver;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.net.Uri;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;
import org.apache.commons.text.lookup.StringLookupFactory;
import pl.droidsonroids.gif.GifInfoHandle;
import pl.droidsonroids.gif.R$styleable;

/* loaded from: classes2.dex */
public final class u78 {
    public static final List<String> a = Arrays.asList("raw", "drawable", "mipmap");

    public static class a {
        public final int a;
        public final int b;
        public final boolean c;

        public a(int i, int i2, boolean z) {
            this.a = i;
            this.b = i2;
            this.c = z;
        }
    }

    public static int a(ImageView imageView, AttributeSet attributeSet, boolean z) {
        int attributeResourceValue = attributeSet.getAttributeResourceValue("http://schemas.android.com/apk/res/android", z ? "src" : "background", 0);
        if (attributeResourceValue > 0) {
            if (a.contains(imageView.getResources().getResourceTypeName(attributeResourceValue)) && !e(imageView, z, attributeResourceValue)) {
                return attributeResourceValue;
            }
        }
        return 0;
    }

    public static a b(ImageView imageView, AttributeSet attributeSet, int i, int i2) {
        return (attributeSet == null || imageView.isInEditMode()) ? new a(0, 0, false) : new a(a(imageView, attributeSet, true), a(imageView, attributeSet, false), c(imageView, attributeSet, i, i2));
    }

    public static boolean c(View view, AttributeSet attributeSet, int i, int i2) {
        TypedArray typedArrayObtainStyledAttributes = view.getContext().obtainStyledAttributes(attributeSet, R$styleable.GifView, i, i2);
        boolean z = typedArrayObtainStyledAttributes.getBoolean(R$styleable.GifView_freezesAnimation, false);
        typedArrayObtainStyledAttributes.recycle();
        return z;
    }

    public static boolean d(ImageView imageView, Uri uri) {
        if (uri != null) {
            try {
                ContentResolver contentResolver = imageView.getContext().getContentResolver();
                GifInfoHandle gifInfoHandle = GifInfoHandle.b;
                imageView.setImageDrawable(new r78(StringLookupFactory.KEY_FILE.equals(uri.getScheme()) ? new GifInfoHandle(uri.getPath(), false) : new GifInfoHandle(contentResolver.openAssetFileDescriptor(uri, "r"), false), null, null, true));
                return true;
            } catch (IOException unused) {
            }
        }
        return false;
    }

    public static boolean e(ImageView imageView, boolean z, int i) {
        Resources resources = imageView.getResources();
        if (resources == null) {
            return false;
        }
        try {
            r78 r78Var = new r78(resources, i);
            if (z) {
                imageView.setImageDrawable(r78Var);
                return true;
            }
            imageView.setBackground(r78Var);
            return true;
        } catch (Resources.NotFoundException | IOException unused) {
            return false;
        }
    }
}
