.class public Lcom/noinnion/android/greader/ui/setting/PrefOfflineStorageDialog$c;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/noinnion/android/greader/ui/setting/PrefOfflineStorageDialog;
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public final synthetic c:Lcom/noinnion/android/greader/ui/setting/PrefOfflineStorageDialog;


# direct methods
.method public constructor <init>(Lcom/noinnion/android/greader/ui/setting/PrefOfflineStorageDialog;Lcom/noinnion/android/greader/ui/setting/PrefOfflineStorageDialog$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/noinnion/android/greader/ui/setting/PrefOfflineStorageDialog$c;->c:Lcom/noinnion/android/greader/ui/setting/PrefOfflineStorageDialog;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/noinnion/android/greader/ui/setting/PrefOfflineStorageDialog$c;->a:Ljava/lang/String;

    .line 3
    iput-object p1, p0, Lcom/noinnion/android/greader/ui/setting/PrefOfflineStorageDialog$c;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    check-cast p1, [Ljava/lang/String;

    const-string v0, "/gReader/.image-cache/"

    const-string v1, "/gReader/cache/"

    const/4 v2, 0x0

    .line 2
    aget-object v2, p1, v2

    const/4 v3, 0x1

    .line 3
    aget-object p1, p1, v3

    .line 4
    iput-object p1, p0, Lcom/noinnion/android/greader/ui/setting/PrefOfflineStorageDialog$c;->a:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 5
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    :cond_0
    if-nez p1, :cond_1

    .line 6
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    .line 7
    :cond_1
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 8
    :try_start_0
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 10
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v4}, Lhy6;->a(Ljava/io/File;Ljava/io/File;)V

    .line 11
    invoke-static {v3}, Lhy6;->c(Ljava/io/File;)V

    .line 12
    :cond_2
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 14
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, Lhy6;->a(Ljava/io/File;Ljava/io/File;)V

    .line 15
    invoke-static {v1}, Lhy6;->c(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 16
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 17
    invoke-virtual {p1}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/noinnion/android/greader/ui/setting/PrefOfflineStorageDialog$c;->b:Ljava/lang/String;

    .line 18
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_1

    .line 19
    :cond_3
    :goto_0
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_1
    return-object p1
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    .line 2
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/setting/PrefOfflineStorageDialog$c;->c:Lcom/noinnion/android/greader/ui/setting/PrefOfflineStorageDialog;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/setting/PrefOfflineStorageDialog$c;->c:Lcom/noinnion/android/greader/ui/setting/PrefOfflineStorageDialog;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/noinnion/android/greader/ui/setting/PrefOfflineStorageDialog$c;->c:Lcom/noinnion/android/greader/ui/setting/PrefOfflineStorageDialog;

    iget-object v1, v1, Lcom/noinnion/android/greader/ui/setting/PrefOfflineStorageDialog;->f:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    iget-object v1, p0, Lcom/noinnion/android/greader/ui/setting/PrefOfflineStorageDialog$c;->c:Lcom/noinnion/android/greader/ui/setting/PrefOfflineStorageDialog;

    iget-object v1, v1, Lcom/noinnion/android/greader/ui/setting/PrefOfflineStorageDialog;->f:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 6
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 7
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/setting/PrefOfflineStorageDialog$c;->a:Ljava/lang/String;

    const-string v1, "cache_offline_location"

    .line 8
    invoke-static {v0, v1, p1}, Liw6;->V(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/setting/PrefOfflineStorageDialog$c;->c:Lcom/noinnion/android/greader/ui/setting/PrefOfflineStorageDialog;

    invoke-virtual {p1}, Lrb;->dismiss()V

    goto :goto_0

    .line 10
    :cond_2
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/setting/PrefOfflineStorageDialog$c;->b:Ljava/lang/String;

    invoke-static {v0, p1}, Ln56;->X1(Landroid/content/Context;Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public onPreExecute()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/setting/PrefOfflineStorageDialog$c;->c:Lcom/noinnion/android/greader/ui/setting/PrefOfflineStorageDialog;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/setting/PrefOfflineStorageDialog$c;->c:Lcom/noinnion/android/greader/ui/setting/PrefOfflineStorageDialog;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/noinnion/android/greader/ui/setting/PrefOfflineStorageDialog$c;->c:Lcom/noinnion/android/greader/ui/setting/PrefOfflineStorageDialog;

    const v4, 0x7f1101cc

    invoke-virtual {v3, v4}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, v0, Lcom/noinnion/android/greader/ui/setting/PrefOfflineStorageDialog;->f:Landroid/app/ProgressDialog;

    return-void
.end method
