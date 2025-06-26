package defpackage;

import com.google.android.material.bottomappbar.BottomAppBar;
import com.google.android.material.floatingactionbutton.FloatingActionButton;

/* loaded from: classes.dex */
public class f65 extends FloatingActionButton.a {
    public final /* synthetic */ int a;
    public final /* synthetic */ BottomAppBar b;

    public class a extends FloatingActionButton.a {
        public a() {
        }

        @Override // com.google.android.material.floatingactionbutton.FloatingActionButton.a
        public void b(FloatingActionButton floatingActionButton) {
            BottomAppBar.w(f65.this.b);
        }
    }

    public f65(BottomAppBar bottomAppBar, int i) {
        this.b = bottomAppBar;
        this.a = i;
    }

    @Override // com.google.android.material.floatingactionbutton.FloatingActionButton.a
    public void a(FloatingActionButton floatingActionButton) {
        BottomAppBar bottomAppBar = this.b;
        int i = this.a;
        int i2 = BottomAppBar.q0;
        floatingActionButton.setTranslationX(bottomAppBar.G(i));
        floatingActionButton.o(new a(), true);
    }
}
