package defpackage;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.view.View;
import com.noinnion.android.greader.reader.R;
import java.io.File;
import java.io.IOException;
import pl.droidsonroids.gif.GifImageView;
import pl.droidsonroids.gif.GifInfoHandle;

/* loaded from: classes2.dex */
public class cr6 extends l07 {
    public final /* synthetic */ dr6 a;

    public cr6(dr6 dr6Var) {
        this.a = dr6Var;
    }

    @Override // defpackage.l07
    public void a(String str, View view, Bitmap bitmap) {
        File fileA = hz6.j().i().a(str);
        if (fileA == null || !fileA.exists()) {
            return;
        }
        dr6 dr6Var = this.a;
        dr6Var.c = (GifImageView) dr6Var.d.b.findViewById(R.id.v_gif_image_view);
        try {
            this.a.b = new r78(new GifInfoHandle(fileA.getPath(), false), null, null, true);
            dr6 dr6Var2 = this.a;
            dr6Var2.c.setImageDrawable(dr6Var2.b);
        } catch (IOException unused) {
            this.a.c.setImageBitmap(BitmapFactory.decodeFile(fileA.getAbsolutePath()));
        }
    }
}
