.class public Lcom/noinnion/android/greader/ui/subscription/ManageSourcesActivity$d;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/noinnion/android/greader/ui/subscription/ManageSourcesActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Long;",
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
    iput-object p1, p0, Lcom/noinnion/android/greader/ui/subscription/ManageSourcesActivity$d;->a:Lcom/noinnion/android/greader/ui/subscription/ManageSourcesActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    check-cast p1, [Ljava/lang/Long;

    .line 2
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/subscription/ManageSourcesActivity$d;->a:Lcom/noinnion/android/greader/ui/subscription/ManageSourcesActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    .line 3
    :try_start_0
    aget-object p1, p1, v1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 4
    invoke-static {v0, v2, v3, v1}, Lip6;->c(Landroid/content/Context;JZ)Lip6;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {v0}, Lon6;->i(Landroid/content/Context;)Lep6;

    move-result-object v1

    iget-wide v2, p1, Lip6;->e:J

    iget-object v4, p1, Lip6;->h:Ljava/lang/String;

    iget-object p1, p1, Lip6;->f:Ljava/lang/String;

    const-string v5, "feed/"

    const-string v6, ""

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, v3, v4, p1}, Lep6;->X(JLjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Ln56;->X1(Landroid/content/Context;Ljava/lang/CharSequence;)V

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Ljava/lang/Void;

    .line 2
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/subscription/ManageSourcesActivity$d;->a:Lcom/noinnion/android/greader/ui/subscription/ManageSourcesActivity;

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
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/subscription/ManageSourcesActivity$d;->a:Lcom/noinnion/android/greader/ui/subscription/ManageSourcesActivity;

    iget-object p1, p1, Lcom/noinnion/android/greader/ui/subscription/ManageSourcesActivity;->z:Landroid/app/ProgressDialog;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/subscription/ManageSourcesActivity$d;->a:Lcom/noinnion/android/greader/ui/subscription/ManageSourcesActivity;

    iget-object p1, p1, Lcom/noinnion/android/greader/ui/subscription/ManageSourcesActivity;->z:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public onPreExecute()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/subscription/ManageSourcesActivity$d;->a:Lcom/noinnion/android/greader/ui/subscription/ManageSourcesActivity;

    const v1, 0x7f1101d9

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v2, v1, v3, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, v0, Lcom/noinnion/android/greader/ui/subscription/ManageSourcesActivity;->z:Landroid/app/ProgressDialog;

    .line 2
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/subscription/ManageSourcesActivity$d;->a:Lcom/noinnion/android/greader/ui/subscription/ManageSourcesActivity;

    invoke-static {v0}, Lyo6;->i(Landroid/app/Activity;)V

    return-void
.end method
