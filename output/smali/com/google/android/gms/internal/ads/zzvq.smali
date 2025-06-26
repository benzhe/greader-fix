.class public final Lcom/google/android/gms/internal/ads/zzvq;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/ads/zzvq;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final A:I

.field public final e:I

.field public final f:J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final g:Landroid/os/Bundle;

.field public final h:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final j:Z

.field public final k:I

.field public final l:Z

.field public final m:Ljava/lang/String;

.field public final n:Lcom/google/android/gms/internal/ads/zzaav;

.field public final o:Landroid/location/Location;

.field public final p:Ljava/lang/String;

.field public final q:Landroid/os/Bundle;

.field public final r:Landroid/os/Bundle;

.field public final s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final t:Ljava/lang/String;

.field public final u:Ljava/lang/String;

.field public final v:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final w:Lcom/google/android/gms/internal/ads/zzvf;

.field public final x:I

.field public final y:Ljava/lang/String;

.field public final z:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lor3;

    invoke-direct {v0}, Lor3;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzvq;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IJLandroid/os/Bundle;ILjava/util/List;ZIZLjava/lang/String;Lcom/google/android/gms/internal/ads/zzaav;Landroid/location/Location;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/internal/ads/zzvf;ILjava/lang/String;Ljava/util/List;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Landroid/os/Bundle;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;ZIZ",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzaav;",
            "Landroid/location/Location;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Landroid/os/Bundle;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/google/android/gms/internal/ads/zzvf;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    move-object v0, p0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    move v1, p1

    .line 2
    iput v1, v0, Lcom/google/android/gms/internal/ads/zzvq;->e:I

    move-wide v1, p2

    .line 3
    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzvq;->f:J

    if-nez p4, :cond_0

    .line 4
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    goto :goto_0

    :cond_0
    move-object v1, p4

    :goto_0
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzvq;->g:Landroid/os/Bundle;

    move v1, p5

    .line 5
    iput v1, v0, Lcom/google/android/gms/internal/ads/zzvq;->h:I

    move-object v1, p6

    .line 6
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzvq;->i:Ljava/util/List;

    move v1, p7

    .line 7
    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzvq;->j:Z

    move v1, p8

    .line 8
    iput v1, v0, Lcom/google/android/gms/internal/ads/zzvq;->k:I

    move v1, p9

    .line 9
    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzvq;->l:Z

    move-object v1, p10

    .line 10
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzvq;->m:Ljava/lang/String;

    move-object v1, p11

    .line 11
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzvq;->n:Lcom/google/android/gms/internal/ads/zzaav;

    move-object v1, p12

    .line 12
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzvq;->o:Landroid/location/Location;

    move-object/from16 v1, p13

    .line 13
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzvq;->p:Ljava/lang/String;

    if-nez p14, :cond_1

    .line 14
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    goto :goto_1

    :cond_1
    move-object/from16 v1, p14

    :goto_1
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzvq;->q:Landroid/os/Bundle;

    move-object/from16 v1, p15

    .line 15
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzvq;->r:Landroid/os/Bundle;

    move-object/from16 v1, p16

    .line 16
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzvq;->s:Ljava/util/List;

    move-object/from16 v1, p17

    .line 17
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzvq;->t:Ljava/lang/String;

    move-object/from16 v1, p18

    .line 18
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzvq;->u:Ljava/lang/String;

    move/from16 v1, p19

    .line 19
    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzvq;->v:Z

    move-object/from16 v1, p20

    .line 20
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzvq;->w:Lcom/google/android/gms/internal/ads/zzvf;

    move/from16 v1, p21

    .line 21
    iput v1, v0, Lcom/google/android/gms/internal/ads/zzvq;->x:I

    move-object/from16 v1, p22

    .line 22
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzvq;->y:Ljava/lang/String;

    if-nez p23, :cond_2

    .line 23
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_2

    :cond_2
    move-object/from16 v1, p23

    :goto_2
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzvq;->z:Ljava/util/List;

    move/from16 v1, p24

    .line 24
    iput v1, v0, Lcom/google/android/gms/internal/ads/zzvq;->A:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzvq;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/ads/zzvq;

    .line 3
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzvq;->e:I

    iget v2, p1, Lcom/google/android/gms/internal/ads/zzvq;->e:I

    if-ne v0, v2, :cond_1

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzvq;->f:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/ads/zzvq;->f:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvq;->g:Landroid/os/Bundle;

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzvq;->g:Landroid/os/Bundle;

    .line 4
    invoke-static {v0, v2}, Lbi;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzvq;->h:I

    iget v2, p1, Lcom/google/android/gms/internal/ads/zzvq;->h:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvq;->i:Ljava/util/List;

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzvq;->i:Ljava/util/List;

    .line 5
    invoke-static {v0, v2}, Lbi;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzvq;->j:Z

    iget-boolean v2, p1, Lcom/google/android/gms/internal/ads/zzvq;->j:Z

    if-ne v0, v2, :cond_1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzvq;->k:I

    iget v2, p1, Lcom/google/android/gms/internal/ads/zzvq;->k:I

    if-ne v0, v2, :cond_1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzvq;->l:Z

    iget-boolean v2, p1, Lcom/google/android/gms/internal/ads/zzvq;->l:Z

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvq;->m:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzvq;->m:Ljava/lang/String;

    .line 6
    invoke-static {v0, v2}, Lbi;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvq;->n:Lcom/google/android/gms/internal/ads/zzaav;

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzvq;->n:Lcom/google/android/gms/internal/ads/zzaav;

    .line 7
    invoke-static {v0, v2}, Lbi;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvq;->o:Landroid/location/Location;

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzvq;->o:Landroid/location/Location;

    .line 8
    invoke-static {v0, v2}, Lbi;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvq;->p:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzvq;->p:Ljava/lang/String;

    .line 9
    invoke-static {v0, v2}, Lbi;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvq;->q:Landroid/os/Bundle;

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzvq;->q:Landroid/os/Bundle;

    .line 10
    invoke-static {v0, v2}, Lbi;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvq;->r:Landroid/os/Bundle;

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzvq;->r:Landroid/os/Bundle;

    .line 11
    invoke-static {v0, v2}, Lbi;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvq;->s:Ljava/util/List;

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzvq;->s:Ljava/util/List;

    .line 12
    invoke-static {v0, v2}, Lbi;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvq;->t:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzvq;->t:Ljava/lang/String;

    .line 13
    invoke-static {v0, v2}, Lbi;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvq;->u:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzvq;->u:Ljava/lang/String;

    .line 14
    invoke-static {v0, v2}, Lbi;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzvq;->v:Z

    iget-boolean v2, p1, Lcom/google/android/gms/internal/ads/zzvq;->v:Z

    if-ne v0, v2, :cond_1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzvq;->x:I

    iget v2, p1, Lcom/google/android/gms/internal/ads/zzvq;->x:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvq;->y:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzvq;->y:Ljava/lang/String;

    .line 15
    invoke-static {v0, v2}, Lbi;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvq;->z:Ljava/util/List;

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzvq;->z:Ljava/util/List;

    .line 16
    invoke-static {v0, v2}, Lbi;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzvq;->A:I

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzvq;->A:I

    if-ne v0, p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 3

    const/16 v0, 0x16

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzvq;->e:I

    .line 2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzvq;->f:J

    .line 3
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzvq;->g:Landroid/os/Bundle;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzvq;->h:I

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzvq;->i:Ljava/util/List;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzvq;->j:Z

    .line 5
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzvq;->k:I

    .line 6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzvq;->l:Z

    .line 7
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzvq;->m:Ljava/lang/String;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzvq;->n:Lcom/google/android/gms/internal/ads/zzaav;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzvq;->o:Landroid/location/Location;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzvq;->p:Ljava/lang/String;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzvq;->q:Landroid/os/Bundle;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzvq;->r:Landroid/os/Bundle;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzvq;->s:Ljava/util/List;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzvq;->t:Ljava/lang/String;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzvq;->u:Ljava/lang/String;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzvq;->v:Z

    .line 8
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0x11

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzvq;->x:I

    .line 9
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x12

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzvq;->y:Ljava/lang/String;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzvq;->z:Ljava/util/List;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzvq;->A:I

    .line 10
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x15

    aput-object v1, v0, v2

    .line 11
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 6

    const/16 v0, 0x4f45

    .line 1
    invoke-static {p1, v0}, Lbi;->m0(Landroid/os/Parcel;I)I

    move-result v0

    const/4 v1, 0x1

    .line 2
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzvq;->e:I

    const/4 v3, 0x4

    .line 3
    invoke-static {p1, v1, v3}, Lbi;->r0(Landroid/os/Parcel;II)V

    .line 4
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x2

    .line 5
    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzvq;->f:J

    const/16 v2, 0x8

    .line 6
    invoke-static {p1, v1, v2}, Lbi;->r0(Landroid/os/Parcel;II)V

    .line 7
    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    const/4 v1, 0x3

    .line 8
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzvq;->g:Landroid/os/Bundle;

    const/4 v5, 0x0

    invoke-static {p1, v1, v4, v5}, Lbi;->c0(Landroid/os/Parcel;ILandroid/os/Bundle;Z)V

    .line 9
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzvq;->h:I

    .line 10
    invoke-static {p1, v3, v3}, Lbi;->r0(Landroid/os/Parcel;II)V

    .line 11
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x5

    .line 12
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzvq;->i:Ljava/util/List;

    invoke-static {p1, v1, v4, v5}, Lbi;->k0(Landroid/os/Parcel;ILjava/util/List;Z)V

    const/4 v1, 0x6

    .line 13
    iget-boolean v4, p0, Lcom/google/android/gms/internal/ads/zzvq;->j:Z

    .line 14
    invoke-static {p1, v1, v3}, Lbi;->r0(Landroid/os/Parcel;II)V

    .line 15
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x7

    .line 16
    iget v4, p0, Lcom/google/android/gms/internal/ads/zzvq;->k:I

    .line 17
    invoke-static {p1, v1, v3}, Lbi;->r0(Landroid/os/Parcel;II)V

    .line 18
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 19
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzvq;->l:Z

    .line 20
    invoke-static {p1, v2, v3}, Lbi;->r0(Landroid/os/Parcel;II)V

    .line 21
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v1, 0x9

    .line 22
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzvq;->m:Ljava/lang/String;

    invoke-static {p1, v1, v2, v5}, Lbi;->i0(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 v1, 0xa

    .line 23
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzvq;->n:Lcom/google/android/gms/internal/ads/zzaav;

    invoke-static {p1, v1, v2, p2, v5}, Lbi;->h0(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/16 v1, 0xb

    .line 24
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzvq;->o:Landroid/location/Location;

    invoke-static {p1, v1, v2, p2, v5}, Lbi;->h0(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/16 v1, 0xc

    .line 25
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzvq;->p:Ljava/lang/String;

    invoke-static {p1, v1, v2, v5}, Lbi;->i0(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 v1, 0xd

    .line 26
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzvq;->q:Landroid/os/Bundle;

    invoke-static {p1, v1, v2, v5}, Lbi;->c0(Landroid/os/Parcel;ILandroid/os/Bundle;Z)V

    const/16 v1, 0xe

    .line 27
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzvq;->r:Landroid/os/Bundle;

    invoke-static {p1, v1, v2, v5}, Lbi;->c0(Landroid/os/Parcel;ILandroid/os/Bundle;Z)V

    const/16 v1, 0xf

    .line 28
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzvq;->s:Ljava/util/List;

    invoke-static {p1, v1, v2, v5}, Lbi;->k0(Landroid/os/Parcel;ILjava/util/List;Z)V

    const/16 v1, 0x10

    .line 29
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzvq;->t:Ljava/lang/String;

    invoke-static {p1, v1, v2, v5}, Lbi;->i0(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 v1, 0x11

    .line 30
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzvq;->u:Ljava/lang/String;

    invoke-static {p1, v1, v2, v5}, Lbi;->i0(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 v1, 0x12

    .line 31
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzvq;->v:Z

    .line 32
    invoke-static {p1, v1, v3}, Lbi;->r0(Landroid/os/Parcel;II)V

    .line 33
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v1, 0x13

    .line 34
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzvq;->w:Lcom/google/android/gms/internal/ads/zzvf;

    invoke-static {p1, v1, v2, p2, v5}, Lbi;->h0(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/16 p2, 0x14

    .line 35
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzvq;->x:I

    .line 36
    invoke-static {p1, p2, v3}, Lbi;->r0(Landroid/os/Parcel;II)V

    .line 37
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 p2, 0x15

    .line 38
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzvq;->y:Ljava/lang/String;

    invoke-static {p1, p2, v1, v5}, Lbi;->i0(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 p2, 0x16

    .line 39
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzvq;->z:Ljava/util/List;

    invoke-static {p1, p2, v1, v5}, Lbi;->k0(Landroid/os/Parcel;ILjava/util/List;Z)V

    const/16 p2, 0x17

    .line 40
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzvq;->A:I

    .line 41
    invoke-static {p1, p2, v3}, Lbi;->r0(Landroid/os/Parcel;II)V

    .line 42
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 43
    invoke-static {p1, v0}, Lbi;->t0(Landroid/os/Parcel;I)V

    return-void
.end method
