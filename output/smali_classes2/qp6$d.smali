.class public Lqp6$d;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lqp6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
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
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lqp6$b;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic b:Lqp6;


# direct methods
.method public constructor <init>(Lqp6;Lqp6$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lqp6$d;->b:Lqp6;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lqp6$d;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    check-cast p1, [Ljava/lang/Void;

    .line 2
    :try_start_0
    new-instance p1, Ljava/io/File;

    sget-object v0, Ldn6;->c:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 4
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    .line 5
    array-length v0, p1

    new-array v0, v0, [Lmx6;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 6
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_1

    .line 7
    new-instance v3, Lmx6;

    aget-object v4, p1, v2

    invoke-direct {v3, v4}, Lmx6;-><init>(Ljava/io/File;)V

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8
    :cond_1
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    const/4 v2, 0x0

    .line 9
    :goto_1
    array-length v3, p1

    if-ge v2, v3, :cond_5

    .line 10
    aget-object v3, v0, v2

    iget-object v3, v3, Lmx6;->f:Ljava/io/File;

    aput-object v3, p1, v2

    .line 11
    iget-object v3, p0, Lqp6$d;->b:Lqp6;

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    aget-object v3, p1, v2

    .line 12
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "mp3"

    .line 13
    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "m4a"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "jpg"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "jpeg"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "png"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "gif"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "mp4"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "m4v"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "wmv"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v3, 0x1

    :goto_3
    if-eqz v3, :cond_4

    .line 14
    iget-object v3, p0, Lqp6$d;->a:Ljava/util/List;

    new-instance v4, Lqp6$b;

    iget-object v5, p0, Lqp6$d;->b:Lqp6;

    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    aget-object v6, p1, v2

    invoke-direct {v4, v5, v6}, Lqp6$b;-><init>(Landroid/content/Context;Ljava/io/File;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 15
    :catch_0
    iget-object p1, p0, Lqp6$d;->b:Lqp6;

    iget-object p1, p1, Lqp6;->p:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    :cond_5
    :goto_4
    const/4 p1, 0x0

    return-object p1
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 5

    .line 1
    check-cast p1, Ljava/lang/Void;

    .line 2
    iget-object p1, p0, Lqp6$d;->b:Lqp6;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lqp6$d;->b:Lqp6;

    const/4 v0, 0x0

    iput-object v0, p1, Lqp6;->o:Lqp6$c;

    .line 4
    iget-object v0, p0, Lqp6$d;->a:Ljava/util/List;

    iput-object v0, p1, Lqp6;->p:Ljava/util/List;

    .line 5
    new-instance v0, Lqp6$c;

    iget-object v1, p0, Lqp6$d;->b:Lqp6;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f0c004e

    iget-object v4, p0, Lqp6$d;->b:Lqp6;

    iget-object v4, v4, Lqp6;->p:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3, v4}, Lqp6$c;-><init>(Lqp6;Landroid/content/Context;ILjava/util/List;)V

    iput-object v0, p1, Lqp6;->o:Lqp6$c;

    .line 6
    iget-object p1, p0, Lqp6$d;->b:Lqp6;

    iget-object v0, p1, Lqp6;->o:Lqp6$c;

    invoke-virtual {p1, v0}, Lpc;->h(Landroid/widget/ListAdapter;)V

    .line 7
    iget-object p1, p0, Lqp6$d;->b:Lqp6;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    const v0, 0x7f09018e

    .line 8
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0900fe

    .line 9
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 10
    :cond_1
    iget-object p1, p0, Lqp6$d;->b:Lqp6;

    iget-object p1, p1, Lqp6;->r:Landroid/app/ProgressDialog;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 11
    iget-object p1, p0, Lqp6$d;->b:Lqp6;

    iget-object p1, p1, Lqp6;->r:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onPreExecute()V
    .locals 5

    .line 1
    iget-object v0, p0, Lqp6$d;->b:Lqp6;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lqp6$d;->b:Lqp6;

    const v3, 0x7f1101c7

    invoke-virtual {v2, v3}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v1, v3, v2, v4, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, v0, Lqp6;->r:Landroid/app/ProgressDialog;

    .line 2
    iget-object v0, p0, Lqp6$d;->b:Lqp6;

    iget-object v0, v0, Lqp6;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method
