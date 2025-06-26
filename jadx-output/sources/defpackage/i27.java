package defpackage;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.widget.ImageView;
import defpackage.e27;
import defpackage.h27;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes2.dex */
public class i27 {
    public static final AtomicInteger e = new AtomicInteger();
    public final e27 a;
    public final h27.b b;
    public int c;
    public Object d;

    public i27(e27 e27Var, Uri uri, int i) {
        this.a = e27Var;
        this.b = new h27.b(uri, i, e27Var.l);
    }

    public final Drawable a() {
        int i = this.c;
        if (i != 0) {
            return this.a.e.getDrawable(i);
        }
        return null;
    }

    public void b(ImageView imageView, p17 p17Var) {
        Bitmap bitmapD;
        long jNanoTime = System.nanoTime();
        p27.a();
        if (imageView == null) {
            throw new IllegalArgumentException("Target must not be null.");
        }
        h27.b bVar = this.b;
        if (!((bVar.a == null && bVar.b == 0) ? false : true)) {
            e27 e27Var = this.a;
            Objects.requireNonNull(e27Var);
            e27Var.a(imageView);
            f27.c(imageView, a());
            return;
        }
        int andIncrement = e.getAndIncrement();
        h27.b bVar2 = this.b;
        if (bVar2.f == null) {
            bVar2.f = e27.e.NORMAL;
        }
        h27 h27Var = new h27(bVar2.a, bVar2.b, null, null, bVar2.c, bVar2.d, false, false, 0, false, 0.0f, 0.0f, 0.0f, false, false, bVar2.e, bVar2.f, null);
        h27Var.a = andIncrement;
        h27Var.b = jNanoTime;
        boolean z = this.a.n;
        if (z) {
            p27.e("Main", "created", h27Var.d(), h27Var.toString());
        }
        Objects.requireNonNull((e27.f.a) this.a.b);
        if (h27Var != h27Var) {
            h27Var.a = andIncrement;
            h27Var.b = jNanoTime;
            if (z) {
                p27.e("Main", "changed", h27Var.b(), "into " + h27Var);
            }
        }
        StringBuilder sb = p27.a;
        Uri uri = h27Var.c;
        if (uri != null) {
            String string = uri.toString();
            sb.ensureCapacity(string.length() + 50);
            sb.append(string);
        } else {
            sb.ensureCapacity(50);
            sb.append(h27Var.d);
        }
        sb.append('\n');
        if (h27Var.l != 0.0f) {
            sb.append("rotation:");
            sb.append(h27Var.l);
            if (h27Var.o) {
                sb.append('@');
                sb.append(h27Var.m);
                sb.append('x');
                sb.append(h27Var.n);
            }
            sb.append('\n');
        }
        if (h27Var.a()) {
            sb.append("resize:");
            sb.append(h27Var.f);
            sb.append('x');
            sb.append(h27Var.g);
            sb.append('\n');
        }
        if (h27Var.h) {
            sb.append("centerCrop:");
            sb.append(h27Var.i);
            sb.append('\n');
        } else if (h27Var.j) {
            sb.append("centerInside");
            sb.append('\n');
        }
        List<n27> list = h27Var.e;
        if (list != null) {
            int size = list.size();
            for (int i = 0; i < size; i++) {
                sb.append(h27Var.e.get(i).key());
                sb.append('\n');
            }
        }
        String string2 = sb.toString();
        p27.a.setLength(0);
        if (!b27.i(0) || (bitmapD = this.a.d(string2)) == null) {
            f27.c(imageView, a());
            this.a.c(new w17(this.a, imageView, h27Var, 0, 0, 0, null, string2, this.d, p17Var, false));
            return;
        }
        e27 e27Var2 = this.a;
        Objects.requireNonNull(e27Var2);
        e27Var2.a(imageView);
        e27 e27Var3 = this.a;
        Context context = e27Var3.e;
        e27.d dVar = e27.d.MEMORY;
        f27.b(imageView, context, bitmapD, dVar, false, e27Var3.m);
        if (this.a.n) {
            p27.e("Main", "completed", h27Var.d(), "from " + dVar);
        }
        if (p17Var != null) {
            ((oz5) p17Var).a();
        }
    }
}
