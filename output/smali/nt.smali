.class public abstract Lnt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnt$a;,
        Lnt$b;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()Ldv;
.end method

.method public b(Lwq;JI)J
    .locals 8

    .line 1
    invoke-virtual {p0}, Lnt;->a()Ldv;

    move-result-object v0

    invoke-interface {v0}, Ldv;->a()J

    move-result-wide v0

    sub-long/2addr p2, v0

    .line 2
    invoke-virtual {p0}, Lnt;->c()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnt$a;

    .line 3
    invoke-virtual {p1}, Lnt$a;->b()J

    move-result-wide v0

    add-int/lit8 p4, p4, -0x1

    const-wide/16 v2, 0x1

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    move-wide v2, v0

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x2

    :goto_0
    const-wide v4, 0x40c3880000000000L    # 10000.0

    .line 4
    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    int-to-long v6, p4

    mul-long v2, v2, v6

    long-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v4, v2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 5
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    int-to-double v6, p4

    .line 6
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    long-to-double v0, v0

    mul-double v4, v4, v0

    mul-double v4, v4, v2

    double-to-long v0, v4

    .line 7
    invoke-static {v0, v1, p2, p3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p2

    .line 8
    invoke-virtual {p1}, Lnt$a;->d()J

    move-result-wide v0

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public abstract c()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lwq;",
            "Lnt$a;",
            ">;"
        }
    .end annotation
.end method
