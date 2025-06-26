.class public final Ldl3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lxk3;


# instance fields
.field public a:Z

.field public b:J

.field public c:J

.field public d:Lpe3;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lpe3;->d:Lpe3;

    iput-object v0, p0, Ldl3;->d:Lpe3;

    return-void
.end method


# virtual methods
.method public final a()Lpe3;
    .locals 1

    .line 1
    iget-object v0, p0, Ldl3;->d:Lpe3;

    return-object v0
.end method

.method public final b(Lxk3;)V
    .locals 2

    .line 1
    invoke-interface {p1}, Lxk3;->c()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ldl3;->e(J)V

    .line 2
    invoke-interface {p1}, Lxk3;->a()Lpe3;

    move-result-object p1

    iput-object p1, p0, Ldl3;->d:Lpe3;

    return-void
.end method

.method public final c()J
    .locals 7

    .line 1
    iget-wide v0, p0, Ldl3;->b:J

    .line 2
    iget-boolean v2, p0, Ldl3;->a:Z

    if-eqz v2, :cond_1

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Ldl3;->c:J

    sub-long/2addr v2, v4

    .line 4
    iget-object v4, p0, Ldl3;->d:Lpe3;

    iget v5, v4, Lpe3;->a:F

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v5, v5, v6

    if-nez v5, :cond_0

    .line 5
    invoke-static {v2, v3}, Lzd3;->b(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    goto :goto_0

    .line 6
    :cond_0
    iget v4, v4, Lpe3;->c:I

    int-to-long v4, v4

    mul-long v2, v2, v4

    add-long/2addr v0, v2

    :cond_1
    :goto_0
    return-wide v0
.end method

.method public final d(Lpe3;)Lpe3;
    .locals 2

    .line 1
    iget-boolean v0, p0, Ldl3;->a:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Ldl3;->c()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ldl3;->e(J)V

    .line 3
    :cond_0
    iput-object p1, p0, Ldl3;->d:Lpe3;

    return-object p1
.end method

.method public final e(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Ldl3;->b:J

    .line 2
    iget-boolean p1, p0, Ldl3;->a:Z

    if-eqz p1, :cond_0

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Ldl3;->c:J

    :cond_0
    return-void
.end method
