.class public final Ls87;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls87$a;
    }
.end annotation


# static fields
.field public static final f:Ls87;


# instance fields
.field public final a:I

.field public final b:J

.field public final c:J

.field public final d:D

.field public final e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lx47$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    .line 1
    new-instance v9, Ls87;

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v8

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Ls87;-><init>(IJJDLjava/util/Set;)V

    sput-object v9, Ls87;->f:Ls87;

    return-void
.end method

.method public constructor <init>(IJJDLjava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJD",
            "Ljava/util/Set<",
            "Lx47$b;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Ls87;->a:I

    .line 3
    iput-wide p2, p0, Ls87;->b:J

    .line 4
    iput-wide p4, p0, Ls87;->c:J

    .line 5
    iput-wide p6, p0, Ls87;->d:D

    .line 6
    invoke-static {p8}, Lxd5;->s(Ljava/util/Collection;)Lxd5;

    move-result-object p1

    iput-object p1, p0, Ls87;->e:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .line 1
    instance-of v0, p1, Ls87;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    check-cast p1, Ls87;

    .line 3
    iget v0, p0, Ls87;->a:I

    iget v2, p1, Ls87;->a:I

    if-ne v0, v2, :cond_1

    iget-wide v2, p0, Ls87;->b:J

    iget-wide v4, p1, Ls87;->b:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    iget-wide v2, p0, Ls87;->c:J

    iget-wide v4, p1, Ls87;->c:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    iget-wide v2, p0, Ls87;->d:D

    iget-wide v4, p1, Ls87;->d:D

    .line 4
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Ls87;->e:Ljava/util/Set;

    iget-object p1, p1, Ls87;->e:Ljava/util/Set;

    .line 5
    invoke-static {v0, p1}, Lc50;->T(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget v1, p0, Ls87;->a:I

    .line 2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-wide v1, p0, Ls87;->b:J

    .line 3
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-wide v1, p0, Ls87;->c:J

    .line 4
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-wide v1, p0, Ls87;->d:D

    .line 5
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Ls87;->e:Ljava/util/Set;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 6
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-static {p0}, Lc50;->K0(Ljava/lang/Object;)Lnd5;

    move-result-object v0

    iget v1, p0, Ls87;->a:I

    const-string v2, "maxAttempts"

    .line 2
    invoke-virtual {v0, v2, v1}, Lnd5;->a(Ljava/lang/String;I)Lnd5;

    iget-wide v1, p0, Ls87;->b:J

    const-string v3, "initialBackoffNanos"

    .line 3
    invoke-virtual {v0, v3, v1, v2}, Lnd5;->b(Ljava/lang/String;J)Lnd5;

    iget-wide v1, p0, Ls87;->c:J

    const-string v3, "maxBackoffNanos"

    .line 4
    invoke-virtual {v0, v3, v1, v2}, Lnd5;->b(Ljava/lang/String;J)Lnd5;

    iget-wide v1, p0, Ls87;->d:D

    .line 5
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    const-string v2, "backoffMultiplier"

    invoke-virtual {v0, v2, v1}, Lnd5;->d(Ljava/lang/String;Ljava/lang/Object;)Lnd5;

    .line 6
    iget-object v1, p0, Ls87;->e:Ljava/util/Set;

    const-string v2, "retryableStatusCodes"

    .line 7
    invoke-virtual {v0, v2, v1}, Lnd5;->d(Ljava/lang/String;Ljava/lang/Object;)Lnd5;

    .line 8
    invoke-virtual {v0}, Lnd5;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
