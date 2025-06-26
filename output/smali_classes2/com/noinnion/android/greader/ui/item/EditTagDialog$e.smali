.class public Lcom/noinnion/android/greader/ui/item/EditTagDialog$e;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/noinnion/android/greader/ui/item/EditTagDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/noinnion/android/greader/ui/item/EditTagDialog;


# direct methods
.method public constructor <init>(Lcom/noinnion/android/greader/ui/item/EditTagDialog;Lcom/noinnion/android/greader/ui/item/EditTagDialog$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/noinnion/android/greader/ui/item/EditTagDialog$e;->a:Lcom/noinnion/android/greader/ui/item/EditTagDialog;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    check-cast p1, [Ljava/lang/Void;

    .line 2
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/item/EditTagDialog$e;->a:Lcom/noinnion/android/greader/ui/item/EditTagDialog;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_2

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/item/EditTagDialog$e;->a:Lcom/noinnion/android/greader/ui/item/EditTagDialog;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 4
    invoke-static {p1}, Lon6;->i(Landroid/content/Context;)Lep6;

    move-result-object v0

    .line 5
    :try_start_0
    iget-object v1, p0, Lcom/noinnion/android/greader/ui/item/EditTagDialog$e;->a:Lcom/noinnion/android/greader/ui/item/EditTagDialog;

    iget-object v1, v1, Lcom/noinnion/android/greader/ui/item/EditTagDialog;->j:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 6
    iget-object v1, p0, Lcom/noinnion/android/greader/ui/item/EditTagDialog$e;->a:Lcom/noinnion/android/greader/ui/item/EditTagDialog;

    iget-object v2, v1, Lcom/noinnion/android/greader/ui/item/EditTagDialog;->f:Lap6;

    iget-object v1, v1, Lcom/noinnion/android/greader/ui/item/EditTagDialog;->j:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lep6;->H(Lap6;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 7
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 8
    :cond_1
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/noinnion/android/greader/ui/item/EditTagDialog$e;->a:Lcom/noinnion/android/greader/ui/item/EditTagDialog;

    iget-object v1, v1, Lcom/noinnion/android/greader/ui/item/EditTagDialog;->i:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 9
    iget-object v1, p0, Lcom/noinnion/android/greader/ui/item/EditTagDialog$e;->a:Lcom/noinnion/android/greader/ui/item/EditTagDialog;

    iget-object v2, v1, Lcom/noinnion/android/greader/ui/item/EditTagDialog;->f:Lap6;

    iget-object v1, v1, Lcom/noinnion/android/greader/ui/item/EditTagDialog;->i:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lep6;->c(Lap6;[Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_1
    const/4 v0, 0x1

    .line 11
    invoke-static {p1, v0}, Ln56;->H1(Landroid/content/Context;Z)V

    :goto_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Void;

    .line 2
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/item/EditTagDialog$e;->a:Lcom/noinnion/android/greader/ui/item/EditTagDialog;

    iget-object p1, p1, Lcom/noinnion/android/greader/ui/item/EditTagDialog;->k:Landroid/app/ProgressDialog;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/item/EditTagDialog$e;->a:Lcom/noinnion/android/greader/ui/item/EditTagDialog;

    iget-object p1, p1, Lcom/noinnion/android/greader/ui/item/EditTagDialog;->k:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/item/EditTagDialog$e;->a:Lcom/noinnion/android/greader/ui/item/EditTagDialog;

    invoke-virtual {p1}, Lrb;->dismissAllowingStateLoss()V

    return-void
.end method

.method public onPreExecute()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/item/EditTagDialog$e;->a:Lcom/noinnion/android/greader/ui/item/EditTagDialog;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/item/EditTagDialog$e;->a:Lcom/noinnion/android/greader/ui/item/EditTagDialog;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/noinnion/android/greader/ui/item/EditTagDialog$e;->a:Lcom/noinnion/android/greader/ui/item/EditTagDialog;

    const v4, 0x7f1101d3

    invoke-virtual {v3, v4}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, v0, Lcom/noinnion/android/greader/ui/item/EditTagDialog;->k:Landroid/app/ProgressDialog;

    return-void
.end method
