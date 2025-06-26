.class public final Lfb1;
.super Lqa3;
.source "SourceFile"

# interfaces
.implements Ld91;


# instance fields
.field public l:Ljava/lang/String;

.field public m:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lqa3;-><init>()V

    const-string v0, "moov"

    .line 2
    iput-object v0, p0, Lfb1;->l:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Lov0;Ljava/nio/ByteBuffer;JLf41;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lov0;->a()J

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    .line 2
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p2

    const/16 v0, 0x10

    if-ne p2, v0, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-boolean p2, p0, Lfb1;->m:Z

    .line 3
    invoke-virtual {p0, p1, p3, p4, p5}, Lfb1;->e(Lov0;JLf41;)V

    return-void
.end method

.method public final c(Lc81;)V
    .locals 0

    return-void
.end method

.method public final e(Lov0;JLf41;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lqa3;->f:Lov0;

    .line 2
    invoke-virtual {p1}, Lov0;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lqa3;->h:J

    .line 3
    invoke-virtual {p1}, Lov0;->a()J

    move-result-wide v0

    add-long/2addr v0, p2

    invoke-virtual {p1, v0, v1}, Lov0;->b(J)V

    .line 4
    invoke-virtual {p1}, Lov0;->a()J

    move-result-wide p1

    iput-wide p1, p0, Lqa3;->i:J

    .line 5
    iput-object p4, p0, Lqa3;->e:Lf41;

    return-void
.end method

.method public final getType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lfb1;->l:Ljava/lang/String;

    return-object v0
.end method
