.class public Lcom/noinnion/android/greader/ui/setting/SendLogActivity;
.super Lcom/noinnion/android/reader/ui/BaseActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/noinnion/android/greader/ui/setting/SendLogActivity$c;
    }
.end annotation


# static fields
.field public static final D:Ljava/lang/String;


# instance fields
.field public A:Ljava/lang/String;

.field public B:[Ljava/lang/String;

.field public C:Ljava/lang/String;

.field public w:La0;

.field public x:Landroid/content/Intent;

.field public y:Lcom/noinnion/android/greader/ui/setting/SendLogActivity$c;

.field public z:Landroid/app/ProgressDialog;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "line.separator"

    .line 1
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/noinnion/android/greader/ui/setting/SendLogActivity;->D:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/noinnion/android/reader/ui/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 14

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, v1}, Lcom/noinnion/android/reader/ui/BaseActivity;->y(Landroid/os/Bundle;ZZ)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v1, v1}, Landroid/view/Window;->setLayout(II)V

    const p1, 0x7f1100fc

    .line 3
    invoke-static {p0, p1}, Ln56;->y2(Landroid/app/Activity;I)V

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/noinnion/android/greader/ui/setting/SendLogActivity;->x:Landroid/content/Intent;

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v2, "com.noinnion.android.greader.reader.extra.SEND_LOG"

    .line 6
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    const-string v3, "com.noinnion.android.greader.reader.extra.FEATURE_REQUEST"

    .line 7
    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    const-string v4, "com.noinnion.android.greader.reader.extra.BUG_REPORT"

    .line 8
    invoke-virtual {p1, v4, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const-string v4, "*:W"

    .line 9
    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/noinnion/android/greader/ui/setting/SendLogActivity;->B:[Ljava/lang/String;

    .line 10
    iget-object v4, p0, Lcom/noinnion/android/greader/ui/setting/SendLogActivity;->x:Landroid/content/Intent;

    if-nez v4, :cond_7

    .line 11
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.SEND"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/noinnion/android/greader/ui/setting/SendLogActivity;->x:Landroid/content/Intent;

    const-string v5, "text/plain"

    .line 12
    invoke-virtual {v4, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 13
    iget-object v4, p0, Lcom/noinnion/android/greader/ui/setting/SendLogActivity;->x:Landroid/content/Intent;

    const-string v5, "noinnion@gmail.com"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    const-string v6, "android.intent.extra.EMAIL"

    invoke-virtual {v4, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    if-eqz v3, :cond_1

    const p1, 0x7f1100d7

    .line 14
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    const p1, 0x7f1100d6

    .line 15
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    const p1, 0x7f1100db

    .line 16
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 17
    :goto_1
    invoke-static {p0}, Ln56;->a1(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    const-string v3, "?"

    :cond_3
    const-string v4, " "

    .line 18
    invoke-static {p1, v4}, Ljo;->B(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const v5, 0x7f11001d

    invoke-virtual {p0, v5}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " ("

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 19
    iget-object v7, p0, Lcom/noinnion/android/greader/ui/setting/SendLogActivity;->x:Landroid/content/Intent;

    const-string v8, "android.intent.extra.SUBJECT"

    invoke-virtual {v7, v8, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 20
    new-instance p1, Ljava/text/MessageFormat;

    const v7, 0x7f110163

    invoke-virtual {p0, v7}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p1, v7}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    const v7, 0x7f1100dc

    .line 21
    invoke-virtual {p0, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/noinnion/android/greader/ui/setting/SendLogActivity;->A:Ljava/lang/String;

    .line 22
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/noinnion/android/greader/ui/setting/SendLogActivity;->A:Ljava/lang/String;

    const-string v9, "\n\n"

    invoke-static {v7, v8, v9}, Ljo;->s(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/noinnion/android/greader/ui/setting/SendLogActivity;->A:Ljava/lang/String;

    .line 23
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/noinnion/android/greader/ui/setting/SendLogActivity;->A:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v8, 0x5

    new-array v8, v8, [Ljava/lang/String;

    invoke-static {v3, v5}, Ljo;->B(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p0}, Liw6;->a0(Landroid/content/Context;)Z

    move-result v5

    invoke-static {p0, v5}, Llw6;->n(Landroid/content/Context;Z)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, "tablet"

    goto :goto_2

    :cond_4
    const-string v5, "phone"

    :goto_2
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcn6;->c0(Landroid/content/Context;)I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v8, v1

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    aput-object v1, v8, v0

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const/4 v3, 0x2

    aput-object v1, v8, v3

    const-string v1, "\n"

    const-string v5, "Unavailable"

    const-string v6, "SendLogActivity"

    const/4 v9, 0x4

    const/4 v10, 0x3

    .line 24
    :try_start_0
    new-instance v11, Ljava/io/BufferedReader;

    new-instance v12, Ljava/io/FileReader;

    const-string v13, "/proc/version"

    invoke-direct {v12, v13}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v13, 0x100

    invoke-direct {v11, v12, v13}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    :try_start_1
    invoke-virtual {v11}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    :try_start_2
    invoke-virtual {v11}, Ljava/io/BufferedReader;->close()V

    const-string v11, "\\w+\\s+\\w+\\s+([^\\s]+)\\s+\\(([^\\s@]+(?:@[^\\s.]+)?)[^)]*\\)\\s+\\([^)]+\\)\\s+([^\\s]+)\\s+(?:PREEMPT\\s+)?(.+)"

    .line 27
    invoke-static {v11}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v11

    .line 28
    invoke-virtual {v11, v12}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v11

    .line 29
    invoke-virtual {v11}, Ljava/util/regex/Matcher;->matches()Z

    move-result v13

    if-nez v13, :cond_5

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Regex did not match on /proc/version: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 31
    :cond_5
    invoke-virtual {v11}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v12

    if-ge v12, v9, :cond_6

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Regex match on /proc/version only returned "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " groups"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 33
    :cond_6
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v12, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    :catchall_0
    move-exception v0

    .line 34
    invoke-virtual {v11}, Ljava/io/BufferedReader;->close()V

    .line 35
    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "IO Exception when getting kernel version for Device Info screen"

    .line 36
    invoke-static {v6, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3
    aput-object v5, v8, v10

    .line 37
    sget-object v0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    aput-object v0, v8, v9

    invoke-virtual {p1, v8}, Ljava/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/noinnion/android/greader/ui/setting/SendLogActivity;->A:Ljava/lang/String;

    const-string p1, "time"

    .line 38
    iput-object p1, p0, Lcom/noinnion/android/greader/ui/setting/SendLogActivity;->C:Ljava/lang/String;

    :cond_7
    if-eqz v2, :cond_8

    .line 39
    new-instance p1, Lt75;

    invoke-direct {p1, p0}, Lt75;-><init>(Landroid/content/Context;)V

    const v0, 0x7f110039

    .line 40
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 41
    iget-object v1, p1, La0$a;->a:Landroidx/appcompat/app/AlertController$b;

    iput-object v0, v1, Landroidx/appcompat/app/AlertController$b;->e:Ljava/lang/CharSequence;

    const v0, 0x7f110165

    .line 42
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 43
    iget-object v1, p1, La0$a;->a:Landroidx/appcompat/app/AlertController$b;

    iput-object v0, v1, Landroidx/appcompat/app/AlertController$b;->g:Ljava/lang/CharSequence;

    const v0, 0x104000a

    .line 44
    new-instance v1, Lcom/noinnion/android/greader/ui/setting/SendLogActivity$b;

    invoke-direct {v1, p0}, Lcom/noinnion/android/greader/ui/setting/SendLogActivity$b;-><init>(Lcom/noinnion/android/greader/ui/setting/SendLogActivity;)V

    .line 45
    invoke-virtual {p1, v0, v1}, Lt75;->j(ILandroid/content/DialogInterface$OnClickListener;)Lt75;

    move-result-object p1

    const/high16 v0, 0x1040000

    new-instance v1, Lcom/noinnion/android/greader/ui/setting/SendLogActivity$a;

    invoke-direct {v1, p0}, Lcom/noinnion/android/greader/ui/setting/SendLogActivity$a;-><init>(Lcom/noinnion/android/greader/ui/setting/SendLogActivity;)V

    .line 46
    invoke-virtual {p1, v0, v1}, Lt75;->h(ILandroid/content/DialogInterface$OnClickListener;)Lt75;

    .line 47
    invoke-virtual {p1}, La0$a;->e()La0;

    move-result-object p1

    iput-object p1, p0, Lcom/noinnion/android/greader/ui/setting/SendLogActivity;->w:La0;

    goto :goto_4

    .line 48
    :cond_8
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/setting/SendLogActivity;->x:Landroid/content/Intent;

    iget-object v0, p0, Lcom/noinnion/android/greader/ui/setting/SendLogActivity;->A:Ljava/lang/String;

    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 49
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/setting/SendLogActivity;->x:Landroid/content/Intent;

    const v0, 0x7f110162

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 50
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_4
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/noinnion/android/greader/ui/setting/SendLogActivity;->z()V

    .line 2
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/setting/SendLogActivity;->z:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/setting/SendLogActivity;->z:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 4
    iput-object v1, p0, Lcom/noinnion/android/greader/ui/setting/SendLogActivity;->z:Landroid/app/ProgressDialog;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/setting/SendLogActivity;->w:La0;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/setting/SendLogActivity;->w:La0;

    invoke-virtual {v0}, Li0;->dismiss()V

    .line 7
    iput-object v1, p0, Lcom/noinnion/android/greader/ui/setting/SendLogActivity;->w:La0;

    .line 8
    :cond_1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    return-void
.end method

.method public z()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/setting/SendLogActivity;->y:Lcom/noinnion/android/greader/ui/setting/SendLogActivity$c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/setting/SendLogActivity;->y:Lcom/noinnion/android/greader/ui/setting/SendLogActivity$c;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/noinnion/android/greader/ui/setting/SendLogActivity;->y:Lcom/noinnion/android/greader/ui/setting/SendLogActivity$c;

    :cond_0
    return-void
.end method
