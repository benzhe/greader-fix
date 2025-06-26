.class public Lcom/noinnion/android/greader/ui/login/OldReaderLoginActivity$b;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/noinnion/android/greader/ui/login/OldReaderLoginActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
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
.field public final synthetic a:Lcom/noinnion/android/greader/ui/login/OldReaderLoginActivity;


# direct methods
.method public constructor <init>(Lcom/noinnion/android/greader/ui/login/OldReaderLoginActivity;Lcom/noinnion/android/greader/ui/login/OldReaderLoginActivity$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/noinnion/android/greader/ui/login/OldReaderLoginActivity$b;->a:Lcom/noinnion/android/greader/ui/login/OldReaderLoginActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    check-cast p1, [Ljava/lang/String;

    const/4 v0, 0x0

    .line 2
    aget-object v0, p1, v0

    const/4 v1, 0x1

    .line 3
    aget-object p1, p1, v1

    .line 4
    iget-object v2, p0, Lcom/noinnion/android/greader/ui/login/OldReaderLoginActivity$b;->a:Lcom/noinnion/android/greader/ui/login/OldReaderLoginActivity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 5
    new-instance v3, Lxn6;

    invoke-direct {v3, v2}, Lxn6;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x6

    const v5, 0x7f1101c8

    const/4 v6, 0x0

    .line 6
    :try_start_0
    invoke-static {v2, v4}, Lcn6;->h0(Landroid/content/Context;I)V

    .line 7
    invoke-static {v2, v6}, Lcn6;->f0(Landroid/content/Context;Ljava/lang/String;)V

    .line 8
    invoke-virtual {v3, v0, p1, v1}, Lun6;->j(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9
    invoke-static {v2, v0, p1}, Lcn6;->g0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    .line 11
    :cond_0
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/login/OldReaderLoginActivity$b;->a:Lcom/noinnion/android/greader/ui/login/OldReaderLoginActivity;

    invoke-virtual {p1, v5}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p1, v0}, Ln56;->X1(Landroid/content/Context;Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lgw6; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 12
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 13
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/login/OldReaderLoginActivity$b;->a:Lcom/noinnion/android/greader/ui/login/OldReaderLoginActivity;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Ln56;->X1(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_0

    :catch_0
    move-exception p1

    .line 14
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 15
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/login/OldReaderLoginActivity$b;->a:Lcom/noinnion/android/greader/ui/login/OldReaderLoginActivity;

    invoke-virtual {p1, v5}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p1, v0}, Ln56;->X1(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 16
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 17
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/login/OldReaderLoginActivity$b;->a:Lcom/noinnion/android/greader/ui/login/OldReaderLoginActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/noinnion/android/greader/ui/login/OldReaderLoginActivity$b;->a:Lcom/noinnion/android/greader/ui/login/OldReaderLoginActivity;

    const v3, 0x7f1100ca

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Ln56;->X1(Landroid/content/Context;Ljava/lang/CharSequence;)V

    :goto_0
    return-object v6
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    .line 2
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/login/OldReaderLoginActivity$b;->a:Lcom/noinnion/android/greader/ui/login/OldReaderLoginActivity;

    const v1, 0x7f09018e

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/login/OldReaderLoginActivity$b;->a:Lcom/noinnion/android/greader/ui/login/OldReaderLoginActivity;

    .line 4
    sget v1, Lcom/noinnion/android/greader/ui/login/OldReaderLoginActivity;->A:I

    .line 5
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eqz p1, :cond_1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const/4 v1, 0x1

    invoke-static {p1, v1}, Liw6;->Z(Landroid/content/Context;I)V

    const/4 p1, -0x1

    .line 8
    invoke-virtual {v0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 9
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_1

    :cond_1
    :goto_0
    const p1, 0x7f1101c8

    .line 10
    invoke-static {v1, p1}, Ln56;->W1(Landroid/content/Context;I)V

    .line 11
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcn6;->h0(Landroid/content/Context;I)V

    :goto_1
    return-void
.end method

.method public onPreExecute()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/login/OldReaderLoginActivity$b;->a:Lcom/noinnion/android/greader/ui/login/OldReaderLoginActivity;

    const v1, 0x7f09018e

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
