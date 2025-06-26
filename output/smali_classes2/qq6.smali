.class public final Lqq6;
.super Ljm7;
.source "SourceFile"

# interfaces
.implements Lpl7;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljm7;",
        "Lpl7<",
        "Lcom/google/android/gms/ads/AdView;",
        "Lyj7;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/noinnion/android/greader/ui/item/ItemFragment;


# direct methods
.method public constructor <init>(Lcom/noinnion/android/greader/ui/item/ItemFragment;)V
    .locals 0

    iput-object p1, p0, Lqq6;->e:Lcom/noinnion/android/greader/ui/item/ItemFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ljm7;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Lcom/google/android/gms/ads/AdView;

    const-string v0, "adView"

    .line 2
    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lqq6;->e:Lcom/noinnion/android/greader/ui/item/ItemFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lqq6;->e:Lcom/noinnion/android/greader/ui/item/ItemFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_2

    .line 4
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdView;->destroy()V

    goto :goto_0

    .line 5
    :cond_2
    iget-object v0, p0, Lqq6;->e:Lcom/noinnion/android/greader/ui/item/ItemFragment;

    .line 6
    iget-object v0, v0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->G:Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    .line 7
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 8
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const/4 p1, 0x0

    .line 9
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 10
    :cond_3
    :goto_0
    sget-object p1, Lyj7;->a:Lyj7;

    return-object p1
.end method
