.class public final Lea1;
.super Lpa3;
.source "SourceFile"

# interfaces
.implements Ld91;


# instance fields
.field public m:I

.field public n:Ljava/util/Date;

.field public o:Ljava/util/Date;

.field public p:J

.field public q:J

.field public r:D

.field public s:F

.field public t:Lya3;

.field public u:J


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "mvhd"

    .line 1
    invoke-direct {p0, v0}, Lpa3;-><init>(Ljava/lang/String;)V

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 2
    iput-wide v0, p0, Lea1;->r:D

    const/high16 v0, 0x3f800000    # 1.0f

    .line 3
    iput v0, p0, Lea1;->s:F

    .line 4
    sget-object v0, Lya3;->j:Lya3;

    iput-object v0, p0, Lea1;->t:Lya3;

    return-void
.end method


# virtual methods
.method public final e(Ljava/nio/ByteBuffer;)V
    .locals 23

    move-object/from16 v0, p0

    .line 1
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    if-gez v1, :cond_0

    add-int/lit16 v1, v1, 0x100

    .line 2
    :cond_0
    iput v1, v0, Lea1;->m:I

    .line 3
    invoke-static/range {p1 .. p1}, Lc50;->a4(Ljava/nio/ByteBuffer;)I

    .line 4
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    .line 5
    iget-boolean v1, v0, Lpa3;->f:Z

    if-nez v1, :cond_1

    .line 6
    invoke-virtual/range {p0 .. p0}, Lpa3;->d()V

    .line 7
    :cond_1
    iget v1, v0, Lea1;->m:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 8
    invoke-static/range {p1 .. p1}, Lc50;->j4(Ljava/nio/ByteBuffer;)J

    move-result-wide v3

    invoke-static {v3, v4}, Lc50;->Z3(J)Ljava/util/Date;

    move-result-object v1

    iput-object v1, v0, Lea1;->n:Ljava/util/Date;

    .line 9
    invoke-static/range {p1 .. p1}, Lc50;->j4(Ljava/nio/ByteBuffer;)J

    move-result-wide v3

    invoke-static {v3, v4}, Lc50;->Z3(J)Ljava/util/Date;

    move-result-object v1

    iput-object v1, v0, Lea1;->o:Ljava/util/Date;

    .line 10
    invoke-static/range {p1 .. p1}, Lc50;->W3(Ljava/nio/ByteBuffer;)J

    move-result-wide v3

    iput-wide v3, v0, Lea1;->p:J

    .line 11
    invoke-static/range {p1 .. p1}, Lc50;->j4(Ljava/nio/ByteBuffer;)J

    move-result-wide v3

    iput-wide v3, v0, Lea1;->q:J

    goto :goto_0

    .line 12
    :cond_2
    invoke-static/range {p1 .. p1}, Lc50;->W3(Ljava/nio/ByteBuffer;)J

    move-result-wide v3

    invoke-static {v3, v4}, Lc50;->Z3(J)Ljava/util/Date;

    move-result-object v1

    iput-object v1, v0, Lea1;->n:Ljava/util/Date;

    .line 13
    invoke-static/range {p1 .. p1}, Lc50;->W3(Ljava/nio/ByteBuffer;)J

    move-result-wide v3

    invoke-static {v3, v4}, Lc50;->Z3(J)Ljava/util/Date;

    move-result-object v1

    iput-object v1, v0, Lea1;->o:Ljava/util/Date;

    .line 14
    invoke-static/range {p1 .. p1}, Lc50;->W3(Ljava/nio/ByteBuffer;)J

    move-result-wide v3

    iput-wide v3, v0, Lea1;->p:J

    .line 15
    invoke-static/range {p1 .. p1}, Lc50;->W3(Ljava/nio/ByteBuffer;)J

    move-result-wide v3

    iput-wide v3, v0, Lea1;->q:J

    .line 16
    :goto_0
    invoke-static/range {p1 .. p1}, Lc50;->o4(Ljava/nio/ByteBuffer;)D

    move-result-wide v3

    iput-wide v3, v0, Lea1;->r:D

    const/4 v1, 0x2

    new-array v1, v1, [B

    move-object/from16 v3, p1

    .line 17
    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    const/4 v4, 0x0

    .line 18
    aget-byte v5, v1, v4

    shl-int/lit8 v5, v5, 0x8

    const v6, 0xff00

    and-int/2addr v5, v6

    or-int/2addr v4, v5

    int-to-short v4, v4

    .line 19
    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v1, v4

    int-to-short v1, v1

    int-to-float v1, v1

    const/high16 v2, 0x43800000    # 256.0f

    div-float/2addr v1, v2

    .line 20
    iput v1, v0, Lea1;->s:F

    .line 21
    invoke-static/range {p1 .. p1}, Lc50;->a4(Ljava/nio/ByteBuffer;)I

    .line 22
    invoke-static/range {p1 .. p1}, Lc50;->W3(Ljava/nio/ByteBuffer;)J

    .line 23
    invoke-static/range {p1 .. p1}, Lc50;->W3(Ljava/nio/ByteBuffer;)J

    .line 24
    invoke-static/range {p1 .. p1}, Lc50;->o4(Ljava/nio/ByteBuffer;)D

    move-result-wide v5

    .line 25
    invoke-static/range {p1 .. p1}, Lc50;->o4(Ljava/nio/ByteBuffer;)D

    move-result-wide v7

    .line 26
    invoke-static/range {p1 .. p1}, Lc50;->u4(Ljava/nio/ByteBuffer;)D

    move-result-wide v13

    .line 27
    invoke-static/range {p1 .. p1}, Lc50;->o4(Ljava/nio/ByteBuffer;)D

    move-result-wide v9

    .line 28
    invoke-static/range {p1 .. p1}, Lc50;->o4(Ljava/nio/ByteBuffer;)D

    move-result-wide v11

    .line 29
    invoke-static/range {p1 .. p1}, Lc50;->u4(Ljava/nio/ByteBuffer;)D

    move-result-wide v15

    .line 30
    invoke-static/range {p1 .. p1}, Lc50;->o4(Ljava/nio/ByteBuffer;)D

    move-result-wide v19

    .line 31
    invoke-static/range {p1 .. p1}, Lc50;->o4(Ljava/nio/ByteBuffer;)D

    move-result-wide v21

    .line 32
    invoke-static/range {p1 .. p1}, Lc50;->u4(Ljava/nio/ByteBuffer;)D

    move-result-wide v17

    .line 33
    new-instance v1, Lya3;

    move-object v4, v1

    invoke-direct/range {v4 .. v22}, Lya3;-><init>(DDDDDDDDD)V

    .line 34
    iput-object v1, v0, Lea1;->t:Lya3;

    .line 35
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->getInt()I

    .line 36
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->getInt()I

    .line 37
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->getInt()I

    .line 38
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->getInt()I

    .line 39
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->getInt()I

    .line 40
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->getInt()I

    .line 41
    invoke-static/range {p1 .. p1}, Lc50;->W3(Ljava/nio/ByteBuffer;)J

    move-result-wide v1

    iput-wide v1, v0, Lea1;->u:J

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    const-string v0, "MovieHeaderBox["

    const-string v1, "creationTime="

    .line 1
    invoke-static {v0, v1}, Ljo;->B(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lea1;->n:Ljava/util/Date;

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ";"

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "modificationTime="

    .line 5
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    iget-object v2, p0, Lea1;->o:Ljava/util/Date;

    .line 7
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "timescale="

    .line 9
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    iget-wide v2, p0, Lea1;->p:J

    .line 11
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "duration="

    .line 13
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    iget-wide v2, p0, Lea1;->q:J

    .line 15
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "rate="

    .line 17
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    iget-wide v2, p0, Lea1;->r:D

    .line 19
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "volume="

    .line 21
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    iget v2, p0, Lea1;->s:F

    .line 23
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "matrix="

    .line 25
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lea1;->t:Lya3;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "nextTrackId="

    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    iget-wide v1, p0, Lea1;->u:J

    const-string v3, "]"

    .line 29
    invoke-static {v0, v1, v2, v3}, Ljo;->r(Ljava/lang/StringBuilder;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
