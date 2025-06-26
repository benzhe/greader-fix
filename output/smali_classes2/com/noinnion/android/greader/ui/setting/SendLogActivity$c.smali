.class public Lcom/noinnion/android/greader/ui/setting/SendLogActivity$c;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/noinnion/android/greader/ui/setting/SendLogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/util/List<",
        "Ljava/lang/String;",
        ">;",
        "Ljava/lang/Void;",
        "Ljava/lang/StringBuilder;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/noinnion/android/greader/ui/setting/SendLogActivity;


# direct methods
.method public constructor <init>(Lcom/noinnion/android/greader/ui/setting/SendLogActivity;Lcom/noinnion/android/greader/ui/setting/SendLogActivity$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/noinnion/android/greader/ui/setting/SendLogActivity$c;->a:Lcom/noinnion/android/greader/ui/setting/SendLogActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, [Ljava/util/List;

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "logcat"

    .line 4
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "-d"

    .line 5
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p1, :cond_0

    .line 6
    array-length v2, p1

    if-lez v2, :cond_0

    const/4 v2, 0x0

    aget-object p1, p1, v2

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 7
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 8
    :cond_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object p1

    .line 9
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 10
    :goto_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    sget-object p1, Lcom/noinnion/android/greader/ui/setting/SendLogActivity;->D:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string v1, "SendLogActivity"

    const-string v2, "CollectLogTask.doInBackground failed"

    .line 13
    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    return-object v0
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 6

    .line 1
    check-cast p1, Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    .line 2
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const v2, 0x186a0

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-lez v1, :cond_0

    .line 3
    invoke-virtual {p1, v2, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 4
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v3, "mounted"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v3, "android.intent.extra.TEXT"

    if-nez v1, :cond_2

    .line 5
    iget-object v1, p0, Lcom/noinnion/android/greader/ui/setting/SendLogActivity$c;->a:Lcom/noinnion/android/greader/ui/setting/SendLogActivity;

    .line 6
    iget-object v1, v1, Lcom/noinnion/android/greader/ui/setting/SendLogActivity;->A:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 7
    sget-object v1, Lcom/noinnion/android/greader/ui/setting/SendLogActivity;->D:Ljava/lang/String;

    invoke-virtual {p1, v2, v1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    iget-object v1, p0, Lcom/noinnion/android/greader/ui/setting/SendLogActivity$c;->a:Lcom/noinnion/android/greader/ui/setting/SendLogActivity;

    .line 9
    iget-object v1, v1, Lcom/noinnion/android/greader/ui/setting/SendLogActivity;->A:Ljava/lang/String;

    .line 10
    invoke-virtual {p1, v2, v1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    :cond_1
    iget-object v1, p0, Lcom/noinnion/android/greader/ui/setting/SendLogActivity$c;->a:Lcom/noinnion/android/greader/ui/setting/SendLogActivity;

    .line 12
    iget-object v1, v1, Lcom/noinnion/android/greader/ui/setting/SendLogActivity;->x:Landroid/content/Intent;

    .line 13
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_0

    :cond_2
    const-string v1, "log_"

    .line 14
    invoke-static {v1}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ".txt"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 15
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "/gReader/.log/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, v1, p1}, Lhy6;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 16
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/setting/SendLogActivity$c;->a:Lcom/noinnion/android/greader/ui/setting/SendLogActivity;

    .line 17
    iget-object v2, p1, Lcom/noinnion/android/greader/ui/setting/SendLogActivity;->A:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 18
    iget-object p1, p1, Lcom/noinnion/android/greader/ui/setting/SendLogActivity;->x:Landroid/content/Intent;

    .line 19
    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 20
    :cond_3
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/setting/SendLogActivity$c;->a:Lcom/noinnion/android/greader/ui/setting/SendLogActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 21
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Ldn6;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".fileprovider"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 23
    invoke-static {p1, v1}, Landroidx/core/content/FileProvider;->a(Landroid/content/Context;Ljava/lang/String;)Landroidx/core/content/FileProvider$a;

    move-result-object p1

    .line 24
    invoke-interface {p1, v2}, Landroidx/core/content/FileProvider$a;->b(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    .line 25
    iget-object v1, p0, Lcom/noinnion/android/greader/ui/setting/SendLogActivity$c;->a:Lcom/noinnion/android/greader/ui/setting/SendLogActivity;

    .line 26
    iget-object v1, v1, Lcom/noinnion/android/greader/ui/setting/SendLogActivity;->x:Landroid/content/Intent;

    const-string v2, "android.intent.extra.STREAM"

    .line 27
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 28
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/setting/SendLogActivity$c;->a:Lcom/noinnion/android/greader/ui/setting/SendLogActivity;

    .line 29
    iget-object p1, p1, Lcom/noinnion/android/greader/ui/setting/SendLogActivity;->x:Landroid/content/Intent;

    const/4 v1, 0x1

    .line 30
    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 31
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 32
    :goto_0
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/setting/SendLogActivity$c;->a:Lcom/noinnion/android/greader/ui/setting/SendLogActivity;

    .line 33
    iget-object v1, p1, Lcom/noinnion/android/greader/ui/setting/SendLogActivity;->x:Landroid/content/Intent;

    const v2, 0x7f110162

    .line 34
    invoke-virtual {p1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 35
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/setting/SendLogActivity$c;->a:Lcom/noinnion/android/greader/ui/setting/SendLogActivity;

    .line 36
    iget-object v1, p1, Lcom/noinnion/android/greader/ui/setting/SendLogActivity;->z:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 37
    iget-object v1, p1, Lcom/noinnion/android/greader/ui/setting/SendLogActivity;->z:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 38
    iput-object v0, p1, Lcom/noinnion/android/greader/ui/setting/SendLogActivity;->z:Landroid/app/ProgressDialog;

    .line 39
    :cond_4
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/setting/SendLogActivity$c;->a:Lcom/noinnion/android/greader/ui/setting/SendLogActivity;

    .line 40
    iget-object v1, p1, Lcom/noinnion/android/greader/ui/setting/SendLogActivity;->w:La0;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 41
    iget-object v1, p1, Lcom/noinnion/android/greader/ui/setting/SendLogActivity;->w:La0;

    invoke-virtual {v1}, Li0;->dismiss()V

    .line 42
    iput-object v0, p1, Lcom/noinnion/android/greader/ui/setting/SendLogActivity;->w:La0;

    .line 43
    :cond_5
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/setting/SendLogActivity$c;->a:Lcom/noinnion/android/greader/ui/setting/SendLogActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto :goto_1

    .line 44
    :cond_6
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/setting/SendLogActivity$c;->a:Lcom/noinnion/android/greader/ui/setting/SendLogActivity;

    .line 45
    iget-object v1, p1, Lcom/noinnion/android/greader/ui/setting/SendLogActivity;->z:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 46
    iget-object v1, p1, Lcom/noinnion/android/greader/ui/setting/SendLogActivity;->z:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 47
    iput-object v0, p1, Lcom/noinnion/android/greader/ui/setting/SendLogActivity;->z:Landroid/app/ProgressDialog;

    .line 48
    :cond_7
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/setting/SendLogActivity$c;->a:Lcom/noinnion/android/greader/ui/setting/SendLogActivity;

    const v0, 0x7f110164

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 49
    new-instance v1, Lt75;

    invoke-direct {v1, p1}, Lt75;-><init>(Landroid/content/Context;)V

    const v2, 0x7f11001d

    .line 50
    invoke-virtual {p1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 51
    iget-object v3, v1, La0$a;->a:Landroidx/appcompat/app/AlertController$b;

    iput-object v2, v3, Landroidx/appcompat/app/AlertController$b;->e:Ljava/lang/CharSequence;

    .line 52
    iput-object v0, v3, Landroidx/appcompat/app/AlertController$b;->g:Ljava/lang/CharSequence;

    const v0, 0x1080027

    .line 53
    iput v0, v3, Landroidx/appcompat/app/AlertController$b;->c:I

    const v0, 0x104000a

    .line 54
    new-instance v2, Lvs6;

    invoke-direct {v2, p1}, Lvs6;-><init>(Lcom/noinnion/android/greader/ui/setting/SendLogActivity;)V

    .line 55
    invoke-virtual {v1, v0, v2}, Lt75;->j(ILandroid/content/DialogInterface$OnClickListener;)Lt75;

    move-result-object p1

    .line 56
    invoke-virtual {p1}, La0$a;->e()La0;

    :goto_1
    return-void
.end method

.method public onPreExecute()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/setting/SendLogActivity$c;->a:Lcom/noinnion/android/greader/ui/setting/SendLogActivity;

    const v1, 0x7f110161

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v2, Landroid/app/ProgressDialog;

    invoke-direct {v2, v0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lcom/noinnion/android/greader/ui/setting/SendLogActivity;->z:Landroid/app/ProgressDialog;

    const/4 v3, 0x1

    .line 4
    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 5
    iget-object v2, v0, Lcom/noinnion/android/greader/ui/setting/SendLogActivity;->z:Landroid/app/ProgressDialog;

    invoke-virtual {v2, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v1, v0, Lcom/noinnion/android/greader/ui/setting/SendLogActivity;->z:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 7
    iget-object v1, v0, Lcom/noinnion/android/greader/ui/setting/SendLogActivity;->z:Landroid/app/ProgressDialog;

    new-instance v2, Ltt6;

    invoke-direct {v2, v0}, Ltt6;-><init>(Lcom/noinnion/android/greader/ui/setting/SendLogActivity;)V

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 8
    iget-object v0, v0, Lcom/noinnion/android/greader/ui/setting/SendLogActivity;->z:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method
