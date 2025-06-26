package defpackage;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import defpackage.e27;
import defpackage.j27;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.List;
import java.util.Objects;

/* loaded from: classes2.dex */
public class k27 extends j27 {
    public final Context a;

    public k27(Context context) {
        this.a = context;
    }

    @Override // defpackage.j27
    public boolean c(h27 h27Var) {
        if (h27Var.d != 0) {
            return true;
        }
        return "android.resource".equals(h27Var.c.getScheme());
    }

    @Override // defpackage.j27
    public j27.a f(h27 h27Var, int i) throws PackageManager.NameNotFoundException, NumberFormatException, IOException {
        Resources resources;
        Uri uri;
        Uri uri2;
        Context context = this.a;
        StringBuilder sb = p27.a;
        if (h27Var.d != 0 || (uri2 = h27Var.c) == null) {
            resources = context.getResources();
        } else {
            String authority = uri2.getAuthority();
            if (authority == null) {
                StringBuilder sbZ = jo.z("No package provided: ");
                sbZ.append(h27Var.c);
                throw new FileNotFoundException(sbZ.toString());
            }
            try {
                resources = context.getPackageManager().getResourcesForApplication(authority);
            } catch (PackageManager.NameNotFoundException unused) {
                StringBuilder sbZ2 = jo.z("Unable to obtain resources for package: ");
                sbZ2.append(h27Var.c);
                throw new FileNotFoundException(sbZ2.toString());
            }
        }
        int identifier = h27Var.d;
        if (identifier == 0 && (uri = h27Var.c) != null) {
            String authority2 = uri.getAuthority();
            if (authority2 == null) {
                StringBuilder sbZ3 = jo.z("No package provided: ");
                sbZ3.append(h27Var.c);
                throw new FileNotFoundException(sbZ3.toString());
            }
            List<String> pathSegments = h27Var.c.getPathSegments();
            if (pathSegments == null || pathSegments.isEmpty()) {
                StringBuilder sbZ4 = jo.z("No path segments: ");
                sbZ4.append(h27Var.c);
                throw new FileNotFoundException(sbZ4.toString());
            }
            if (pathSegments.size() == 1) {
                try {
                    identifier = Integer.parseInt(pathSegments.get(0));
                } catch (NumberFormatException unused2) {
                    StringBuilder sbZ5 = jo.z("Last path segment is not a resource ID: ");
                    sbZ5.append(h27Var.c);
                    throw new FileNotFoundException(sbZ5.toString());
                }
            } else {
                if (pathSegments.size() != 2) {
                    StringBuilder sbZ6 = jo.z("More than two path segments: ");
                    sbZ6.append(h27Var.c);
                    throw new FileNotFoundException(sbZ6.toString());
                }
                identifier = resources.getIdentifier(pathSegments.get(1), pathSegments.get(0), authority2);
            }
        }
        BitmapFactory.Options optionsD = j27.d(h27Var);
        if (optionsD != null && optionsD.inJustDecodeBounds) {
            BitmapFactory.decodeResource(resources, identifier, optionsD);
            j27.b(h27Var.f, h27Var.g, optionsD, h27Var);
        }
        Bitmap bitmapDecodeResource = BitmapFactory.decodeResource(resources, identifier, optionsD);
        e27.d dVar = e27.d.DISK;
        Objects.requireNonNull(bitmapDecodeResource, "bitmap == null");
        return new j27.a(bitmapDecodeResource, null, dVar, 0);
    }
}
