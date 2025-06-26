.class public Lnet/frakbot/glowpadbackport/GlowPadView$4;
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
    iput-object p1, p0, Lnet/frakbot/glowpadbackport/GlowPadView$4;->this$0:Lnet/frakbot/glowpadbackport/GlowPadView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lnet/frakbot/glowpadbackport/GlowPadView$4;->this$0:Lnet/frakbot/glowpadbackport/GlowPadView;

    invoke-static {p1}, Lnet/frakbot/glowpadbackport/GlowPadView;->access$500(Lnet/frakbot/glowpadbackport/GlowPadView;)I

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lnet/frakbot/glowpadbackport/GlowPadView$4;->this$0:Lnet/frakbot/glowpadbackport/GlowPadView;

    invoke-static {p1}, Lnet/frakbot/glowpadbackport/GlowPadView;->access$500(Lnet/frakbot/glowpadbackport/GlowPadView;)I

    move-result v1

    invoke-static {p1, v1}, Lnet/frakbot/glowpadbackport/GlowPadView;->access$600(Lnet/frakbot/glowpadbackport/GlowPadView;I)V

    .line 3
    iget-object p1, p0, Lnet/frakbot/glowpadbackport/GlowPadView$4;->this$0:Lnet/frakbot/glowpadbackport/GlowPadView;

    invoke-static {p1, v0}, Lnet/frakbot/glowpadbackport/GlowPadView;->access$502(Lnet/frakbot/glowpadbackport/GlowPadView;I)I

    .line 4
    iget-object p1, p0, Lnet/frakbot/glowpadbackport/GlowPadView$4;->this$0:Lnet/frakbot/glowpadbackport/GlowPadView;

    invoke-static {p1, v0, v0}, Lnet/frakbot/glowpadbackport/GlowPadView;->access$700(Lnet/frakbot/glowpadbackport/GlowPadView;ZZ)V

    .line 5
    :cond_0
    iget-object p1, p0, Lnet/frakbot/glowpadbackport/GlowPadView$4;->this$0:Lnet/frakbot/glowpadbackport/GlowPadView;

    invoke-static {p1, v0}, Lnet/frakbot/glowpadbackport/GlowPadView;->access$802(Lnet/frakbot/glowpadbackport/GlowPadView;Z)Z

    return-void
.end method
