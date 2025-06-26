.class public Lnet/frakbot/glowpadbackport/GlowPadView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


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
    iput-object p1, p0, Lnet/frakbot/glowpadbackport/GlowPadView$2;->this$0:Lnet/frakbot/glowpadbackport/GlowPadView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lnet/frakbot/glowpadbackport/GlowPadView$2;->this$0:Lnet/frakbot/glowpadbackport/GlowPadView;

    invoke-static {p1}, Lnet/frakbot/glowpadbackport/GlowPadView;->access$100(Lnet/frakbot/glowpadbackport/GlowPadView;)F

    move-result v0

    iget-object v1, p0, Lnet/frakbot/glowpadbackport/GlowPadView$2;->this$0:Lnet/frakbot/glowpadbackport/GlowPadView;

    invoke-static {v1}, Lnet/frakbot/glowpadbackport/GlowPadView;->access$200(Lnet/frakbot/glowpadbackport/GlowPadView;)F

    move-result v1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v1}, Lnet/frakbot/glowpadbackport/GlowPadView;->access$300(Lnet/frakbot/glowpadbackport/GlowPadView;IFF)V

    .line 2
    iget-object p1, p0, Lnet/frakbot/glowpadbackport/GlowPadView$2;->this$0:Lnet/frakbot/glowpadbackport/GlowPadView;

    invoke-static {p1}, Lnet/frakbot/glowpadbackport/GlowPadView;->access$400(Lnet/frakbot/glowpadbackport/GlowPadView;)V

    return-void
.end method
