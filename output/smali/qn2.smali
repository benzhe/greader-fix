.class public final Lqn2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:J

.field public final b:Lpn2;

.field public c:J

.field public d:I

.field public e:I

.field public f:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lpn2;

    invoke-direct {v0}, Lpn2;-><init>()V

    iput-object v0, p0, Lqn2;->b:Lpn2;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lqn2;->d:I

    .line 4
    iput v0, p0, Lqn2;->e:I

    .line 5
    iput v0, p0, Lqn2;->f:I

    .line 6
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlc()Lb20;

    move-result-object v0

    invoke-interface {v0}, Lb20;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lqn2;->a:J

    .line 7
    iput-wide v0, p0, Lqn2;->c:J

    return-void
.end method
