.class public Lcom/noinnion/android/greader/ui/subscription/ManageSourcesActivity$c;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/noinnion/android/greader/ui/subscription/ManageSourcesActivity;
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
.field public final synthetic a:Lcom/noinnion/android/greader/ui/subscription/ManageSourcesActivity;


# direct methods
.method public constructor <init>(Lcom/noinnion/android/greader/ui/subscription/ManageSourcesActivity;Lcom/noinnion/android/greader/ui/subscription/ManageSourcesActivity$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/noinnion/android/greader/ui/subscription/ManageSourcesActivity$c;->a:Lcom/noinnion/android/greader/ui/subscription/ManageSourcesActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, [Ljava/lang/String;

    .line 2
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/subscription/ManageSourcesActivity$c;->a:Lcom/noinnion/android/greader/ui/subscription/ManageSourcesActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    .line 3
    :try_start_0
    aget-object p1, p1, v1

    .line 4
    invoke-static {v0, p1, v1}, Llp6;->b(Landroid/content/Context;Ljava/lang/String;Z)Llp6;

    move-result-object p1

    .line 5
    invoke-static {v0}, Lon6;->i(Landroid/content/Context;)Lep6;

    move-result-object v0

    invoke-virtual {v0, p1}, Lep6;->g(Llp6;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Ljava/lang/Void;

    .line 2
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/subscription/ManageSourcesActivity$c;->a:Lcom/noinnion/android/greader/ui/subscription/ManageSourcesActivity;

    .line 3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {p1}, Lyd;->a(Landroid/content/Context;)Lyd;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.noinnion.android.greader.reader.action.REFRESH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lyd;->c(Landroid/content/Intent;)Z

    .line 5
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/subscription/ManageSourcesActivity$c;->a:Lcom/noinnion/android/greader/ui/subscription/ManageSourcesActivity;

    iget-object p1, p1, Lcom/noinnion/android/greader/ui/subscription/ManageSourcesActivity;->z:Landroid/app/ProgressDialog;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/subscription/ManageSourcesActivity$c;->a:Lcom/noinnion/android/greader/ui/subscription/ManageSourcesActivity;

    iget-object p1, p1, Lcom/noinnion/android/greader/ui/subscription/ManageSourcesActivity;->z:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public onPreExecute()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/subscription/ManageSourcesActivity$c;->a:Lcom/noinnion/android/greader/ui/subscription/ManageSourcesActivity;

    const v1, 0x7f1101c0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v2, v1, v3, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, v0, Lcom/noinnion/android/greader/ui/subscription/ManageSourcesActivity;->z:Landroid/app/ProgressDialog;

    return-void
.end method
