.class public Lcom/noinnion/android/greader/ui/setting/PrefRestoreDialog$d;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/noinnion/android/greader/ui/setting/PrefRestoreDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
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
.field public final synthetic a:Lcom/noinnion/android/greader/ui/setting/PrefRestoreDialog;


# direct methods
.method public constructor <init>(Lcom/noinnion/android/greader/ui/setting/PrefRestoreDialog;Lcom/noinnion/android/greader/ui/setting/PrefRestoreDialog$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/noinnion/android/greader/ui/setting/PrefRestoreDialog$d;->a:Lcom/noinnion/android/greader/ui/setting/PrefRestoreDialog;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, [Ljava/lang/String;

    .line 2
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/setting/PrefRestoreDialog$d;->a:Lcom/noinnion/android/greader/ui/setting/PrefRestoreDialog;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/setting/PrefRestoreDialog$d;->a:Lcom/noinnion/android/greader/ui/setting/PrefRestoreDialog;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    .line 4
    aget-object p1, p1, v1

    .line 5
    :try_start_0
    iget-object v1, p0, Lcom/noinnion/android/greader/ui/setting/PrefRestoreDialog$d;->a:Lcom/noinnion/android/greader/ui/setting/PrefRestoreDialog;

    invoke-static {v1, p1}, Lcom/noinnion/android/greader/ui/setting/PrefRestoreDialog;->d(Lcom/noinnion/android/greader/ui/setting/PrefRestoreDialog;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Ln56;->X1(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 7
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    return-object p1
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    .line 2
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/setting/PrefRestoreDialog$d;->a:Lcom/noinnion/android/greader/ui/setting/PrefRestoreDialog;

    iget-object v0, v0, Lcom/noinnion/android/greader/ui/setting/PrefRestoreDialog;->g:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/setting/PrefRestoreDialog$d;->a:Lcom/noinnion/android/greader/ui/setting/PrefRestoreDialog;

    iget-object v0, v0, Lcom/noinnion/android/greader/ui/setting/PrefRestoreDialog;->g:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 4
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 5
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/setting/PrefRestoreDialog$d;->a:Lcom/noinnion/android/greader/ui/setting/PrefRestoreDialog;

    .line 6
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 8
    invoke-static {}, Lon6;->b()V

    .line 9
    invoke-static {v0}, Lon6;->g(Landroid/content/Context;)Lhw6;

    move-result-object v1

    const/4 v2, -0x1

    .line 10
    iput v2, v1, Lhw6;->g:I

    .line 11
    invoke-static {v0}, Lon6;->g(Landroid/content/Context;)Lhw6;

    move-result-object v0

    .line 12
    iput v2, v0, Lhw6;->g:I

    .line 13
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Ln56;->b1(Landroid/app/Activity;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onPreExecute()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/setting/PrefRestoreDialog$d;->a:Lcom/noinnion/android/greader/ui/setting/PrefRestoreDialog;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/setting/PrefRestoreDialog$d;->a:Lcom/noinnion/android/greader/ui/setting/PrefRestoreDialog;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/noinnion/android/greader/ui/setting/PrefRestoreDialog$d;->a:Lcom/noinnion/android/greader/ui/setting/PrefRestoreDialog;

    const v4, 0x7f1101c7

    invoke-virtual {v3, v4}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, v0, Lcom/noinnion/android/greader/ui/setting/PrefRestoreDialog;->g:Landroid/app/ProgressDialog;

    return-void
.end method
