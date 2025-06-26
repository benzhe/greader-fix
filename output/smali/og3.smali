.class public final Log3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmg3;


# instance fields
.field public final a:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Log3;->a:J

    return-void
.end method


# virtual methods
.method public final b()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final d(J)J
    .locals 0

    const-wide/16 p1, 0x0

    return-wide p1
.end method

.method public final g()J
    .locals 2

    .line 1
    iget-wide v0, p0, Log3;->a:J

    return-wide v0
.end method
