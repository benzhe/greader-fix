package defpackage;

import androidx.gridlayout.widget.GridLayout;
import java.util.Arrays;

/* loaded from: classes.dex */
public class sc {
    public GridLayout.i[] a;
    public int b;
    public GridLayout.i[][] c;
    public int[] d;
    public final /* synthetic */ GridLayout.i[] e;
    public final /* synthetic */ GridLayout.k f;

    public sc(GridLayout.k kVar, GridLayout.i[] iVarArr) {
        this.f = kVar;
        this.e = iVarArr;
        int length = iVarArr.length;
        this.a = new GridLayout.i[length];
        this.b = length - 1;
        int iH = kVar.h() + 1;
        GridLayout.i[][] iVarArr2 = new GridLayout.i[iH][];
        int[] iArr = new int[iH];
        for (GridLayout.i iVar : iVarArr) {
            int i = iVar.a.a;
            iArr[i] = iArr[i] + 1;
        }
        for (int i2 = 0; i2 < iH; i2++) {
            iVarArr2[i2] = new GridLayout.i[iArr[i2]];
        }
        Arrays.fill(iArr, 0);
        for (GridLayout.i iVar2 : iVarArr) {
            int i3 = iVar2.a.a;
            GridLayout.i[] iVarArr3 = iVarArr2[i3];
            int i4 = iArr[i3];
            iArr[i3] = i4 + 1;
            iVarArr3[i4] = iVar2;
        }
        this.c = iVarArr2;
        this.d = new int[this.f.h() + 1];
    }

    public void a(int i) {
        int[] iArr = this.d;
        if (iArr[i] != 0) {
            return;
        }
        iArr[i] = 1;
        for (GridLayout.i iVar : this.c[i]) {
            a(iVar.a.b);
            GridLayout.i[] iVarArr = this.a;
            int i2 = this.b;
            this.b = i2 - 1;
            iVarArr[i2] = iVar;
        }
        this.d[i] = 2;
    }
}
