.class public Lcom/noinnion/android/greader/ui/subscription/ChangeFolderDialog$c;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/noinnion/android/greader/ui/subscription/ChangeFolderDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public final synthetic b:Lcom/noinnion/android/greader/ui/subscription/ChangeFolderDialog;


# direct methods
.method public constructor <init>(Lcom/noinnion/android/greader/ui/subscription/ChangeFolderDialog;Lcom/noinnion/android/greader/ui/subscription/ChangeFolderDialog$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/noinnion/android/greader/ui/subscription/ChangeFolderDialog$c;->b:Lcom/noinnion/android/greader/ui/subscription/ChangeFolderDialog;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, [Ljava/lang/String;

    .line 2
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/subscription/ChangeFolderDialog$c;->b:Lcom/noinnion/android/greader/ui/subscription/ChangeFolderDialog;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/subscription/ChangeFolderDialog$c;->b:Lcom/noinnion/android/greader/ui/subscription/ChangeFolderDialog;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 4
    invoke-static {v0}, Lon6;->i(Landroid/content/Context;)Lep6;

    move-result-object v0

    const/4 v1, 0x0

    .line 5
    :try_start_0
    aget-object p1, p1, v1

    iput-object p1, p0, Lcom/noinnion/android/greader/ui/subscription/ChangeFolderDialog$c;->a:Ljava/lang/String;

    .line 6
    iget-object v1, p0, Lcom/noinnion/android/greader/ui/subscription/ChangeFolderDialog$c;->b:Lcom/noinnion/android/greader/ui/subscription/ChangeFolderDialog;

    iget-object v1, v1, Lcom/noinnion/android/greader/ui/subscription/ChangeFolderDialog;->f:Lip6;

    invoke-virtual {v0, v1, p1}, Lep6;->C(Lip6;Ljava/lang/String;)V

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lep6;->S(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lgw6; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 8
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Ljava/lang/Void;

    .line 2
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/subscription/ChangeFolderDialog$c;->b:Lcom/noinnion/android/greader/ui/subscription/ChangeFolderDialog;

    iget-object p1, p1, Lcom/noinnion/android/greader/ui/subscription/ChangeFolderDialog;->k:Landroid/app/ProgressDialog;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/subscription/ChangeFolderDialog$c;->b:Lcom/noinnion/android/greader/ui/subscription/ChangeFolderDialog;

    iget-object p1, p1, Lcom/noinnion/android/greader/ui/subscription/ChangeFolderDialog;->k:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/subscription/ChangeFolderDialog$c;->b:Lcom/noinnion/android/greader/ui/subscription/ChangeFolderDialog;

    .line 5
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    new-instance v0, Lcom/noinnion/android/greader/ui/subscription/ChangeFolderDialog$d;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/noinnion/android/greader/ui/subscription/ChangeFolderDialog$d;-><init>(Lcom/noinnion/android/greader/ui/subscription/ChangeFolderDialog;Lcom/noinnion/android/greader/ui/subscription/ChangeFolderDialog$a;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {v0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public onPreExecute()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/subscription/ChangeFolderDialog$c;->b:Lcom/noinnion/android/greader/ui/subscription/ChangeFolderDialog;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/subscription/ChangeFolderDialog$c;->b:Lcom/noinnion/android/greader/ui/subscription/ChangeFolderDialog;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/noinnion/android/greader/ui/subscription/ChangeFolderDialog$c;->b:Lcom/noinnion/android/greader/ui/subscription/ChangeFolderDialog;

    const v4, 0x7f1101d3

    invoke-virtual {v3, v4}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, v0, Lcom/noinnion/android/greader/ui/subscription/ChangeFolderDialog;->k:Landroid/app/ProgressDialog;

    return-void
.end method
