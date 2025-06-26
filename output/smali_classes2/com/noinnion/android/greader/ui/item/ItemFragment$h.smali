.class public final Lcom/noinnion/android/greader/ui/item/ItemFragment$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/noinnion/android/greader/ui/item/ItemFragment;->p()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lcom/noinnion/android/greader/ui/item/ItemFragment;


# direct methods
.method public constructor <init>(Lcom/noinnion/android/greader/ui/item/ItemFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment$h;->e:Lcom/noinnion/android/greader/ui/item/ItemFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment$h;->e:Lcom/noinnion/android/greader/ui/item/ItemFragment;

    .line 2
    iget-boolean v1, v0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->Q:Z

    if-eqz v1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, v0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->A:Landroid/view/View;

    const/16 v1, 0x8

    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 5
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment$h;->e:Lcom/noinnion/android/greader/ui/item/ItemFragment;

    .line 6
    iget-object v2, v0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->A:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 7
    iget-object v0, v0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->x:Landroid/view/animation/Animation;

    .line 8
    invoke-virtual {v2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment$h;->e:Lcom/noinnion/android/greader/ui/item/ItemFragment;

    .line 10
    iget-object v0, v0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->A:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 12
    :cond_2
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment$h;->e:Lcom/noinnion/android/greader/ui/item/ItemFragment;

    .line 13
    iget-object v0, v0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->z:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 14
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    .line 15
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment$h;->e:Lcom/noinnion/android/greader/ui/item/ItemFragment;

    .line 16
    iget-object v2, v0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->z:Landroid/view/View;

    if-eqz v2, :cond_3

    .line 17
    iget-object v0, v0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->x:Landroid/view/animation/Animation;

    .line 18
    invoke-virtual {v2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 19
    :cond_3
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment$h;->e:Lcom/noinnion/android/greader/ui/item/ItemFragment;

    .line 20
    iget-object v0, v0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->z:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 21
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 22
    :cond_4
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment$h;->e:Lcom/noinnion/android/greader/ui/item/ItemFragment;

    .line 23
    iget-object v0, v0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->B:Landroid/view/View;

    if-eqz v0, :cond_6

    if-eqz v0, :cond_6

    .line 24
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_6

    .line 25
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment$h;->e:Lcom/noinnion/android/greader/ui/item/ItemFragment;

    .line 26
    iget-object v2, v0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->B:Landroid/view/View;

    if-eqz v2, :cond_5

    .line 27
    iget-object v0, v0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->x:Landroid/view/animation/Animation;

    .line 28
    invoke-virtual {v2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 29
    :cond_5
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/item/ItemFragment$h;->e:Lcom/noinnion/android/greader/ui/item/ItemFragment;

    .line 30
    iget-object v0, v0, Lcom/noinnion/android/greader/ui/item/ItemFragment;->B:Landroid/view/View;

    if-eqz v0, :cond_6

    .line 31
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    return-void
.end method
