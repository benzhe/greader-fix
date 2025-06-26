.class public final synthetic Lfv3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final e:Lgv3;

.field public final f:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lgv3;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfv3;->e:Lgv3;

    iput-object p2, p0, Lfv3;->f:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lfv3;->e:Lgv3;

    iget-object v1, p0, Lfv3;->f:Landroid/content/Context;

    .line 2
    invoke-virtual {v0, v1}, Lgv3;->b(Landroid/content/Context;)Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    return-void
.end method
