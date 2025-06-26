package defpackage;

import android.app.PictureInPictureParams;
import android.os.Build;
import android.view.MenuItem;
import androidx.appcompat.app.AlertController;
import androidx.appcompat.widget.Toolbar;
import com.noinnion.android.reader.R$id;
import com.noinnion.android.reader.ui.dialog.YoutubePlayerActivity;

/* loaded from: classes2.dex */
public final class yw6 implements Toolbar.f {
    public final /* synthetic */ YoutubePlayerActivity a;

    public yw6(YoutubePlayerActivity youtubePlayerActivity) {
        this.a = youtubePlayerActivity;
    }

    @Override // androidx.appcompat.widget.Toolbar.f
    public final boolean onMenuItemClick(MenuItem menuItem) {
        im7.d(menuItem, "it");
        if (menuItem.getItemId() != R$id.menu_pip) {
            return true;
        }
        if (Build.VERSION.SDK_INT >= 26) {
            if (!this.a.getPackageManager().hasSystemFeature("android.software.picture_in_picture")) {
                return true;
            }
            this.a.enterPictureInPictureMode(new PictureInPictureParams.Builder().build());
            return true;
        }
        t75 t75Var = new t75(this.a);
        AlertController.b bVar = t75Var.a;
        bVar.e = "Can't enter picture in picture mode";
        bVar.g = "In order to enter picture in picture mode you need a SDK version >= N.";
        t75Var.e();
        return true;
    }
}
