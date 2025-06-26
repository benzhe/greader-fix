.class public final Luq6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic e:Lcom/noinnion/android/greader/ui/item/ItemFragment;


# direct methods
.method public constructor <init>(Lcom/noinnion/android/greader/ui/item/ItemFragment;)V
    .locals 0

    iput-object p1, p0, Luq6;->e:Lcom/noinnion/android/greader/ui/item/ItemFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 6

    .line 1
    iget-object p1, p0, Luq6;->e:Lcom/noinnion/android/greader/ui/item/ItemFragment;

    .line 2
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 3
    iget-object v1, p1, Lcom/noinnion/android/greader/ui/item/ItemFragment;->C:Lkw6;

    const-string v2, "mReadingOptions"

    const/4 v3, 0x0

    if-eqz v1, :cond_b

    invoke-virtual {v1, v0}, Lkw6;->b(Landroid/content/Context;)V

    .line 4
    iget-object v0, p1, Lcom/noinnion/android/greader/ui/item/ItemFragment;->z:Landroid/view/View;

    const/16 v1, 0x8

    const/4 v4, 0x0

    if-eqz v0, :cond_2

    iget-object v5, p1, Lcom/noinnion/android/greader/ui/item/ItemFragment;->C:Lkw6;

    if-eqz v5, :cond_1

    iget-boolean v5, v5, Lkw6;->t:Z

    if-eqz v5, :cond_0

    const/4 v5, 0x0

    goto :goto_0

    :cond_0
    const/16 v5, 0x8

    :goto_0
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_1
    invoke-static {v2}, Lim7;->k(Ljava/lang/String;)V

    throw v3

    .line 5
    :cond_2
    :goto_1
    iget-object v0, p1, Lcom/noinnion/android/greader/ui/item/ItemFragment;->A:Landroid/view/View;

    if-eqz v0, :cond_5

    iget-object v5, p1, Lcom/noinnion/android/greader/ui/item/ItemFragment;->C:Lkw6;

    if-eqz v5, :cond_4

    iget-boolean v5, v5, Lkw6;->u:Z

    if-eqz v5, :cond_3

    const/4 v5, 0x0

    goto :goto_2

    :cond_3
    const/16 v5, 0x8

    :goto_2
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :cond_4
    invoke-static {v2}, Lim7;->k(Ljava/lang/String;)V

    throw v3

    .line 6
    :cond_5
    :goto_3
    iget-object v0, p1, Lcom/noinnion/android/greader/ui/item/ItemFragment;->B:Landroid/view/View;

    if-eqz v0, :cond_8

    iget-object v5, p1, Lcom/noinnion/android/greader/ui/item/ItemFragment;->C:Lkw6;

    if-eqz v5, :cond_7

    iget-boolean v5, v5, Lkw6;->s:Z

    if-eqz v5, :cond_6

    const/4 v1, 0x0

    :cond_6
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    :cond_7
    invoke-static {v2}, Lim7;->k(Ljava/lang/String;)V

    throw v3

    .line 7
    :cond_8
    :goto_4
    iget-object v0, p1, Lcom/noinnion/android/greader/ui/item/ItemFragment;->f:Lcom/noinnion/android/reader/ui/view/WebViewPager;

    if-eqz v0, :cond_c

    iget-object p1, p1, Lcom/noinnion/android/greader/ui/item/ItemFragment;->C:Lkw6;

    if-eqz p1, :cond_a

    iget p1, p1, Lkw6;->p:I

    if-nez p1, :cond_9

    const/4 v4, 0x1

    :cond_9
    invoke-virtual {v0, v4}, Lcom/noinnion/android/reader/ui/view/WebViewPager;->setPagingDisabled(Z)V

    goto :goto_5

    :cond_a
    invoke-static {v2}, Lim7;->k(Ljava/lang/String;)V

    throw v3

    .line 8
    :cond_b
    invoke-static {v2}, Lim7;->k(Ljava/lang/String;)V

    throw v3

    :cond_c
    :goto_5
    return-void
.end method
