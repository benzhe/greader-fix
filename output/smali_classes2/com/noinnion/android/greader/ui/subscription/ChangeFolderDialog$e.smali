.class public Lcom/noinnion/android/greader/ui/subscription/ChangeFolderDialog$e;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/noinnion/android/greader/ui/subscription/ChangeFolderDialog;
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
.field public final synthetic a:Lcom/noinnion/android/greader/ui/subscription/ChangeFolderDialog;


# direct methods
.method public constructor <init>(Lcom/noinnion/android/greader/ui/subscription/ChangeFolderDialog;Lcom/noinnion/android/greader/ui/subscription/ChangeFolderDialog$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/noinnion/android/greader/ui/subscription/ChangeFolderDialog$e;->a:Lcom/noinnion/android/greader/ui/subscription/ChangeFolderDialog;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    check-cast p1, [Ljava/lang/Void;

    .line 2
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/subscription/ChangeFolderDialog$e;->a:Lcom/noinnion/android/greader/ui/subscription/ChangeFolderDialog;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_0

    goto/16 :goto_2

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/subscription/ChangeFolderDialog$e;->a:Lcom/noinnion/android/greader/ui/subscription/ChangeFolderDialog;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    iget-object v2, p0, Lcom/noinnion/android/greader/ui/subscription/ChangeFolderDialog$e;->a:Lcom/noinnion/android/greader/ui/subscription/ChangeFolderDialog;

    iget-object v2, v2, Lcom/noinnion/android/greader/ui/subscription/ChangeFolderDialog;->h:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 7
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lky6;

    .line 8
    iget-boolean v4, v3, Lky6;->e:Z

    if-eqz v4, :cond_1

    .line 9
    iget-object v3, v3, Lky6;->c:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10
    :cond_1
    iget-object v3, v3, Lky6;->c:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 11
    :cond_2
    invoke-static {p1}, Lon6;->i(Landroid/content/Context;)Lep6;

    move-result-object p1

    .line 12
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 13
    :try_start_0
    iget-object v2, p0, Lcom/noinnion/android/greader/ui/subscription/ChangeFolderDialog$e;->a:Lcom/noinnion/android/greader/ui/subscription/ChangeFolderDialog;

    iget-object v2, v2, Lcom/noinnion/android/greader/ui/subscription/ChangeFolderDialog;->f:Lip6;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-virtual {p1, v2, v1}, Lep6;->F(Lip6;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 14
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 15
    :cond_3
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 16
    :try_start_1
    iget-object v1, p0, Lcom/noinnion/android/greader/ui/subscription/ChangeFolderDialog$e;->a:Lcom/noinnion/android/greader/ui/subscription/ChangeFolderDialog;

    iget-object v1, v1, Lcom/noinnion/android/greader/ui/subscription/ChangeFolderDialog;->f:Lip6;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lep6;->a(Lip6;[Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 17
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Ljava/lang/Void;

    .line 2
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/subscription/ChangeFolderDialog$e;->a:Lcom/noinnion/android/greader/ui/subscription/ChangeFolderDialog;

    iget-object p1, p1, Lcom/noinnion/android/greader/ui/subscription/ChangeFolderDialog;->k:Landroid/app/ProgressDialog;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/subscription/ChangeFolderDialog$e;->a:Lcom/noinnion/android/greader/ui/subscription/ChangeFolderDialog;

    iget-object p1, p1, Lcom/noinnion/android/greader/ui/subscription/ChangeFolderDialog;->k:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/subscription/ChangeFolderDialog$e;->a:Lcom/noinnion/android/greader/ui/subscription/ChangeFolderDialog;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/subscription/ChangeFolderDialog$e;->a:Lcom/noinnion/android/greader/ui/subscription/ChangeFolderDialog;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x1

    .line 6
    invoke-static {p1, v0}, Ln56;->H1(Landroid/content/Context;Z)V

    .line 7
    sget v0, Lcom/noinnion/android/greader/ui/subscription/ManageSourcesActivity;->A:I

    .line 8
    invoke-static {p1}, Lyd;->a(Landroid/content/Context;)Lyd;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.noinnion.android.greader.reader.action.REFRESH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lyd;->c(Landroid/content/Intent;)Z

    .line 9
    :cond_1
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/subscription/ChangeFolderDialog$e;->a:Lcom/noinnion/android/greader/ui/subscription/ChangeFolderDialog;

    invoke-virtual {p1}, Lrb;->dismissAllowingStateLoss()V

    return-void
.end method

.method public onPreExecute()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/subscription/ChangeFolderDialog$e;->a:Lcom/noinnion/android/greader/ui/subscription/ChangeFolderDialog;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/subscription/ChangeFolderDialog$e;->a:Lcom/noinnion/android/greader/ui/subscription/ChangeFolderDialog;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/noinnion/android/greader/ui/subscription/ChangeFolderDialog$e;->a:Lcom/noinnion/android/greader/ui/subscription/ChangeFolderDialog;

    const v4, 0x7f1101d3

    invoke-virtual {v3, v4}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, v0, Lcom/noinnion/android/greader/ui/subscription/ChangeFolderDialog;->k:Landroid/app/ProgressDialog;

    return-void
.end method
