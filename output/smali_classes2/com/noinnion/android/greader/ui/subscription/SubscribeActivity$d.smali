.class public Lcom/noinnion/android/greader/ui/subscription/SubscribeActivity$d;
.super Lcc;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/noinnion/android/greader/ui/subscription/SubscribeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field public final synthetic f:Lcom/noinnion/android/greader/ui/subscription/SubscribeActivity;


# direct methods
.method public constructor <init>(Lcom/noinnion/android/greader/ui/subscription/SubscribeActivity;Lwb;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/noinnion/android/greader/ui/subscription/SubscribeActivity$d;->f:Lcom/noinnion/android/greader/ui/subscription/SubscribeActivity;

    .line 2
    invoke-direct {p0, p2}, Lcc;-><init>(Lwb;)V

    return-void
.end method


# virtual methods
.method public c()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/subscription/SubscribeActivity$d;->f:Lcom/noinnion/android/greader/ui/subscription/SubscribeActivity;

    iget-object v0, v0, Lcom/noinnion/android/greader/ui/subscription/SubscribeActivity;->B:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public d(I)Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/subscription/SubscribeActivity$d;->f:Lcom/noinnion/android/greader/ui/subscription/SubscribeActivity;

    iget-object v0, v0, Lcom/noinnion/android/greader/ui/subscription/SubscribeActivity;->B:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/noinnion/android/greader/ui/subscription/SubscribeActivity$c;

    iget-object p1, p1, Lcom/noinnion/android/greader/ui/subscription/SubscribeActivity$c;->b:Ljava/lang/String;

    return-object p1
.end method

.method public k(I)Landroidx/fragment/app/Fragment;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/subscription/SubscribeActivity$d;->f:Lcom/noinnion/android/greader/ui/subscription/SubscribeActivity;

    iget-object v0, v0, Lcom/noinnion/android/greader/ui/subscription/SubscribeActivity;->B:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/noinnion/android/greader/ui/subscription/SubscribeActivity$c;

    .line 2
    iget-object v0, p1, Lcom/noinnion/android/greader/ui/subscription/SubscribeActivity$c;->c:Ljava/lang/Class;

    .line 3
    iget-object p1, p1, Lcom/noinnion/android/greader/ui/subscription/SubscribeActivity$c;->d:Landroid/os/Bundle;

    .line 4
    iget-object v1, p0, Lcom/noinnion/android/greader/ui/subscription/SubscribeActivity$d;->f:Lcom/noinnion/android/greader/ui/subscription/SubscribeActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, p1}, Landroidx/fragment/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    return-object p1
.end method
