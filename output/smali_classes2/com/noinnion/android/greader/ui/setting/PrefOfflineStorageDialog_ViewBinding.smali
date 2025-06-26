.class public Lcom/noinnion/android/greader/ui/setting/PrefOfflineStorageDialog_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field public a:Lcom/noinnion/android/greader/ui/setting/PrefOfflineStorageDialog;


# direct methods
.method public constructor <init>(Lcom/noinnion/android/greader/ui/setting/PrefOfflineStorageDialog;Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/noinnion/android/greader/ui/setting/PrefOfflineStorageDialog_ViewBinding;->a:Lcom/noinnion/android/greader/ui/setting/PrefOfflineStorageDialog;

    .line 3
    const-class v0, Landroid/widget/Spinner;

    const v1, 0x7f0902d4

    const-string v2, "field \'storageSpinner\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p1, Lcom/noinnion/android/greader/ui/setting/PrefOfflineStorageDialog;->storageSpinner:Landroid/widget/Spinner;

    .line 4
    const-class v0, Landroid/widget/RadioButton;

    const v1, 0x7f09025c

    const-string v2, "field \'autoRadio\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p1, Lcom/noinnion/android/greader/ui/setting/PrefOfflineStorageDialog;->autoRadio:Landroid/widget/RadioButton;

    .line 5
    const-class v0, Landroid/widget/RadioButton;

    const v1, 0x7f09025d

    const-string v2, "field \'manualRadio\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/RadioButton;

    iput-object p2, p1, Lcom/noinnion/android/greader/ui/setting/PrefOfflineStorageDialog;->manualRadio:Landroid/widget/RadioButton;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/setting/PrefOfflineStorageDialog_ViewBinding;->a:Lcom/noinnion/android/greader/ui/setting/PrefOfflineStorageDialog;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/noinnion/android/greader/ui/setting/PrefOfflineStorageDialog_ViewBinding;->a:Lcom/noinnion/android/greader/ui/setting/PrefOfflineStorageDialog;

    .line 3
    iput-object v1, v0, Lcom/noinnion/android/greader/ui/setting/PrefOfflineStorageDialog;->storageSpinner:Landroid/widget/Spinner;

    .line 4
    iput-object v1, v0, Lcom/noinnion/android/greader/ui/setting/PrefOfflineStorageDialog;->autoRadio:Landroid/widget/RadioButton;

    .line 5
    iput-object v1, v0, Lcom/noinnion/android/greader/ui/setting/PrefOfflineStorageDialog;->manualRadio:Landroid/widget/RadioButton;

    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
