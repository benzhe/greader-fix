.class public final Lgo7$a;
.super Ljo7;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgo7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:J

.field public final b:Lgo7;


# direct methods
.method public constructor <init>(JLgo7;DLgm7;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljo7;-><init>()V

    iput-wide p1, p0, Lgo7$a;->a:J

    iput-object p3, p0, Lgo7$a;->b:Lgo7;

    return-void
.end method


# virtual methods
.method public a()D
    .locals 4

    .line 1
    iget-object v0, p0, Lgo7$a;->b:Lgo7;

    check-cast v0, Lio7;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 4
    iget-wide v2, p0, Lgo7$a;->a:J

    sub-long/2addr v0, v2

    iget-object v2, p0, Lgo7$a;->b:Lgo7;

    .line 5
    iget-object v2, v2, Lgo7;->a:Ljava/util/concurrent/TimeUnit;

    const-string v3, "unit"

    .line 6
    invoke-static {v2, v3}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    long-to-double v0, v0

    .line 7
    invoke-static {v2, v3}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 9
    invoke-static {v0, v1, v2, v3}, Ln56;->z(DLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/TimeUnit;)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    sub-double/2addr v0, v2

    return-wide v0
.end method
