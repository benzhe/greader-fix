.class public Lnet/frakbot/glowpadbackport/GlowPadView$AnimationBundle;
.super Ljava/util/ArrayList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/frakbot/glowpadbackport/GlowPadView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AnimationBundle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Lnet/frakbot/glowpadbackport/Tweener;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x57b2878d90ed8b98L


# instance fields
.field private mSuspended:Z

.field public final synthetic this$0:Lnet/frakbot/glowpadbackport/GlowPadView;


# direct methods
.method private constructor <init>(Lnet/frakbot/glowpadbackport/GlowPadView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/frakbot/glowpadbackport/GlowPadView$AnimationBundle;->this$0:Lnet/frakbot/glowpadbackport/GlowPadView;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lnet/frakbot/glowpadbackport/GlowPadView;Lnet/frakbot/glowpadbackport/GlowPadView$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lnet/frakbot/glowpadbackport/GlowPadView$AnimationBundle;-><init>(Lnet/frakbot/glowpadbackport/GlowPadView;)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/frakbot/glowpadbackport/Tweener;

    .line 3
    iget-object v2, v2, Lnet/frakbot/glowpadbackport/Tweener;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->cancel()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public setSuspended(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lnet/frakbot/glowpadbackport/GlowPadView$AnimationBundle;->mSuspended:Z

    return-void
.end method

.method public start()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lnet/frakbot/glowpadbackport/GlowPadView$AnimationBundle;->mSuspended:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 3
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/frakbot/glowpadbackport/Tweener;

    .line 4
    iget-object v2, v2, Lnet/frakbot/glowpadbackport/Tweener;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public stop()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/frakbot/glowpadbackport/Tweener;

    .line 3
    iget-object v2, v2, Lnet/frakbot/glowpadbackport/Tweener;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->end()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method
