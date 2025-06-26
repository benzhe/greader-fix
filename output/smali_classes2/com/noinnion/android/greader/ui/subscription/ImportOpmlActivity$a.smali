.class public Lcom/noinnion/android/greader/ui/subscription/ImportOpmlActivity$a;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/noinnion/android/greader/ui/subscription/ImportOpmlActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
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
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public final synthetic c:Lcom/noinnion/android/greader/ui/subscription/ImportOpmlActivity;


# direct methods
.method public constructor <init>(Lcom/noinnion/android/greader/ui/subscription/ImportOpmlActivity;Lku6;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/noinnion/android/greader/ui/subscription/ImportOpmlActivity$a;->c:Lcom/noinnion/android/greader/ui/subscription/ImportOpmlActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/noinnion/android/greader/ui/subscription/ImportOpmlActivity$a;->a:Ljava/lang/String;

    .line 3
    iput-object p1, p0, Lcom/noinnion/android/greader/ui/subscription/ImportOpmlActivity$a;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    check-cast p1, [Ljava/lang/Void;

    .line 2
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/subscription/ImportOpmlActivity$a;->c:Lcom/noinnion/android/greader/ui/subscription/ImportOpmlActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 3
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/noinnion/android/greader/ui/subscription/ImportOpmlActivity$a;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    new-instance v1, Lyx6;

    invoke-direct {v1}, Lyx6;-><init>()V

    const/4 v2, 0x0

    .line 5
    :try_start_0
    invoke-static {p1}, Lon6;->i(Landroid/content/Context;)Lep6;

    move-result-object p1

    .line 6
    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-virtual {v1, v3}, Lyx6;->a(Ljava/io/Reader;)Ljava/util/ArrayList;

    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lxx6;

    .line 8
    iget-object v3, v1, Lxx6;->c:Ljava/lang/String;

    if-nez v3, :cond_0

    move-object v10, v2

    goto :goto_1

    :cond_0
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    move-object v10, v4

    .line 9
    :goto_1
    iget-object v8, v1, Lxx6;->a:Ljava/lang/String;

    .line 10
    iget-object v9, v1, Lxx6;->b:Ljava/lang/String;

    .line 11
    invoke-virtual {p1}, Lep6;->m()Lrn6;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v11, 0x2

    invoke-virtual/range {v6 .. v11}, Lrn6;->editSubscription(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;I)Z

    goto :goto_0

    .line 12
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lep6;->S(J)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 14
    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/noinnion/android/greader/ui/subscription/ImportOpmlActivity$a;->b:Ljava/lang/String;

    goto :goto_2

    :catch_1
    move-exception p1

    .line 15
    invoke-virtual {p1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    .line 16
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/subscription/ImportOpmlActivity$a;->c:Lcom/noinnion/android/greader/ui/subscription/ImportOpmlActivity;

    const v0, 0x7f1101c6

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/noinnion/android/greader/ui/subscription/ImportOpmlActivity$a;->b:Ljava/lang/String;

    goto :goto_2

    :catch_2
    move-exception p1

    .line 17
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 18
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/subscription/ImportOpmlActivity$a;->c:Lcom/noinnion/android/greader/ui/subscription/ImportOpmlActivity;

    const v0, 0x7f1100c5

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/noinnion/android/greader/ui/subscription/ImportOpmlActivity$a;->b:Ljava/lang/String;

    :goto_2
    return-object v2
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Ljava/lang/Void;

    .line 2
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/subscription/ImportOpmlActivity$a;->c:Lcom/noinnion/android/greader/ui/subscription/ImportOpmlActivity;

    iget-object p1, p1, Lcom/noinnion/android/greader/ui/subscription/ImportOpmlActivity;->y:Landroid/app/ProgressDialog;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/subscription/ImportOpmlActivity$a;->c:Lcom/noinnion/android/greader/ui/subscription/ImportOpmlActivity;

    iget-object p1, p1, Lcom/noinnion/android/greader/ui/subscription/ImportOpmlActivity;->y:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/subscription/ImportOpmlActivity$a;->b:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/subscription/ImportOpmlActivity$a;->c:Lcom/noinnion/android/greader/ui/subscription/ImportOpmlActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 6
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/subscription/ImportOpmlActivity$a;->b:Ljava/lang/String;

    invoke-static {p1, v0}, Ln56;->X1(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/subscription/ImportOpmlActivity$a;->c:Lcom/noinnion/android/greader/ui/subscription/ImportOpmlActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method

.method public onPreExecute()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/subscription/ImportOpmlActivity$a;->c:Lcom/noinnion/android/greader/ui/subscription/ImportOpmlActivity;

    const v1, 0x7f1101d2

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v2, v1, v3, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, v0, Lcom/noinnion/android/greader/ui/subscription/ImportOpmlActivity;->y:Landroid/app/ProgressDialog;

    .line 2
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/subscription/ImportOpmlActivity$a;->c:Lcom/noinnion/android/greader/ui/subscription/ImportOpmlActivity;

    iget-object v0, v0, Lcom/noinnion/android/greader/ui/subscription/ImportOpmlActivity;->vInputText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/noinnion/android/greader/ui/subscription/ImportOpmlActivity$a;->a:Ljava/lang/String;

    return-void
.end method
