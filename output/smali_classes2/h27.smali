.class public final Lh27;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lh27$b;
    }
.end annotation


# static fields
.field public static final s:J


# instance fields
.field public a:I

.field public b:J

.field public final c:Landroid/net/Uri;

.field public final d:I

.field public final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ln27;",
            ">;"
        }
    .end annotation
.end field

.field public final f:I

.field public final g:I

.field public final h:Z

.field public final i:I

.field public final j:Z

.field public final k:Z

.field public final l:F

.field public final m:F

.field public final n:F

.field public final o:Z

.field public final p:Z

.field public final q:Landroid/graphics/Bitmap$Config;

.field public final r:Le27$e;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x5

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, Lh27;->s:J

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;ILjava/lang/String;Ljava/util/List;IIZZIZFFFZZLandroid/graphics/Bitmap$Config;Le27$e;Lh27$a;)V
    .locals 2

    move-object v0, p0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 2
    iput-object v1, v0, Lh27;->c:Landroid/net/Uri;

    move v1, p2

    .line 3
    iput v1, v0, Lh27;->d:I

    const/4 v1, 0x0

    .line 4
    iput-object v1, v0, Lh27;->e:Ljava/util/List;

    move v1, p5

    .line 5
    iput v1, v0, Lh27;->f:I

    move v1, p6

    .line 6
    iput v1, v0, Lh27;->g:I

    move v1, p7

    .line 7
    iput-boolean v1, v0, Lh27;->h:Z

    move v1, p8

    .line 8
    iput-boolean v1, v0, Lh27;->j:Z

    move v1, p9

    .line 9
    iput v1, v0, Lh27;->i:I

    move v1, p10

    .line 10
    iput-boolean v1, v0, Lh27;->k:Z

    move v1, p11

    .line 11
    iput v1, v0, Lh27;->l:F

    move v1, p12

    .line 12
    iput v1, v0, Lh27;->m:F

    move v1, p13

    .line 13
    iput v1, v0, Lh27;->n:F

    move/from16 v1, p14

    .line 14
    iput-boolean v1, v0, Lh27;->o:Z

    move/from16 v1, p15

    .line 15
    iput-boolean v1, v0, Lh27;->p:Z

    move-object/from16 v1, p16

    .line 16
    iput-object v1, v0, Lh27;->q:Landroid/graphics/Bitmap$Config;

    move-object/from16 v1, p17

    .line 17
    iput-object v1, v0, Lh27;->r:Le27$e;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    iget v0, p0, Lh27;->f:I

    if-nez v0, :cond_1

    iget v0, p0, Lh27;->g:I

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 6

    .line 1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-wide v2, p0, Lh27;->b:J

    sub-long/2addr v0, v2

    .line 2
    sget-wide v2, Lh27;->s:J

    const/16 v4, 0x2b

    cmp-long v5, v0, v2

    if-lez v5, :cond_0

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lh27;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v0, v1}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v0, 0x73

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lh27;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "ms"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lh27;->a()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lh27;->l:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 2

    const-string v0, "[R"

    .line 1
    invoke-static {v0}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lh27;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Request{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2
    iget v1, p0, Lh27;->d:I

    if-lez v1, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Lh27;->c:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 5
    :goto_0
    iget-object v1, p0, Lh27;->e:Ljava/util/List;

    const/16 v2, 0x20

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 6
    iget-object v1, p0, Lh27;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ln27;

    .line 7
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ln27;->key()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    const/16 v1, 0x29

    .line 8
    iget v3, p0, Lh27;->f:I

    const/16 v4, 0x2c

    if-lez v3, :cond_2

    const-string v3, " resize("

    .line 9
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lh27;->f:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v3, p0, Lh27;->g:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 10
    :cond_2
    iget-boolean v3, p0, Lh27;->h:Z

    if-eqz v3, :cond_3

    const-string v3, " centerCrop"

    .line 11
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    :cond_3
    iget-boolean v3, p0, Lh27;->j:Z

    if-eqz v3, :cond_4

    const-string v3, " centerInside"

    .line 13
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    :cond_4
    iget v3, p0, Lh27;->l:F

    const/4 v5, 0x0

    cmpl-float v3, v3, v5

    if-eqz v3, :cond_6

    const-string v3, " rotation("

    .line 15
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lh27;->l:F

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 16
    iget-boolean v3, p0, Lh27;->o:Z

    if-eqz v3, :cond_5

    const-string v3, " @ "

    .line 17
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lh27;->m:F

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v3, p0, Lh27;->n:F

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 18
    :cond_5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 19
    :cond_6
    iget-boolean v1, p0, Lh27;->p:Z

    if-eqz v1, :cond_7

    const-string v1, " purgeable"

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    :cond_7
    iget-object v1, p0, Lh27;->q:Landroid/graphics/Bitmap$Config;

    if-eqz v1, :cond_8

    .line 22
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lh27;->q:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_8
    const/16 v1, 0x7d

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
