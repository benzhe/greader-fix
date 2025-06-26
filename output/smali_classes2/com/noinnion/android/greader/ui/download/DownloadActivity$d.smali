.class public Lcom/noinnion/android/greader/ui/download/DownloadActivity$d;
.super Lcc;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/noinnion/android/greader/ui/download/DownloadActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field public final synthetic f:Lcom/noinnion/android/greader/ui/download/DownloadActivity;


# direct methods
.method public constructor <init>(Lcom/noinnion/android/greader/ui/download/DownloadActivity;Lwb;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/noinnion/android/greader/ui/download/DownloadActivity$d;->f:Lcom/noinnion/android/greader/ui/download/DownloadActivity;

    .line 2
    invoke-direct {p0, p2}, Lcc;-><init>(Lwb;)V

    return-void
.end method


# virtual methods
.method public c()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/download/DownloadActivity$d;->f:Lcom/noinnion/android/greader/ui/download/DownloadActivity;

    iget-object v0, v0, Lcom/noinnion/android/greader/ui/download/DownloadActivity;->A:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public d(I)Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/download/DownloadActivity$d;->f:Lcom/noinnion/android/greader/ui/download/DownloadActivity;

    iget-object v0, v0, Lcom/noinnion/android/greader/ui/download/DownloadActivity;->A:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/noinnion/android/greader/ui/download/DownloadActivity$c;

    iget-object p1, p1, Lcom/noinnion/android/greader/ui/download/DownloadActivity$c;->b:Ljava/lang/String;

    return-object p1
.end method

.method public k(I)Landroidx/fragment/app/Fragment;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/download/DownloadActivity$d;->f:Lcom/noinnion/android/greader/ui/download/DownloadActivity;

    iget-object v0, v0, Lcom/noinnion/android/greader/ui/download/DownloadActivity;->A:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/noinnion/android/greader/ui/download/DownloadActivity$c;

    .line 2
    iget-object v0, p1, Lcom/noinnion/android/greader/ui/download/DownloadActivity$c;->c:Ljava/lang/Class;

    .line 3
    iget-object p1, p1, Lcom/noinnion/android/greader/ui/download/DownloadActivity$c;->d:Landroid/os/Bundle;

    .line 4
    iget-object v1, p0, Lcom/noinnion/android/greader/ui/download/DownloadActivity$d;->f:Lcom/noinnion/android/greader/ui/download/DownloadActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, p1}, Landroidx/fragment/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    return-object p1
.end method

.method public m(Ljava/lang/String;)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/download/DownloadActivity$d;->f:Lcom/noinnion/android/greader/ui/download/DownloadActivity;

    iget-object v0, v0, Lcom/noinnion/android/greader/ui/download/DownloadActivity;->A:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/noinnion/android/greader/ui/download/DownloadActivity$c;

    .line 2
    iget-object v2, v2, Lcom/noinnion/android/greader/ui/download/DownloadActivity$c;->a:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method
