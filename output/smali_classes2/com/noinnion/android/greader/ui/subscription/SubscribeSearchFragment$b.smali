.class public Lcom/noinnion/android/greader/ui/subscription/SubscribeSearchFragment$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbn6;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/noinnion/android/greader/ui/subscription/SubscribeSearchFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/noinnion/android/greader/ui/subscription/SubscribeSearchFragment;


# direct methods
.method public constructor <init>(Lcom/noinnion/android/greader/ui/subscription/SubscribeSearchFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/noinnion/android/greader/ui/subscription/SubscribeSearchFragment$b;->a:Lcom/noinnion/android/greader/ui/subscription/SubscribeSearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/noinnion/android/reader/common/subscription/Feed;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/noinnion/android/reader/common/subscription/Feed;

    .line 3
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/subscription/SubscribeSearchFragment$b;->a:Lcom/noinnion/android/greader/ui/subscription/SubscribeSearchFragment;

    invoke-static {v0, p1}, Lcom/noinnion/android/greader/ui/subscription/SubscribeSearchFragment;->d(Lcom/noinnion/android/greader/ui/subscription/SubscribeSearchFragment;Lcom/noinnion/android/reader/common/subscription/Feed;)V

    :cond_0
    return-void
.end method
