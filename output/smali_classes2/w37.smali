.class public final Lw37;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lw37$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lw37$a;

.field public final c:J

.field public final d:Lx37;

.field public final e:Lx37;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lw37$a;JLx37;Lx37;Lv37$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lw37;->a:Ljava/lang/String;

    const-string p1, "severity"

    .line 3
    invoke-static {p2, p1}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Lw37;->b:Lw37$a;

    .line 4
    iput-wide p3, p0, Lw37;->c:J

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lw37;->d:Lx37;

    .line 6
    iput-object p6, p0, Lw37;->e:Lx37;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .line 1
    instance-of v0, p1, Lw37;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lw37;

    .line 3
    iget-object v0, p0, Lw37;->a:Ljava/lang/String;

    iget-object v2, p1, Lw37;->a:Ljava/lang/String;

    invoke-static {v0, v2}, Lc50;->T(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lw37;->b:Lw37$a;

    iget-object v2, p1, Lw37;->b:Lw37$a;

    .line 4
    invoke-static {v0, v2}, Lc50;->T(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v2, p0, Lw37;->c:J

    iget-wide v4, p1, Lw37;->c:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    iget-object v0, p0, Lw37;->d:Lx37;

    iget-object v2, p1, Lw37;->d:Lx37;

    .line 5
    invoke-static {v0, v2}, Lc50;->T(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lw37;->e:Lx37;

    iget-object p1, p1, Lw37;->e:Lx37;

    .line 6
    invoke-static {v0, p1}, Lc50;->T(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-object v1, p0, Lw37;->a:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lw37;->b:Lw37$a;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-wide v1, p0, Lw37;->c:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lw37;->d:Lx37;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lw37;->e:Lx37;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 2
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-static {p0}, Lc50;->K0(Ljava/lang/Object;)Lnd5;

    move-result-object v0

    iget-object v1, p0, Lw37;->a:Ljava/lang/String;

    const-string v2, "description"

    .line 2
    invoke-virtual {v0, v2, v1}, Lnd5;->d(Ljava/lang/String;Ljava/lang/Object;)Lnd5;

    .line 3
    iget-object v1, p0, Lw37;->b:Lw37$a;

    const-string v2, "severity"

    .line 4
    invoke-virtual {v0, v2, v1}, Lnd5;->d(Ljava/lang/String;Ljava/lang/Object;)Lnd5;

    .line 5
    iget-wide v1, p0, Lw37;->c:J

    const-string v3, "timestampNanos"

    .line 6
    invoke-virtual {v0, v3, v1, v2}, Lnd5;->b(Ljava/lang/String;J)Lnd5;

    iget-object v1, p0, Lw37;->d:Lx37;

    const-string v2, "channelRef"

    .line 7
    invoke-virtual {v0, v2, v1}, Lnd5;->d(Ljava/lang/String;Ljava/lang/Object;)Lnd5;

    .line 8
    iget-object v1, p0, Lw37;->e:Lx37;

    const-string v2, "subchannelRef"

    .line 9
    invoke-virtual {v0, v2, v1}, Lnd5;->d(Ljava/lang/String;Ljava/lang/Object;)Lnd5;

    .line 10
    invoke-virtual {v0}, Lnd5;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
