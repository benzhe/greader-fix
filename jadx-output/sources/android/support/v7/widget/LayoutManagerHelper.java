package android.support.v7.widget;

import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;

/* loaded from: classes.dex */
public class LayoutManagerHelper {
    public static int getFirstVisiblePosition(RecyclerView.m mVar) {
        if (mVar == null) {
            return -1;
        }
        if (mVar instanceof LinearLayoutManager) {
            return ((LinearLayoutManager) mVar).l1();
        }
        if (mVar instanceof GridLayoutManager) {
            return ((GridLayoutManager) mVar).l1();
        }
        if (!(mVar instanceof StaggeredGridLayoutManager)) {
            return -1;
        }
        StaggeredGridLayoutManager staggeredGridLayoutManager = (StaggeredGridLayoutManager) mVar;
        int[] iArr = new int[staggeredGridLayoutManager.r];
        for (int i = 0; i < staggeredGridLayoutManager.r; i++) {
            StaggeredGridLayoutManager.d dVar = staggeredGridLayoutManager.s[i];
            iArr[i] = StaggeredGridLayoutManager.this.y ? dVar.i(dVar.a.size() - 1, -1, false) : dVar.i(0, dVar.a.size(), false);
        }
        if (iArr.length > 0) {
            return iArr[0];
        }
        return -1;
    }

    public static int getLastVisiblePosition(RecyclerView.m mVar) {
        if (mVar == null) {
            return -1;
        }
        if (mVar instanceof LinearLayoutManager) {
            return ((LinearLayoutManager) mVar).n1();
        }
        if (mVar instanceof GridLayoutManager) {
            return ((GridLayoutManager) mVar).n1();
        }
        if (!(mVar instanceof StaggeredGridLayoutManager)) {
            return -1;
        }
        StaggeredGridLayoutManager staggeredGridLayoutManager = (StaggeredGridLayoutManager) mVar;
        int[] iArr = new int[staggeredGridLayoutManager.r];
        for (int i = 0; i < staggeredGridLayoutManager.r; i++) {
            StaggeredGridLayoutManager.d dVar = staggeredGridLayoutManager.s[i];
            iArr[i] = StaggeredGridLayoutManager.this.y ? dVar.i(0, dVar.a.size(), false) : dVar.i(dVar.a.size() - 1, -1, false);
        }
        if (iArr.length > 0) {
            return iArr[0];
        }
        return -1;
    }

    public static void scrollToPosition(RecyclerView.m mVar, int i) {
        if (mVar != null) {
            if (mVar instanceof LinearLayoutManager) {
                LinearLayoutManager linearLayoutManager = (LinearLayoutManager) mVar;
                linearLayoutManager.z = i;
                linearLayoutManager.A = 0;
                LinearLayoutManager.SavedState savedState = linearLayoutManager.B;
                if (savedState != null) {
                    savedState.e = -1;
                }
                linearLayoutManager.L0();
                return;
            }
            if (mVar instanceof GridLayoutManager) {
                GridLayoutManager gridLayoutManager = (GridLayoutManager) mVar;
                gridLayoutManager.z = i;
                gridLayoutManager.A = 0;
                LinearLayoutManager.SavedState savedState2 = gridLayoutManager.B;
                if (savedState2 != null) {
                    savedState2.e = -1;
                }
                gridLayoutManager.L0();
                return;
            }
            if (mVar instanceof StaggeredGridLayoutManager) {
                StaggeredGridLayoutManager staggeredGridLayoutManager = (StaggeredGridLayoutManager) mVar;
                StaggeredGridLayoutManager.SavedState savedState3 = staggeredGridLayoutManager.H;
                if (savedState3 != null) {
                    savedState3.h = null;
                    savedState3.g = 0;
                    savedState3.e = -1;
                    savedState3.f = -1;
                }
                staggeredGridLayoutManager.B = i;
                staggeredGridLayoutManager.C = 0;
                staggeredGridLayoutManager.L0();
            }
        }
    }
}
