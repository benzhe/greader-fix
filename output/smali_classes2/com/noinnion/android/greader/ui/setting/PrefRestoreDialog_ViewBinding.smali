.class public Lcom/noinnion/android/greader/ui/setting/PrefRestoreDialog_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field public a:Lcom/noinnion/android/greader/ui/setting/PrefRestoreDialog;


# direct methods
.method public constructor <init>(Lcom/noinnion/android/greader/ui/setting/PrefRestoreDialog;Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/noinnion/android/greader/ui/setting/PrefRestoreDialog_ViewBinding;->a:Lcom/noinnion/android/greader/ui/setting/PrefRestoreDialog;

    .line 3
    const-class v0, Landroid/widget/ListView;

    const v1, 0x102000a

    const-string v2, "field \'mListView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p1, Lcom/noinnion/android/greader/ui/setting/PrefRestoreDialog;->mListView:Landroid/widget/ListView;

    const v0, 0x1020004

    const-string v1, "field \'mEmptyView\'"

    .line 4
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    iput-object p2, p1, Lcom/noinnion/android/greader/ui/setting/PrefRestoreDialog;->mEmptyView:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/setting/PrefRestoreDialog_ViewBinding;->a:Lcom/noinnion/android/greader/ui/setting/PrefRestoreDialog;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/noinnion/android/greader/ui/setting/PrefRestoreDialog_ViewBinding;->a:Lcom/noinnion/android/greader/ui/setting/PrefRestoreDialog;

    .line 3
    iput-object v1, v0, Lcom/noinnion/android/greader/ui/setting/PrefRestoreDialog;->mListView:Landroid/widget/ListView;

    .line 4
    iput-object v1, v0, Lcom/noinnion/android/greader/ui/setting/PrefRestoreDialog;->mEmptyView:Landroid/view/View;

    return-void

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
