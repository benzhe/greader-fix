.class public Lnet/frakbot/glowpadbackport/GlowPadView$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/frakbot/glowpadbackport/GlowPadView;->startWaveAnimation()V
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
    iput-object p1, p0, Lnet/frakbot/glowpadbackport/GlowPadView$5;->this$0:Lnet/frakbot/glowpadbackport/GlowPadView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lnet/frakbot/glowpadbackport/GlowPadView$5;->this$0:Lnet/frakbot/glowpadbackport/GlowPadView;

    invoke-static {p1}, Lnet/frakbot/glowpadbackport/GlowPadView;->access$900(Lnet/frakbot/glowpadbackport/GlowPadView;)Lnet/frakbot/glowpadbackport/PointCloud;

    move-result-object p1

    iget-object p1, p1, Lnet/frakbot/glowpadbackport/PointCloud;->waveManager:Lnet/frakbot/glowpadbackport/PointCloud$WaveManager;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lnet/frakbot/glowpadbackport/PointCloud$WaveManager;->setRadius(F)V

    .line 2
    iget-object p1, p0, Lnet/frakbot/glowpadbackport/GlowPadView$5;->this$0:Lnet/frakbot/glowpadbackport/GlowPadView;

    invoke-static {p1}, Lnet/frakbot/glowpadbackport/GlowPadView;->access$900(Lnet/frakbot/glowpadbackport/GlowPadView;)Lnet/frakbot/glowpadbackport/PointCloud;

    move-result-object p1

    iget-object p1, p1, Lnet/frakbot/glowpadbackport/PointCloud;->waveManager:Lnet/frakbot/glowpadbackport/PointCloud$WaveManager;

    invoke-virtual {p1, v0}, Lnet/frakbot/glowpadbackport/PointCloud$WaveManager;->setAlpha(F)V

    return-void
.end method
