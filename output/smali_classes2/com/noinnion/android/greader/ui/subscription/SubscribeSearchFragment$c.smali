.class public Lcom/noinnion/android/greader/ui/subscription/SubscribeSearchFragment$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbn6;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/noinnion/android/greader/ui/subscription/SubscribeSearchFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public final synthetic a:Lcom/noinnion/android/greader/ui/subscription/SubscribeSearchFragment;


# direct methods
.method public constructor <init>(Lcom/noinnion/android/greader/ui/subscription/SubscribeSearchFragment;Lcom/noinnion/android/greader/ui/subscription/SubscribeSearchFragment$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/noinnion/android/greader/ui/subscription/SubscribeSearchFragment$c;->a:Lcom/noinnion/android/greader/ui/subscription/SubscribeSearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    check-cast p1, Ljava/util/List;

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    :goto_0
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/subscription/SubscribeSearchFragment$c;->a:Lcom/noinnion/android/greader/ui/subscription/SubscribeSearchFragment;

    iget-object v0, v0, Lcom/noinnion/android/greader/ui/subscription/SubscribeSearchFragment;->f:Lbv6;

    invoke-virtual {v0, p1}, Lbv6;->c(Ljava/util/List;)V

    .line 4
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/subscription/SubscribeSearchFragment$c;->a:Lcom/noinnion/android/greader/ui/subscription/SubscribeSearchFragment;

    iget-object p1, p1, Lcom/noinnion/android/greader/ui/subscription/SubscribeSearchFragment;->e:Landroid/app/ProgressDialog;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/subscription/SubscribeSearchFragment$c;->a:Lcom/noinnion/android/greader/ui/subscription/SubscribeSearchFragment;

    iget-object p1, p1, Lcom/noinnion/android/greader/ui/subscription/SubscribeSearchFragment;->e:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_1
    return-void
.end method
