.class public Lnet/frakbot/glowpadbackport/GlowPadView$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/frakbot/glowpadbackport/GlowPadView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lnet/frakbot/glowpadbackport/GlowPadView;


# direct methods
.method public constructor <init>(Lnet/frakbot/glowpadbackport/GlowPadView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/frakbot/glowpadbackport/GlowPadView$3;->this$0:Lnet/frakbot/glowpadbackport/GlowPadView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lnet/frakbot/glowpadbackport/GlowPadView$3;->this$0:Lnet/frakbot/glowpadbackport/GlowPadView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method
