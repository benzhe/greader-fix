.class public Lnx6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public e:Z

.field public f:J

.field public g:J


# direct methods
.method public constructor <init>(JJZ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lnx6;->e:Z

    .line 3
    iput-wide p1, p0, Lnx6;->f:J

    .line 4
    iput-wide p3, p0, Lnx6;->g:J

    .line 5
    iput-boolean p5, p0, Lnx6;->e:Z

    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 9

    .line 1
    check-cast p1, Lnx6;

    iget-wide v0, p1, Lnx6;->f:J

    .line 2
    iget-wide v2, p1, Lnx6;->g:J

    .line 3
    iget-boolean p1, p0, Lnx6;->e:Z

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, -0x1

    if-eqz p1, :cond_3

    .line 4
    iget-wide v7, p0, Lnx6;->g:J

    cmp-long p1, v7, v2

    if-lez p1, :cond_0

    :goto_0
    const/4 v4, -0x1

    goto :goto_1

    :cond_0
    cmp-long p1, v7, v2

    if-nez p1, :cond_2

    iget-wide v2, p0, Lnx6;->f:J

    cmp-long p1, v2, v0

    if-gez p1, :cond_1

    goto :goto_0

    :cond_1
    cmp-long p1, v2, v0

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v4, 0x1

    :goto_1
    return v4

    .line 5
    :cond_3
    iget-wide v7, p0, Lnx6;->g:J

    cmp-long p1, v7, v2

    if-gez p1, :cond_4

    :goto_2
    const/4 v4, -0x1

    goto :goto_3

    :cond_4
    cmp-long p1, v7, v2

    if-nez p1, :cond_6

    iget-wide v2, p0, Lnx6;->f:J

    cmp-long p1, v2, v0

    if-lez p1, :cond_5

    goto :goto_2

    :cond_5
    cmp-long p1, v2, v0

    if-nez p1, :cond_6

    goto :goto_3

    :cond_6
    const/4 v4, 0x1

    :goto_3
    return v4
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    iget-wide v0, p0, Lnx6;->f:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
