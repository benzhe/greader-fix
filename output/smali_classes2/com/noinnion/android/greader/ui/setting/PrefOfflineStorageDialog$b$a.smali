.class public Lcom/noinnion/android/greader/ui/setting/PrefOfflineStorageDialog$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/noinnion/android/greader/ui/setting/PrefOfflineStorageDialog$b;->onShow(Landroid/content/DialogInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lcom/noinnion/android/greader/ui/setting/PrefOfflineStorageDialog$b;


# direct methods
.method public constructor <init>(Lcom/noinnion/android/greader/ui/setting/PrefOfflineStorageDialog$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/noinnion/android/greader/ui/setting/PrefOfflineStorageDialog$b$a;->e:Lcom/noinnion/android/greader/ui/setting/PrefOfflineStorageDialog$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/setting/PrefOfflineStorageDialog$b$a;->e:Lcom/noinnion/android/greader/ui/setting/PrefOfflineStorageDialog$b;

    iget-object p1, p1, Lcom/noinnion/android/greader/ui/setting/PrefOfflineStorageDialog$b;->b:Lcom/noinnion/android/greader/ui/setting/PrefOfflineStorageDialog;

    .line 2
    iget-object v0, p1, Lcom/noinnion/android/greader/ui/setting/PrefOfflineStorageDialog;->autoRadio:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p1, Lcom/noinnion/android/greader/ui/setting/PrefOfflineStorageDialog;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p1}, Lrb;->dismiss()V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p1, Lcom/noinnion/android/greader/ui/setting/PrefOfflineStorageDialog;->storageSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    :goto_0
    move-object v0, v1

    .line 7
    :cond_2
    new-instance v2, Lcom/noinnion/android/greader/ui/setting/PrefOfflineStorageDialog$c;

    invoke-direct {v2, p1, v1}, Lcom/noinnion/android/greader/ui/setting/PrefOfflineStorageDialog$c;-><init>(Lcom/noinnion/android/greader/ui/setting/PrefOfflineStorageDialog;Lcom/noinnion/android/greader/ui/setting/PrefOfflineStorageDialog$a;)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object p1, p1, Lcom/noinnion/android/greader/ui/setting/PrefOfflineStorageDialog;->e:Ljava/lang/String;

    aput-object p1, v1, v3

    const/4 p1, 0x1

    aput-object v0, v1, p1

    invoke-virtual {v2, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
